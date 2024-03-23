<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<link rel="stylesheet" href="style.css">
<style>
.login{
    
    width: 450px;
    height: 650px;
    background: rgba(255, 255, 255, 0.518);
    border-radius: 5px;
    box-shadow: 0px 0px 5px whitesmoke;
    padding: 20px;
    
    
}
.login form{
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    gap: 20px;
    padding-top:10px;
}
</style>
</head>
<body>
	 <div class="login">
     <form method="post" action="addUser.jsp">
         <h2>SignUp</h2>
         <input type="text" name="fname" placeholder="Name" required>
         <input type="password" name="pwd" placeholder="Password" required>
         <input type="number" name="regno" placeholder="Registration No" required>
         <input type="text" name="dept" placeholder="Department" required>
         <input type="email" name="us" placeholder="Username/Email" required>
         <input type="submit" value="SignUp">

     </form>
     <div class="foot">
     <p>already have an account?</p>
     <a href="login.jsp">Login</a>
     </div>
 </div>
</body>
</html>