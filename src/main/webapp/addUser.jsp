<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<% 


String fname,us,pwd,dept;
int regno;


fname=request.getParameter("fname");
pwd=request.getParameter("pwd");
regno=Integer.parseInt(request.getParameter("regno"));
dept=request.getParameter("dept");
us=request.getParameter("us");

Class.forName("com.mysql.jdbc.Driver");

Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");

String sql="INSERT INTO library (Name,Password,RegNo,Department,EmailAdd)VALUES(?,?,?,?,?);";

PreparedStatement stmt=cn.prepareStatement(sql);
stmt.setString(1,fname);
stmt.setString(2,pwd);
stmt.setInt(3,regno);
stmt.setString(4,dept);
stmt.setString(5,us);


stmt.executeUpdate();
stmt.close();
cn.close();

response.sendRedirect("index.jsp");

%>