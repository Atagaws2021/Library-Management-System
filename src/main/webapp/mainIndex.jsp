<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<style>
@import url(https://fonts:googleapis.com/css?family=Poppins);
@import url(https://fonts:googleapis.com/css?family=Lemon);
*{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: Poppins;
}
 body{
    width: 100%;
    height: 100vh;
    background: url('https://e0.pxfuel.com/wallpapers/188/147/desktop-wallpaper-yellow-s-in-2021-iphone-yellow-yellow-aesthetic-pastel-yellow-sun-yellow.jpg');
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
    display: flex;
    align-items: center;
    justify-content: center;
}
.header{
    width: 500px;
    height: 300px;
    background: rgba(165, 42, 42, 0.857);
    border-radius: 10px;
    box-shadow: 0 0 5px white, inset 0 0 5px white;
}
.header h1{
    text-align: center;
    color: rgba(255, 255, 0, 0.76);
    padding-top: 15px;
}
.login_page{
    display: flex;
    align-items: center;
    justify-content: center;
    gap:70px;
}
.login_page .box img{
    width: 200px;
    height: 200px;
    padding-top: 30px;
    padding-left: 15px;
}
.login_page .box a{
    color:rgba(255, 255, 0, 0.76);
    font-size: 18px;
    padding-top: 35px;
    padding-left: 55px;   
}
</style>
</head>
<body>
	<div class="header">
        <h1>Library Management</h1>
        <div class="login_page">
            <div class="box">
                <img src="https://cdn-icons-png.freepik.com/128/206/206897.png?ga=GA1.1.689459249.1705588728&semt=ais">
                <a href="teacherLogin.jsp">Teacher Login</a>
            </div>
            <div class="box">
                <img src="https://cdn-icons-png.freepik.com/128/706/706819.png?ga=GA1.1.689459249.1705588728&semt=ais">
                <a href="index.jsp">Student Login</a>
            </div>
        </div>
    </div>
	
</body>
</html>