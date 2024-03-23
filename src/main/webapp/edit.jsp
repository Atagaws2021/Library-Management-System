<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<link rel="stylesheet" href="style2.css">
</head>
<body>
<%@ page import="java.sql.*"%>
<%



Class.forName("com.mysql.jdbc.Driver");

Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");

String sqlQuery="SELECT * FROM library WHERE RegNo=?;";

PreparedStatement ps=cn.prepareStatement(sqlQuery);
int regno;
regno=Integer.parseInt(request.getParameter("regno"));
ps.setInt(1, regno);

ResultSet rs=ps.executeQuery();

String pwd="",email="",dept="",date="", fullname="";
int tbook=0,fine=0;
if(rs.next()){
	fullname=rs.getString(1);
	pwd=rs.getString(2);
	regno=rs.getInt(3);
	dept=rs.getString(4);
	tbook=rs.getInt(5);
	email=rs.getString(6);
	fine=rs.getInt(7);
	date=rs.getString(8);
	
}


ps.close();
cn.close();

%>

	<div class="header">
        <h1>Library <span>Management</span></h1>
        
    </div>
    
   

    <div class="popup" id="popup">
        <div class="title">
            <h2>Edit</h2>
        </div>
        <form method="post" action="lupdate.jsp">
        	<div class="field">
                <label>Name</label>
                <input type="text" value=<%=fullname %> name="fullname" required>
            </div>
            <div class="field">
                <label>Password</label>
                <input type="number" value=<%=pwd %> name="pwd" required>
            </div>
            <div class="field">
                <label>Registration No</label>
                <input type="number" value=<%=regno %> name="regno" required >
            </div>
            <div class="field">
                <label>Department</label>
                <input type="text" value=<%=dept %> name="dept" required >
            </div>
            <div class="field">
                <label>Total Book</label>
                <input type="text" value=<%=tbook %> name="tbook" required>
            </div>
            <div class="field">
                <label>EmailAdd</label>
                <input type="text" value=<%=email %> name="email" required >
            </div>
            <div class="field">
                <label>Total Fine</label>
                <input type="text" value=<%=fine %> name="fine" required>
            </div>
            <div class="field">
                <label>Date</label>
                <input type="date" value=<%=date %> name="date" required>
            </div>
           
            <div class="action-field">
                <input type="submit" value="Edit Info">
            </div>
        </form>
    </div>
</body>
</html>