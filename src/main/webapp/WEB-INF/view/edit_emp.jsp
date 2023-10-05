<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    		<%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Emp Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">     
             <a class="nav-link active" 
             aria-current="page" href="home">home</a></li>
         <li class="nav-item"> <a class="nav-link "  href="addEmp">Add Emp</a>
        </li>
        
      </ul>
     
    </div>
  </div>
</nav> 
<br>
<div class="container">
<div class = "row">
<div class= "col-md-6 offset-md-3">
<div class="card">
<div class="card-header text-centre">
<h3>Edit Emp</h3>
	<%-- <c:if test="${not empty msg }">
	<h5> ${msg }</h5>
	<c:remove var = "msg "/>
	</c:if> --%>
	<c:if test="${not empty msg }">
			<div class="alert alert-success">
				<b><c:out value="${msg}"></c:out></b>
			</div>
		</c:if>
</div>
<div class="card-body">
<form id="employeeForm" action ="${pageContext.request.contextPath }/updateEmp" method="post">
<input type ="hidden" name ="id" value = "${emp.id }">
<div class="mb-3">
<label>Enter full name</label>
<input type = "text" name="fullname" class="form-control" value="${ emp.fullname}">
</div>
<div class="mb-3">
<label>Enter Address</label>
<input type = "text" name="address" class="form-control" value="${emp.address }">
</div>
<div class="mb-3">
            <label>Enter Email</label>
            <input type="email" name="email" id="email" class="form-control" value="${emp.email }">
            <p id="emailError" style="color: red;"></p>
        </div>
<div class="mb-3">
            <label>Enter password</label>
            <input type="password" name="password" id="password" class="form-control" value = " ${emp.password }">
            <p id="passwordError" style="color: red;"></p>
        </div>
        <div class="mb-3">
            <label>Show Password</label>
            <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()">
        </div>
<div class="mb-3">
<label>Enter Designation</label>
<input type = "text" name="designation" class="form-control" value = " ${emp.designation }">
</div>
<div class="mb-3">
<label>Enter salary</label>
<input type = "text" name="salary" class="form-control" value = " ${emp.salary }">
</div>
<button class="btn btn-primary" type="button" onclick="validateForm()">Update</button>
</form>
</div>
</div>
</div>
</div>
</div>
<script>
        function validateForm() {
            var emailInput = document.getElementById("email");
            var passwordInput = document.getElementById("password");
            var emailError = document.getElementById("emailError");
            var passwordError = document.getElementById("passwordError");
            var email = emailInput.value.trim(); // Remove leading/trailing whitespace
            var password = passwordInput.value.trim(); // Remove leading/trailing whitespace

            // Regular expression for email validation
            var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            // Email validation
            if (!email.match(emailPattern)) {
                emailError.textContent = "Please enter a valid email address.";
                emailInput.classList.add("is-invalid");
            } else {
                emailError.textContent = "";
                emailInput.classList.remove("is-invalid");
            }

            // Password validation (combination of characters, digits, and special characters)
            var passwordPattern = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            if (!password.match(passwordPattern)) {
                passwordError.textContent = "Password must be at least 8 characters and include a combination of characters, digits, and special characters.";
                passwordInput.classList.add("is-invalid");
            } else {
                passwordError.textContent = "";
                passwordInput.classList.remove("is-invalid");
            }

            // Check if any field is empty
            var allFields = document.querySelectorAll(".form-control");
            var isValid = true;

            for (var i = 0; i < allFields.length; i++) {
                if (allFields[i].value.trim() === "") {
                    isValid = false;
                    break; // Stop checking if any field is empty
                }
            }

            // Submit the form if email and password are valid and no field is empty
            if (isValid && email.match(emailPattern) && password.match(passwordPattern)) {
                document.getElementById("employeeForm").submit();
            }
            else {
                alert("Please fill out all fields correctly.");
            }
        }
        function togglePasswordVisibility() {
            var passwordInput = document.getElementById("password");
            if (passwordInput.type === "password") {
                passwordInput.type = "text";
            } else {
                passwordInput.type = "password";
            }
        }
    </script>


</body>
</html>