<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image" href="image/icon.png">
<title>i Do Eventor</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="css/main.css" />

</head>
<body>
<header class="header">
		<a href="#" class="logo"><span>i</span>Do Eventor</a>

		<nav class="navbar">
			<a href="user_home.jsp">home</a> <a href="#service">service</a> <a href="#about">about</a>
			<a href="FAQ.jsp">FAQ</a> <a href="#contact">contact</a>
		</nav>

		<div id="menu-bars" class="fas fa-bars"></div>

		<div class="header-button">
			<a href="index.jsp"><button type="button" class="header-btn-in">Log Out</button></a> 
			<% String userName = (String) request.getAttribute("user_name"); %>
			<a href="user_profile_servlet?user_name=<%= userName %>"><button type="button" class="header-btn-up">Profile</button></a>
			<%-- this is a print  <h1><%= userName %></h1> --%>
		</div>
		
	</header>

	<section class="home" id="home">
		<div class="content">
			<h3>
				where your ideas take off <span> iDo Eventor </span>
			</h3>
		</div>
	</section>

	<!-- service section starts  -->
	<section class="service" id="service">
		<h1 class="heading">
			our <span>services</span>
		</h1>

		<div class="box-container">
			<div class="box">
				<i class="fas fa-envelope"></i>
				<h3>invitation card design</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

			<div class="box">
				<i class="fas fa-photo-video"></i>
				<h3>photos and videos</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

			<div class="box">
				<i class="fas fa-music"></i>
				<h3>entertainment</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

			<div class="box">
				<i class="fas fa-car"></i>
				<h3>enent vehicles</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

			<div class="box">
				<i class="fas fa-map-marker-alt"></i>
				<h3>venue selection</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

			<div class="box">
				<i class="fas fa-birthday-cake"></i>
				<h3>food catering</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
			</div>

		</div>
		<section class="home">
			<div class="content">
				<a href="#" class="btn">Read More</a>
			</div>
		</section>
	</section>

	<div style="height: 100px;"></div>

	<!-- about section starts  -->
	<section class="about" id="about">
		<h1 class="heading">
			<span>about</span> us
		</h1>

		<div class="row">
			<div class="image">
				<img src="image/main.png" />
			</div>

			<div class="content">
				<h3>your occasion deserves our careful planning</h3>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
				<p>Event management is the application of project management to
					the creation and development of small and/or large-scale personal
					or corporate events such as festivals, conferences, ceremonies,
					weddings, formal parties, concerts, or conventions</p>
				<a href="aboutus.jsp" class="btn">reach us</a>
			</div>
		</div>
	</section>

	<div style="height: 100px;"></div>

	<!-- price section starts  -->
	<section class="price" id="price">
		<h1 class="heading">
			our <span>Events</span>
		</h1>
		<div class="box-container">
			<div class="box">
				<h3 class="title">Wedding Planning</h3>
				<h3 class="book_title">Available NOW.!</h3>
				<ul>
					<li><i class="fas fa-check"></i>full services</li>
					<li><i class="fas fa-check"></i> decorations</li>
					<li><i class="fas fa-check"></i> music and photos</li>
					<li><i class="fas fa-check"></i> food and drinks</li>
					<li><i class="fas fa-check"></i> invitation card</li>
				</ul>
				<a href="#" class="btn">BOOK NOW</a>
			</div>

			<div class="box">
				<h3 class="title">Corporate Events</h3>
				<h3 class="book_title">Available NOW.!</h3>
				<ul>
					<li><i class="fas fa-check"></i>full services</li>
					<li><i class="fas fa-check"></i> decorations</li>
					<li><i class="fas fa-check"></i> music and photos</li>
					<li><i class="fas fa-check"></i> food and drinks</li>
					<li><i class="fas fa-check"></i> invitation card</li>
				</ul>
				<a href="#" class="btn">BOOK NOW</a>
			</div>

			<div class="box">
				<h3 class="title">Charity Events</h3>
				<h3 class="book_title">Available NOW.!</h3>
				<ul>
					<li><i class="fas fa-check"></i>full services</li>
					<li><i class="fas fa-check"></i> decorations</li>
					<li><i class="fas fa-check"></i> music and photos</li>
					<li><i class="fas fa-check"></i> food and drinks</li>
					<li><i class="fas fa-check"></i> invitation card</li>
				</ul>
				<a href="#" class="btn">BOOK NOW</a>
			</div>

			<div class="box">
				<h3 class="title">Special Occasion Events</h3>
				<h3 class="book_title">Available NOW.!</h3>
				<ul>
					<li><i class="fas fa-check"></i>full services</li>
					<li><i class="fas fa-check"></i> decorations</li>
					<li><i class="fas fa-check"></i> music and photos</li>
					<li><i class="fas fa-check"></i> food and drinks</li>
					<li><i class="fas fa-check"></i> invitation card</li>
				</ul>
				<a href="#" class="btn">BOOK NOW</a>
			</div>
		</div>
	</section>


	<!-- End your code -->

	<div style="height: 50px;"></div>
	<!-- footer section starts  -->
	<footer id="contact">
		<section class="footer">
			<div class="box-container">
				<div class="box">
					<h3>i Do Eventor</h3>
					<p>"iDo Event Planning: Your one-stop destination for seamless
						event planning, offering expert advice, inspiration, and tools for
						every special occasion."</p>

				</div>

				<div class="box">
					<h3>quick links</h3>
					<a href="#"> <i class="fas fa-arrow-right"></i> Home
					</a> <a href="#"> <i class="fas fa-arrow-right"></i> Service
					</a> <a href="#about"> <i class="fas fa-arrow-right"></i> About
					</a> <a href="FAQ.jsp"> <i class="fas fa-arrow-right"></i> FAQ
					</a> <a href="#"> <i class="fas fa-arrow-right"></i> Contact
					</a>
				</div>

				<div class="box">
					<h3>contact info</h3>
					<a href="#"> <i class="fas fa-phone"></i> 0112345678
					</a> <a href="#"> <i class="fas fa-phone"></i> 0771234567
					</a> <a href="#"> <i class="fas fa-envelope"></i>
						idoeventor@gmail.com
					</a> <a href="#"> <i class="fas fa-envelope"></i>
						idoeventorsupport@gmail.com
					</a> <a href="#"> <i class="fas fa-map-marker-alt"></i>123,/E,Malabe,
						Srilanka
					</a>
				</div>

				<div class="box">
					<h3>follow us</h3>
					<a href="https://www.facebook.com/"> <i
						class="fab fa-facebook-f"></i> facebook
					</a> <a href="https://twitter.com/"> <i class="fab fa-twitter"></i>
						twitter
					</a> <a href="https://www.instagram.com/"> <i
						class="fab fa-instagram"></i> instagram
					</a> <a href="https://lk.linkedin.com/"> <i
						class="fab fa-linkedin-in"></i> linkedin
					</a>
				</div>
			</div>
		</section>
	</footer>

	<!-- js file -->
	<script src="js/main_js.js"></script>
</body>
</html>