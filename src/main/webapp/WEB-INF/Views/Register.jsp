<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: #a7f9f9;
}

/* Full-width input fields */
input[type=text], input[type=password],input[type=number]  {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: white;
}

input[type=text]:focus, input[type=password]:focus,input[type=number]:focus {
    background-color:#82ff96;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
</head>
<body>
<jsp:include page="Header.jsp"/>
  <form:form method="post" action="save" modelAttribute="Register">   

  <div class="container">
    <h1>Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    
    <label for="name"><b>Name</b></label>
	<form:input type="text" path="userName" placeholder="Enter Name" name="name"/>
	
    <label for="email"><b>Email</b></label>
    <form:input type="text" path="email" placeholder="Enter Email" name="email" />

    <label for="psw"><b>Password</b></label>
    <form:input type="password" path="password" placeholder="Enter Password" name="psw" />

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <form:input type="password" path="password" placeholder="Repeat Password" name="psw-repeat" />
    
    <label for="mobile number"><b>Mobile Number</b></label>
    <form:input type="number" path="phoneNumber" placeholder="Mobile Number" name="number" />
    
     <label for="age"><b>Age</b></label>
    <form:input type="number" path="userAge" placeholder="Age" name="age" />
    
     <label for="gender"><b>Gender</b></label>
     <div class="radio">
     <div style="margin-left:200px;"><form:radiobutton path="userGender" name="optradio" value="Male" label="Male"/></div> <div style="margin-left:200px;"><form:radiobutton path="userGender" value="female"  name="optradio" label="Female"/></div>
   
     
    </div>
     <label for="location"><b>Location</b></label>
    <form:input type="text" path="userLocation" placeholder="Enter location" name="location" />
    
    
    
    
    <hr>
    <p>By creating an account you agree to our <a href="#">Terms and Privacy</a>.</p>

    <button type="submit" class="registerbtn">Register</button>
  </div>
  
  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>
</form:form>
<jsp:include page="Footer.jsp"/>
</body>
</html>
