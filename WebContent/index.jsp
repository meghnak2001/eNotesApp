<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.Db.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
background: url("img/bg-im.jpg");
width: 100%;
height:85vh;
background-repeat: no-repeat;
background-size: cover;
}
a1:hover:{
color:red;
}
</style>
<meta charset="ISO-8859-1">
</head>
<title>Home Page</title>
<%@include file="all_component/AllCSS.jsp" %>
<body>

<%@include file="all_component/navbar.jsp" %>
<%
Connection conn=DBConnection.getConn();
System.out.print(conn);
%>

	<div class="container-fluid back-img">
	<div class="text-center">
	<h1 class="text-white"><i class="fa fa-book mr-2 mt-5" aria-hidden="true"></i>E-Notes- Save Your Notes Online</h1>
	<br/>
	<a href="Login.jsp" class="btn btn-light"> <i class="fa fa-sign-in a1" aria-hidden="true"></i> </a>
	<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus a1" aria-hidden="true"></i></a>
	</div>
	</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>