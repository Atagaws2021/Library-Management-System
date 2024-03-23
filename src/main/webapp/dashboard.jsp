<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<%@ page import="java.sql.*"%>
<%
HttpSession ss=request.getSession();
Object user=ss.getAttribute("user");
String username="";
if(user!=null){
	username=user.toString();
	
}
else{
	response.sendRedirect("index.jsp");
}


Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");
PreparedStatement ps=cn.prepareStatement("SELECT * FROM library WHERE Name ='"+session.getAttribute("user")+"';");


ResultSet rs=ps.executeQuery();

int regno=0,tbook=0,tf=0;
String fname="",dept="",rd="";
if(rs.next()){
	fname=rs.getString(1);
	regno=rs.getInt(3);
	
	dept=rs.getString(4);
	tbook=rs.getInt(5);
	tf=rs.getInt(7);
	rd=rs.getString(8);
}
ps.close();
cn.close();

%>
	
<div class="header">
<h2>Welcome, <span><%=username %></span></h2>
<a href="logout.jsp">Logout</a>
</div>
<div class="alldata">
	<h2>Student Details</h2>
	
	<div class="subdata">
		<div class="lef_desc">Name : </div>
		<div class="right_desc"><%=fname %></div>
	</div>
	<div class="subdata">
		<div class="lef_desc">Registration No : </div>
		<div class="right_desc"><%=regno %></div>
	</div>
	<div class="subdata">
		<div class="lef_desc">Department : </div>
		<div class="right_desc"><%=dept %></div>
	</div>
	<div class="subdata">
		<div class="lef_desc">Total Books : </div>
		<div class="right_desc"><%=tbook %></div>
	</div>
	<div class="subdata">
		<div class="lef_desc">Total Fine : </div>
		<div class="right_desc"><%=tf %></div>
	</div>
	<div class="subdata">
		<div class="lef_desc">Reissue Date : </div>
		<div class="right_desc"><%=rd %></div>
	</div>
	
</div>
</body>
</html>