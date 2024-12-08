<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>
<%@ page import="com.user.user" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image" href="image/icon.png">
<title>User Profile</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/user_profile.css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
    .user_profile_delete-btn {
    background-color: #f44336; 
    color: white;
    width: 100%;
    border: none;
    padding: 12px 24px; 
    text-align: center;
    font-size: 16px; 
    cursor: pointer;
    border-radius: 8px;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.user_profile_delete-btn:hover {
    background-color: #d32f2f;
    transform: scale(1.05);
}

.user_profile_delete-btn:focus {
    outline: none; 
    box-shadow: 0 0 0 2px rgba(255, 0, 0, 0.5);
}

.user_profile_delete-btn:active {
    background-color: #b71c1c;
    transform: scale(0.98); 
}

.user_profile_submit-btn {
  width: 100%;
  padding: 12px 20px;
  font-size: 18px;
  background-color: #007BFF;
  color: white;
  border: none;
  border-radius: 8px;
  text-transform: uppercase;
  cursor: pointer;
  transition: background-color 0.3s ease, transform 0.2s ease;
}

.user_profile_submit-btn:hover {
  background-color: #0056b3;
  transform: scale(1.05);
}

.user_profile_submit-btn:focus {
  outline: none;
  box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.6);
}

.user_profile_submit-btn:active {
  background-color: #004085;
  transform: scale(0.98);
}

</style>

</head>
<body>
<header class="header">
	<a href="#" class="logo"><span>i</span>Do Eventor</a>
	<nav class="navbar">
		<a href="user_home.jsp">Home</a> <a href="#service">Service</a> <a href="#about">About</a>
		<a href="FAQ.jsp">FAQ</a> <a href="#contact">Contact</a>
	</nav>
	<div id="menu-bars" class="fas fa-bars"></div>
	<div class="header-button">
		<a href="index.jsp"><button type="button" class="header-btn-in">Log Out</button></a> 
	</div>
</header>

<div style="height:100px"></div>

<div class="user_profile_container">
    <h1 class="user_profile_h1">User Profile</h1>
    <c:forEach var="user" items="${userData}">
     <!-- Directly populate fields from user object -->
    <form action="user_update_servlet" method="POST">
        
            <div class="user_profile_form-group">
                <label for="name">Full Name:</label>
                <input type="text" id="name" name="name" value="${user.name}" required>
            </div>

            <div class="user_profile_form-group">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" value="${user.phone}" required>
            </div>

            <div class="user_profile_form-group">
                <label for="address">Address:</label>
                <input type="text" id="address" name="address" value="${user.address}" required>
            </div>

            <div class="user_profile_form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${user.email}" required readonly>
            </div>

            <div class="user_profile_form-group">
                <label for="password">Password:</label>
                <!-- Do not pre-fill the password field for security reasons -->
                <input type="password" id="password" name="password" value="${user.password}" required>
            </div>

            <div class="user_profile_form-group">
                <button type="submit" class="user_profile_submit-btn">Submit</button>
            </div>

        
    </form>
    <form action="user_delete_servlet" method="POST">
            <input type="hidden" name="user_email" value="${user.email}">
                <button type="submit" class="user_profile_delete-btn">Delete Account</button>
    </form>
	</c:forEach>
</div>

<div style="height: 50px;"></div>

<footer id="contact">
	<section class="footer">
		<div class="box-container">
			<div class="box">
				<h3>i Do Eventor</h3>
				<p>"iDo Event Planning: Your one-stop destination for seamless event planning, offering expert advice, inspiration, and tools for every special occasion."</p>
			</div>

			<div class="box">
				<h3>Quick Links</h3>
				<a href=""> <i class="fas fa-arrow-right"></i> Home </a>
				<a href=""> <i class="fas fa-arrow-right"></i> Service </a>
				<a href=""> <i class="fas fa-arrow-right"></i> About </a>
				<a href="FAQ.jsp"> <i class="fas fa-arrow-right"></i> FAQ </a>
				<a href=""> <i class="fas fa-arrow-right"></i> Contact </a>
			</div>

			<div class="box">
				<h3>Contact Info</h3>
				<a href="#"> <i class="fas fa-phone"></i> 0112345678 </a>
				<a href="#"> <i class="fas fa-phone"></i> 0771234567 </a>
				<a href="#"> <i class="fas fa-envelope"></i> idoeventor@gmail.com </a>
				<a href="#"> <i class="fas fa-envelope"></i> idoeventorsupport@gmail.com </a>
				<a href="#"> <i class="fas fa-map-marker-alt"></i> 123,/E, Malabe, Sri Lanka </a>
			</div>

			<div class="box">
				<h3>Follow Us</h3>
				<a href="https://www.facebook.com/"> <i class="fab fa-facebook-f"></i> facebook </a>
				<a href="https://twitter.com/"> <i class="fab fa-twitter"></i> twitter </a>
				<a href="https://www.instagram.com/"> <i class="fab fa-instagram"></i> instagram </a>
				<a href="https://lk.linkedin.com/"> <i class="fab fa-linkedin-in"></i> linkedin </a>
			</div>
		</div>
	</section>
</footer>

<script src="js/main_js.js"></script>
<script>
    // You can add custom JavaScript here if needed.
</script>
</body>
</html>
