<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%
    UserDatails user1=(UserDatails)session.getAttribute("userD");
    if(user1==null){
    	response.sendRedirect("Login.jsp");
    	session.setAttribute("Login-error", "Please Login..");
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_component/AllCSS.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<h2 class="text-center mt-4">Add Your Notes.. </h2>
<div class="container-fluid">
<div class="row">
<div class="col-md-12">

<div class="container">
<form action="AddNotesServlet" method="post">
  <div class="form-group">
  
  <%
  UserDatails us=(UserDatails)session.getAttribute("userD");
  if(us!=null){%>
	  <input type="hidden" value="<%=us.getId()%>" name="uid">
  <%}
  %>
 

    <label for="exampleInputEmail1"><h6>Enter Title</h6></label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" required="required">
    
  </div>
  <div class="form-group">
  <label for="exampleInputEmail1"><h6>Enter Content</h6></label>
  
  <textarea rows="10" cols="" class="form-control" name="content" required="required"></textarea>
  </div>
  <div class="conatiner text-center"><button type="submit" class="btn btn-primary">Add Notes!</button>
	</div>
</form>



</div>


</div>
</div>


</div>

</body>
</html>