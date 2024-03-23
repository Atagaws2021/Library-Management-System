<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%

int tbook,fine,regno;
String fullname,pwd,dept,email,date;

fullname=request.getParameter("fullname");
pwd=request.getParameter("pwd");
regno=Integer.parseInt(request.getParameter("regno"));
dept=request.getParameter("dept");
tbook=Integer.parseInt(request.getParameter("tbook"));
email=request.getParameter("email");
fine=Integer.parseInt(request.getParameter("fine"));
date=request.getParameter("date");
System.out.println(fullname);

Class.forName("com.mysql.jdbc.Driver");

Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");

String sqlQuery="UPDATE library SET Password=?,Name=?, Department=?,TotalBooks=?,EmailAdd=?,TotalFine=?,ReissueDate=? WHERE RegNo=?;";

PreparedStatement stmt=cn.prepareStatement(sqlQuery);

stmt.setInt(8,regno);
stmt.setString(1,pwd);
stmt.setString(2,fullname);
stmt.setString(3,dept);
stmt.setInt(4,tbook);
stmt.setString(5,email);
stmt.setInt(6,fine);
stmt.setString(7,date);

stmt.executeUpdate();
stmt.close();
cn.close();

%>

<script>
	alert("Student Registered Successfully");
</script>

<%
response.sendRedirect("teacherDashboard.jsp");
%>
