<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/admin_main_dash.css" rel="stylesheet">
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f8f9fa;
	padding: 20px;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	background: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h5 {
	margin-bottom: 20px;
}

.form-group {
	margin-bottom: 15px;
}

.form-group label {
	display: block;
	margin-bottom: 5px;
}

.form-group input, .form-group select {
	width: calc(100% - 20px);
	padding: 10px;
	border: 1px solid #ced4da;
	border-radius: 4px;
}

.alert {
	display: none;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid transparent;
	border-radius: 4px;
}

.alert-warning {
	color: #856404;
	background-color: #fff3cd;
	border-color: #ffeeba;
}

.d-flex {
	display: flex;
	justify-content: space-between;
}

.btn {
	padding: 10px 15px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.btn-primary {
	background-color: #007bff;
	color: #fff;
}
</style>

</head>
<body>

	<!-- Sidebar -->
	<div class="sidebar">
		<img
			src="https://static.vecteezy.com/system/resources/previews/020/429/953/non_2x/admin-icon-vector.jpg"
			alt="Profile Picture">
		<h4>Hello Admin</h4>
		<br>
		<ul class="nav flex-column">
			<li class="nav-item"><a class="nav-link active" href="#"><i
					class="bi bi-house-door"></i> Home</a></li>
			<li class="nav-item"><a class="nav-link"
				href="admin_dashboard.jsp"><i class="bi bi-speedometer2"></i>
					Dashboard</a></li>
			<li class="nav-item"><a class="nav-link"
				href="service_dashboard.jsp"><i class="bi bi-journal"></i>
					Services</a></li>
			<li class="nav-item"><a class="nav-link"
				href="vendors_dashboard.jsp"><i class="bi bi-shop"></i> Vendors</a>
			</li>
		</ul>
	</div>

	<!-- Page content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<h1>Admin Dashboard</h1>
				</div>
			</div>
		</div>
	</div>


	<!-- Edit Service Modal -->
	<div class="container">
		<h4>Edit Vendors</h4>
		<form action="VendorUpdateServlet" method="post">
			<div id="errorMessageUpdate" class="alert alert-warning"></div>
			<c:forEach var="vendor" items="${vendorRead}">
				<input type="hidden" name="id" value="${vendor.id}">
			</c:forEach>

			<div class="form-group">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="name">Name</label>
					<input type="text" name="name" value="${vendor.name}"
						class="form-control" required />
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="address">Address</label>
					<input type="text" name="address" value="${vendor.address}"
						class="form-control" required />
				</c:forEach>
			</div>
			<div class="mb-3">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="">Email</label>
					<input type="email" name="email" value="${vendor.email}"
						id="email-field" onkeyup="validateEmail()" required>
					<span id="email-error"></span>
				</c:forEach>
			</div>
			<div class="mb-3">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="">Phone</label>
					<input type="text" name="phone" value="${vendor.phone}" id="phone"
						onkeyup="validatePhone()" required>
					<span id="mobile-error"></span>
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="type">Service Type</label>
					<select name="type" required>
						<option selected value="">${vendor.type}</option>
						<option value="Invitation Card Design">Invitation Card
							Design</option>
						<option value="Photos And Videos">Photos And Videos</option>
						<option value="Event Vehicles">Event Vehicles</option>
						<option value="Food Catering">Food Catering</option>
					</select>
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="vendor" items="${vendorRead}">
					<label for="price">Price Range</label>
					<input type="text" name="price" value="${vendor.price}"
						class="form-control" required />
				</c:forEach>
			</div>
			<div class="form-group d-flex">
				<input type="submit" value="Update" class="btn btn-primary">
			</div>
		</form>
	</div>


	<script>
		var emailField = document.getElementById("email-field");
		var emailError = document.getElementById("email-error");

		function validateEmail() {
			if (!emailField.value
					.match(/^[A-Za-z\._\-0-9]*[@][A-Za-z]*[\.][a-z]{2,4}$/)) {
				emailError.innerHTML = "Please enter a valid email";
				emailField.style.backgroundColor = "red";
				emailField.style.color = "white";
				return false;
			}

			emailError.innerHTML = "Valid Email";
			emailField.style.backgroundColor = "#34ebae";
			emailField.style.color = "black";
			return true;
		}

		function validatePhone() {

			var number = document.getElementById("phone").value;

			var numberField = document.getElementById("phone");
			var mobileError = document.getElementById("mobile-error");

			if (number.length !== 10) {
				mobileError.innerHTML = "Invalid Mobile number";
				numberField.style.backgroundColor = "red";
				numberField.style.color = "white";
				return false;
			}

			mobileError.innerHTML = "Valid Mobile number";
			numberField.style.backgroundColor = "#34ebae";
			numberField.style.color = "black";
			return true;
		}
	</script>

</body>
</html>