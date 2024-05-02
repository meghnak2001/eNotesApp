<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.User.UserDatails"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
<div>
  <a class="navbar-brand" href="index.jsp"><img alt="" src="img/bg2.png" class="img-fluid mx-auto" style="max-width:50px;padding:10px;" ></i>E-Notes</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  </div>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="addNotes.jsp">Add Notes</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="showNotes.jsp">Show Notes</a>
      </li>
    </ul>
    <%
    UserDatails user=(UserDatails)session.getAttribute("userD");
    if(user!=null){%>
    <a href="" class="btn btn-light my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal" type="submit"><%=user.getName() %></a>
      <a href="LogoutServlet" class="btn btn-light my-2 my-sm-0 mr-2" type="submit">Logout</a>
      
      <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      
      <div class="container text-center">
        
        	<table class="table">
        		<tbody>
        			<tr>
        				<th>User Id</th>
        				<td><%=user.getId() %></td>
        			</tr>
        
        			<tr>
        				<th>Full Name</th>
        				<td><%=user.getName() %></td>
        			</tr>
        
        			<tr>
        				<th>Email Id</th>
        				<td><%=user.getEmail() %></td>
        			</tr>
        
        		</tbody>
        
        	</table>
      
      	
      
        	<div>
        	<button type="button" class="btn btn-primary text-center"
        	data-dismiss="modal">Close</button>
        	</div>
     </div>
    </div>
  </div>
</div>
    
    	
    <%
    }else{%>
    	
    	<a href="Login.jsp" class="btn btn-light my-2 my-sm-0 mr-2" type="submit">Login</a>
        <a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-2" type="submit">Register</a>
    	
    <%}
    %>
    
  </div>
  


</nav>

</body>
</html>