<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%

String fullname;

fullname=request.getParameter("fullname");


Class.forName("com.mysql.jdbc.Driver");

Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");

String sqlQuery="DELETE FROM library WHERE Name=?;";

PreparedStatement stmt=cn.prepareStatement(sqlQuery);
stmt.setString(1,fullname);


stmt.executeUpdate();
stmt.close();
cn.close();

%>
<%
response.sendRedirect("teacherDashboard.jsp");
%>