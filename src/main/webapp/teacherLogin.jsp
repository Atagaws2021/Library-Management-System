<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<style>
*{
padding:0;
margin:0;
box-sizing: border-box;
}
.header{
	width:100%;
	height:80px;
	box-shadow:0px 0px 10px yellow;
	padding: 15px;
	color: brown;
	background: lightyellow;
	display:flex;
	align-items:center;
	justify-content:space-between;
	
}
.header h1{
	padding-left:10px;
}

.header a{
	padding-right:10px;
	
}

.header a i.fa-solid.fa-house{

	color:brown;
	font-size:22px;
}

.login{
	width:350px;
	height:350px;
	background-color:brown;
	margin:100px auto;
	border-radius:10px;
	box-shadow:0px 0px 10px #f5ec3e;
	
}

.login form{

	width:100%;
	display:flex;
	align-items:center;
	justify-content:center;
	flex-direction:column;
	gap:15px;

}
.login form h2{
	margin-top:25px;
	color:white;
	
}

.login form input{
	width:90%;
	padding:15px;
	margin-top:15px;
	border-radius:10px;
	outline:none;
	border:none;
		
}

.login form input:focus{
	background:lightyellow;
	outline:none;
	border:none;
}
.login form input[type="submit"]{
	background:lightyellow;
	outline:none;
	border:none;
	transition:all ease 0.3s;
}
.login form input[type="submit"]:hover{
	transform:scale(1.02);
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" /> 
</head>
<body>
<%@ page import="java.sql.*" %>
<%
	String username="",pwd="";
	HttpSession ss=request.getSession();
	Object user=ss.getAttribute("user");
	if(user!=null){
		response.sendRedirect("teacherDashboard.jsp");
	}
%>
<div class="header">
	<h1>Teacher Authentication</h1>
	<a href="mainIndex.jsp"><i class="fa-solid fa-house"></i></a>
</div>
<div class="login">
<form method="post" action="teacherLoginBack.jsp">
	<h2>Teacher Login</h2>
	<input type="text" name="username" value="<%=username %>" placeholder="Username">
	<input type="password" name="pwd" value="<%=pwd %>" placeholder="Password">
	<input type="submit" value="LOGIN">
	
</form>
</div>
</body>
</html>