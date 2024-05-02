<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/AllCSS.jsp"%>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>


	<div class="container-fluid">
		<div class="card mt-3">
			<div class="card-body text-center">
				<img alt=""
					src="img/bg2.png" class="img-fluid mx-auto" style="max-width:300px;" >
			<br>
			<br>
			<h3> START TAKING YOUR NOTES </h3>
			<br>
			<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
			
			</div>
		</div>
	</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>