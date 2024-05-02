<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_component/AllCSS.jsp" %>
<style>
#ab{
background: rgb(0,237,255);
background: linear-gradient(90deg, rgba(0,237,255,1) 0%, rgba(9,9,121,1) 44%, rgba(0,237,255,1) 100%);
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
<h4>Login</h4>


<%
String invalidMsg=(String)session.getAttribute("login-failed");

if(invalidMsg!=null){%>
	
	<div class="alert alert-danger" role="alert">
	  <%= invalidMsg %>
	</div>
	
<%
session.removeAttribute("login-failed");
}
%>

<%
String withoutLogin=(String)session.getAttribute("Login-error");
if(withoutLogin!=null){%>
<div class="alert alert-danger" role="alert">
	  <%=withoutLogin %>
	</div>
	
<%
session.removeAttribute("Login-error");
}
%>

<%
String lgMsg=(String)session.getAttribute("Logout-message");
if(lgMsg!=null){%>
	<div class="alert alert-success" role="alert">
	  <%=lgMsg%>
	</div>
	
<%
session.removeAttribute("Login-error");
}

%>


<div class="card-body">
<form action="loginServlet" method="get">
  <div class="form-group">
  <label> Enter Email </label>
    <input type="email" name="uemail" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group">
    <label> Enter Password </label>
    <input type="password" name="upassword" class="form-control" id="exampleInputPassword1">
  </div>
  
  <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button>
</form>
</div>
</div>
</div>

</div>
</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>