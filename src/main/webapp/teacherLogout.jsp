<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% 
HttpSession ss=request.getSession();
ss.invalidate();
response.sendRedirect("teacherLogin.jsp");
%>