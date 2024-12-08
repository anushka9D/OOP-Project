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

.form-group input {
	width: calc(100% - 20px);
	/* Ensures there is padding on the right side */
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

.btn-secondary {
	background-color: #6c757d;
	color: #fff;
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
		<h4>Edit Service</h4>
		<form action="serviceUpdateServlet" method="post">
			<div id="errorMessageUpdate" class="alert alert-warning"></div>
			<div class="form-group">
				<c:forEach var="service" items="${serviceRead}">
					<input type="hidden" name="id" value="${service.id}" id="edit_name" />
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="service" items="${serviceRead}">
					<label for="edit_name">Name</label>
					<input type="text" name="name" value="${service.name}"
						id="edit_name" required />
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="service" items="${serviceRead}">
					<label for="edit_description">Description</label>
					<input type="text" name="description"
						value="${service.description}" id="edit_description" required />
				</c:forEach>
			</div>

			<div class="form-group">
				<c:forEach var="service" items="${serviceRead}">
					<label for="edit_numberOfEvents">Number of Events</label>
					<input type="number" name="participants"
						value="${service.participants}" id="edit_numberOfEvents" required />
				</c:forEach>
			</div>
			<div class="form-group">
				<c:forEach var="service" items="${serviceRead}">
					<label for="edit_availableEvents">Available Events</label>
					<input type="number" name="events" value="${service.events}"
						id="edit_availableEvents" required />
				</c:forEach>
			</div>
			<div class="form-group d-flex">
				<input type="submit" value="Update" class="btn btn-primary">
			</div>


		</form>
	</div>

</body>
</html>