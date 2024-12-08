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
<link href="css/admin_main_dash.css" rel="stylesheet">
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
			<li class="nav-item"><a class="nav-link" href="index.jsp"><i
					class="bi bi-shop"></i>Logout</a></li>
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
			<div class="row mt-4">
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-primary text-white">
							<i class="bi bi-shop"></i> Number of Vendors
						</div>
						<div class="card-body">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_planning_db", "root", "yo369");
								Statement stmt = con.createStatement();

								String sql = "select count(id) from vendor";
								ResultSet rs = stmt.executeQuery(sql);

								if (rs.next()) {
							%>
							<h1 class="card-title"><%=rs.getString(1)%></h1>
							<%
							}
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-success text-white">
							<i class="bi bi-journal"></i> Number of Bookings
						</div>
						<div class="card-body">
							<h1 class="card-title">150</h1>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-warning text-white">
							<i class="bi bi-person"></i> Number of Customers
						</div>
						<div class="card-body">
							<h1 class="card-title">100</h1>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-info text-white">
							<i class="bi bi-grid-1x2"></i> Number of Categories
						</div>
						<div class="card-body">
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event_planning_db", "root", "yo369");
								Statement stmt = con.createStatement();

								String sql = "select count(id) from service";
								ResultSet rs = stmt.executeQuery(sql);

								if (rs.next()) {
							%>
							<h1 class="card-title"><%=rs.getString(1)%></h1>
							<%
							}
							} catch (Exception e) {
							e.printStackTrace();
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-secondary text-white">
							<i class="bi bi-graph-up"></i> Most Booked Events
						</div>
						<div class="card-body">
							<ul>
								<li>Event 1</li>
								<li>Event 2</li>
								<li>Event 3</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-danger text-white">
							<i class="bi bi-calendar2-check"></i> Events Available
						</div>
						<div class="card-body">
							<ul>
								<li>Event 1</li>
								<li>Event 2</li>
								<li>Event 3</li>
								<li>Event 4</li>
								<li>Event 5</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row mt-4">
				<div class="col-md-6">
					<div class="card">
						<div class="card-header bg-primary text-white">
							<i class="bi bi-bar-chart"></i> Number of Each
						</div>
						<div class="card-body">
							<canvas id="myChart"></canvas>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.7.0/dist/chart.min.js"></script>
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

		// Chart
		var ctx = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(ctx, {
			type : 'bar',
			data : {
				labels : [ 'Corporate Events', 'Wedding Events',
						'Charity Events', 'Special Occasion Events' ],
				datasets : [ {
					label : 'Number of Each',
					data : [ 25, 150, 100, 10 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)' ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					y : {
						beginAtZero : true
					}
				}
			}
		});
	</script>

</body>
</html>