<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<%
String username="",pwd="";
HttpSession ss=request.getSession();
Object user=ss.getAttribute("user");
if(user!=null){
	response.sendRedirect("dashboard.jsp");
}

%>
<div class="header">
	<h1>Be a Part Of Library</h1>
	<a href="mainIndex.jsp"><i class="fa-solid fa-house"></i></a>
</div>
 <div class="login">
     <form method="post" action="login.jsp">
         <h2>Login</h2>
         <input type="text" name="user" value="<%=username %>" placeholder="Name" required>
         <input type="password" name="pwd" value="<%=pwd %>" placeholder="password" required>
         <input type="submit" value="LOGIN">

     </form>
     <div class="foot">
     <p>don't have an account?</p>
     <a href="signup.jsp">SignUp</a>
     </div>
 </div>
</body>
</html>