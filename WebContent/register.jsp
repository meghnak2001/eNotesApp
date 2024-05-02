<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<%@include file="all_component/AllCSS.jsp" %>

<style>
#ab{
background: rgb(0,237,255);
background: linear-gradient(60deg, rgba(0,237,255,1) 0%, rgba(9,9,121,1) 44%, rgba(0,237,255,1) 100%);
}
</style>
</head>

<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container-fluid div-color" id="ab">
<div class="row">
<div class="col-md-6 offset-md-3">
<div class="card mt-5">
<div class="card-header text-center text-white bg-custom">
<i class="fa fa-user-plus" aria-hidden="true"></i>
<h4>Register</h4>
</div>


<%
String regMsg=(String)session.getAttribute("reg-success");

if(regMsg!=null){%>
	
	<div class="alert alert-success" role="alert">
	  <%= regMsg %>
	</div>
	
<%}
%>

<%
String FailedMsg=(String)session.getAttribute("failed-msg");

if(FailedMsg!=null){%>
	
	<div class="alert alert-danger" role="alert">
	  <%= FailedMsg %>
	</div>
	
<%}
%>



<div class="card-body">
<form action="UserServlet" method="post">
<div class="form-group">
<label> Enter Full Name </label>
<input type="text" class="form-control" id="exampleInputName" aria-describedby="emailHelp" name=fname>
</div>
<div class="form-group">
<label> Enter Email </label>
<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name=uemail>
</div>
<div class="form-group">
<label> Enter Password </label>
<input type="password" class="form-control" id="exampleInputPassword1" name="upassword">
</div>
  
<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
</form>
</div>
</div>
</div>
</div>

</div>


<%@include file="all_component/footer.jsp" %>
</body>
</html>