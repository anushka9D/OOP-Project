<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import='java.sql.Connection'%>
<%@ page import='java.sql.DriverManager'%>
<%@ page import='java.sql.Statement'%>
<%@ page import='java.sql.ResultSet'%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link href="css/admin.css" rel="stylesheet">

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
			<li class="nav-item"><a class="nav-link active" href="#">Home</a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="admin_dashboard.jsp">Dashboard</a></li>
			<li class="nav-item"><a class="nav-link"
				href="service_dashboard.jsp">Services</a></li>
			<li class="nav-item"><a class="nav-link"
				href="vendors_dashboard.jsp">Vendors</a></li>
			<li class="nav-item"><a class="nav-link" href="index.jsp"><i
					class="bi bi-shop"></i>Logout</a></li>
		</ul>
	</div>

	<!-- Page content -->
	<div class="content">
		<!-- Add Vendors -->
		<div id="studentAddModal" class="modal">
			<div class="modal-content">
				<span class="close" data-target="#studentAddModal">&times;</span>
				<h5>Add Vendors</h5>
				<form action="vendor_insert" method="post">
					<div id="errorMessage" class="alert alert-warning d-none"></div>
					<div class="mb-3">
						<label for="">Name</label> <input type="text" name="name"
							class="form-control" required />
					</div>
					<div class="mb-3">
						<label for="">Address</label> <input type="text" name="address"
							class="form-control" required />
					</div>
					<div class="mb-3">
						<label for="">Email</label> <input type="email" name="email"
							id="email-field" onkeyup="validateEmail()" required> <span
							id="email-error"></span>
					</div>
					<div class="mb-3">
						<label for="">Phone</label> <input type="text" name="phone"
							id="phone" onkeyup="validatePhone()" required> <span
							id="mobile-error"></span>
					</div>
					<div class="mb-3">
						<label for="">Service Type</label> <select name="type" required>
							<option selected value="">Select Service</option>
							<option value="Invitation Card Design">Invitation Card
								Design</option>
							<option value="Photos And Videos">Photos And Videos</option>
							<option value="Event Vehicles">Event Vehicles</option>
							<option value="Food Catering">Food Catering</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="">Price Range</label> <input type="text" name="price"
							class="form-control" required />
					</div>
					<button type="button" class="btn btn-secondary"
						data-target="#studentAddModal">Close</button>
					<button type="submit" class="btn btn-primary" name="submit"
						value="add vendor">Save Vendor</button>
				</form>
			</div>
		</div>



		<!-- View Vendors -->
		<div id="studentViewModal" class="modal">
			<div class="modal-content">
				<span class="close" data-target="#studentViewModal">&times;</span>
				<h5>View Vendors</h5>
				<div class="mb-3">
					<label for="">Name</label>
					<p id="view_name" class="form-control"></p>
				</div>
				<div class="mb-3">
					<label for="">Email</label>
					<p id="view_email" class="form-control"></p>
				</div>
				<div class="mb-3">
					<label for="">Phone</label>
					<p id="view_phone" class="form-control"></p>
				</div>
				<div class="mb-3">
					<label for="">Course</label>
					<p id="view_course" class="form-control"></p>
				</div>
				<button type="button" class="btn btn-secondary"
					data-target="#studentViewModal">Close</button>
			</div>
		</div>

		<div class="container mt-4">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4>
								Vendors details
								<button type="button" class="btn btn-primary float-end"
									data-target="#studentAddModal">Add Vendors</button>
							</h4>
						</div>
						<div class="card-body">
							<table id="myTable">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>Address</th>
										<th>Email</th>
										<th>Phone</th>
										<th>Service Type</th>
										<th>Price</th>
										<th>Action</th>
									</tr>
								</thead>

								<tbody>
									<%
									try {
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_planning_db", "root", "yo369");
										Statement stmt = con.createStatement();

										String sql = "select * from vendor";
										ResultSet rs = stmt.executeQuery(sql);

										while (rs.next()) {
									%>
									<tr>
										<td><%=rs.getString("id")%></td>
										<td><%=rs.getString("v_name")%></td>
										<td><%=rs.getString("address")%></td>
										<td><%=rs.getString("email")%></td>
										<td><%=rs.getString("phone")%></td>
										<td><%=rs.getString("s_type")%></td>
										<td><%=rs.getString("price")%></td>
										<td>
											<form action="VendorUpdateReadServlet" method="post">
												<input type="hidden" name="id"
													value="<%=rs.getString("id")%>"> <input
													type="submit" value="Edit" class="btn btn-update">
											</form>

											<form action="vedorDeleteServlet" method="post">
												<input type="hidden" name="id"
													value="<%=rs.getString("id")%>"> <input
													type="submit" value="Delete" class="btn btn-delete">
											</form>
										</td>
									</tr>
									<%
									}
									}

									catch (Exception e) {
									e.printStackTrace();
									}
									%>
								</tbody>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		// Get the modal
		var modals = document.querySelectorAll('.modal');

		// Get the button that opens the modal
		var btns = document.querySelectorAll('.btn');

		// Get the <span> element that closes the modal
		var spans = document.querySelectorAll('.close');

		// When the user clicks the button, open the modal
		btns.forEach(function(btn) {
			btn.onclick = function() {
				var target = this.getAttribute('data-target');
				document.querySelector(target).style.display = "block";
			}
		});

		// When the user clicks on <span> (x), close the modal
		spans.forEach(function(span) {
			span.onclick = function() {
				var target = this.getAttribute('data-target');
				document.querySelector(target).style.display = "none";
			}
		});

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target.classList.contains('modal')) {
				event.target.style.display = "none";
			}
		}
	</script>

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