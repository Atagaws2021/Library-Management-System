<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Library Management</title>
<style>
*{
padding:0px;
margin:0px;
box-sizing:border-box;
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

.header a i.fa-solid.fa-right-from-bracket{
	font-size:22px;
	color:brown;
}
.details{
    width: 55%;
    padding: 20px;
    background-color: white;
    margin: 20px auto;
    
}

.details table{
    width: 100%;
    height: 100%;
    
}

.details table thead{
    background-color: brown;
    color: white;
    font-size: 15px;
    
}
.details table tbody{
    background: lightyellow;
}
.details table tr,
.details table td,
.details table th{
    padding: 8px;
}

.details table tr{
    border: 2px solid yellow;
}

.details table tr a i.fa-solid.fa-pen-to-square{
	color:brown;
	
}
.details table tr a i.fa-solid.fa-trash{
	color:brown;
}

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<%@ page import="java.sql.*"%>
<div class="header">
	<h1>Library Management Database</h1>
	<a href="teacherLogout.jsp"><i class="fa-solid fa-right-from-bracket"></i></a>
</div>
<div class="details">
        <table>
            <thead>
                <tr>
                    <th>  Full Name  </th>
                    <th>  Password  </th>
                    <th>  Registration No  </th>
                    <th>  Department  </th>
                    <th>  Total Books  </th>
                    <th>  EmailId  </th>
                    <th>  Fine  </th>
                    <th>  ReIssue Date  </th>
                    
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            	<%
            	Class.forName("com.mysql.jdbc.Driver");
            	Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/projectdb","root","password123");
            	PreparedStatement ps=cn.prepareStatement("SELECT * FROM library");
            	ResultSet rs=ps.executeQuery();
            	int regno=0,tbook=0,fine=0;
            	String fullname="",pwd="",dept="",email="",date="";
            	while(rs.next()){
            		fullname=rs.getString(1);
            		pwd=rs.getString(2);
            		regno=rs.getInt(3);
            		dept=rs.getString(4);
            		tbook=rs.getInt(5);
            		email=rs.getString(6);
            		fine=rs.getInt(7);
            		date=rs.getString(8);
            		%>
            		<tr>
                    <td><%=fullname %></td>
                    <td><%=pwd %></td>
                    <td><%=regno %></td>
                    <td><%=dept %></td>
                    <td><%=tbook %></td>
                    <td><%=email %></td>
                    <td><%=fine %></td>
                    <td><%=date %></td>
                   <td id="edit">
                    <a href="edit.jsp?regno=<%=regno %>"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="delete.jsp?fullname=<%=fullname %>"><i class="fa-solid fa-trash"></i></a>
                    </td>
                    
                    
                </tr>
               <%
            	}               
               %>
            </tbody>
        </table>
    </div>
</body>
</html>