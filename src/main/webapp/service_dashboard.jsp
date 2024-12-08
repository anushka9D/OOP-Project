<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<li class="nav-item"><a class="nav-link active" href="3">Home</a>
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
		<!-- Add Service -->
		<div id="serviceAddModal" class="modal">
			<div class="modal-content">
				<span class="close" data-target="#serviceAddModal">&times;</span>
				<h5>Add Service</h5>
				<form id="saveService" action="service_insert" method="post">
					<div id="errorMessage" class="alert alert-warning d-none"></div>
					<div class="mb-3">
						<label for="">Name</label> <input type="text" name="name"
							class="form-control" />
					</div>
					<div class="mb-3">
						<label for="">Description</label> <input type="text"
							name="description" class="form-control" />
					</div>
					<div class="mb-3">
						<label for="">Participants</label> <input type="number"
							name="participants" class="form-control" />
					</div>
					<div class="mb-3">
						<label for="">Available Events</label> <input type="number"
							name="events" class="form-control" />
					</div>
					<button type="button" class="btn btn-secondary"
						data-target="#serviceAddModal">Close</button>
					<button type="submit" class="btn btn-primary">Save Service</button>
					<input type="hidden" name="command" value="ADD">
				</form>
			</div>
		</div>



		<div class="container mt-4">
			<div class="row">
				<div class="col-md-12">
					<div class="card">
						<div class="card-header">
							<h4>
								Services details
								<button type="button" class="btn btn-primary float-end"
									data-target="#serviceAddModal">Add Service</button>
							</h4>
						</div>
						<div class="card-body">
							<table id="myTable">
								<thead>
									<tr>
										<th>Service ID</th>
										<th>Service Name</th>
										<th>Description</th>
										<th>Participants</th>
										<th>Available Events</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<%
									try {
										Class.forName("com.mysql.jdbc.Driver");
										Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_planning_db", "root", "yo369");
										Statement stmt = con.createStatement();

										String sql = "select * from service";
										ResultSet rs = stmt.executeQuery(sql);

										while (rs.next()) {
									%>
									<tr>
										<td><%=rs.getString("id")%></td>
										<td><%=rs.getString("s_name")%></td>
										<td><%=rs.getString("s_description")%></td>
										<td><%=rs.getString("category_participants")%></td>
										<td><%=rs.getString("category_events")%></td>

										<td>
											<form action="serviceUpdateReadServlet" method="post">
												<input type="hidden" name="id"
													value="<%=rs.getString("id")%>"> <input
													type="submit" value="Edit" class="btn btn-update">
											</form>

											<form action="serviceDeleteServlet" method="post">
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

</body>
</html>