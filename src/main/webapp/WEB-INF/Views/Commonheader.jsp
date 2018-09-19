<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>

 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
  
<style>
.navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    p.serif {
    font-family: "Mistral";
    font-size:30px;
        color: #807777;
    
}
    
.home_link{
	all: reset;
}


</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <p class="serif"><a class="active" href="<c:url value='/all/home'></c:url>">Mr.GADGET</a></p>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
         <li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Shop By Category<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories}" var="category">
				<li><a href="<c:url value='/all/searchByCategory?searchCondition=${category.productCategoryName}'></c:url>">${category.productCategoryName}</a>
				</li>
				
				</c:forEach>
				<li>
				<a href="<c:url value='/all/searchByCategory?searchCondition=All'></c:url>">All Categories</a>
				</li>
				<li>
				<a href="<c:url value='/all/productsview'></c:url>">All Categories</a>
				</li>
				</ul>
			   </li>
			   <security:authorize access="hasRole('ROLE_ADMIN')">
        <li><a href="<c:url value='/admin/getproductform'></c:url>">Add Product</a></li></security:authorize>
        <li><a href="<c:url value='/all/deals'></c:url>">Deals</a></li>
        <li><a href="<c:url value='/all/stores'></c:url>">Stores</a></li>
        <li><a href="#">About Us</a></li>
           <security:authorize access="hasRole('ROLE_USER')">
			   <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span></a></li>
			   </security:authorize>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li class="dropdown">
						<a class="dropdown-toggle" href="#" data-toggle="dropdown">Your Account <strong class="caret"></strong></a>
						<div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
						<span style="color:red">${error }</span><br>
${msg }<br>
							<c:url value="/j_spring_security_check" var="url"></c:url>
<form method="post" action="${url }">
								
          <p>Please enter your username and password</p>
        <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="j_username" placeholder="Enter email" name="j_username" style="width:200px">
    </div>
  
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="j_password" placeholder="Enter password" name="j_password" style="width:200px">

								 <label><input type="checkbox" name="remember"> Remember me</label>
								<button type="submit" class="btn btn-default">Submit</button><br><br>
								<a href="<c:url value='/all/registrationform'></c:url>">If you don't have an account with Mr.Gadget, Please do sign up</a>
							</form>
						</div>
					</li>
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
                  	
					
			
<!-- <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Login</h4>
        </div>
        <div class="modal-body">
          <p>Please enter your username and password</p>
        <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" style="width:200px">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" style="width:200px">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button><br><br>
    <a href="">If you don't have an account with Mr.Gadget, Please do sign up</a>
    <br></div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> -->

