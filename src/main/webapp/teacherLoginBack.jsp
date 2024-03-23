<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String user,pwd;

user=request.getParameter("username");
pwd=request.getParameter("pwd");

Class.forName("com.mysql.jdbc.Driver");

Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");

String sqlQuery="SELECT * FROM teacher WHERE Name=? and Password=?;";

PreparedStatement stmt=cn.prepareStatement(sqlQuery);

stmt.setString(1,user);
stmt.setString(2,pwd);


ResultSet rs=stmt.executeQuery();
if(rs.next()){
	HttpSession ss=request.getSession();
	ss.setAttribute("user",user);
	
	
	response.sendRedirect("teacherDashboard.jsp");
}
else{

%>
	
 
<script>
alert("Failed");
window.location.href='http://localhost:8080/project_4/teacherLogin.jsp';

</script>
<%

}

stmt.close();
cn.close();

%>