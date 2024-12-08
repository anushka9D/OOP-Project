<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image" href="image/icon.png">
<title>Sign Up i Do Eventor</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/signup.css" />
</head>

<body>

<header class="header">
		<a href="#" class="logo"><span>i</span>Do Eventor</a>

		<nav class="navbar">
			<a href="index.jsp">home</a> <a href="index.jsp">service</a> <a href="index.jsp">about</a>
			<a href="FAQ.jsp">FAQ</a> <a href="#contact">contact</a>
		</nav>

		<div id="menu-bars" class="fas fa-bars"></div>

		<div class="header-button">
			<a href="login.jsp"><button type="button" class="header-btn-in">sign
					in</button></a> <a href=""><button type="button" class="header-btn-up">sign
					up</button></a>
		</div>
	</header>
	<div style = "hight:50px;"></div>

	<div style = "padding: 0px 20px 0 20px;">
	<div class="signup-container">
        <h1>Create Your Account</h1>
        <form action="user_signup_Servlet" method="POST">
            <label for="username">Your Name</label>
            <input type="text" id="username" name="name" placeholder="Enter your full name" required>
            
            <label for="phone">Phone Number</label>
            <input type="tel" id="phone" name="phone" placeholder="07X XXX XXXX" required>
            
            <label for="address">Your Address</label>
            <textarea id="address" name="address" placeholder="Enter your address" required></textarea>
            
            <label for="email">Email Address</label>
            <input style="text-transform:lowercase;" type="email" id="email" name="email" placeholder="example@gmail.com" required>
            
            <label for="email">Password</label>
            <input  type="password" id="password" name="password" placeholder="Enter Your Password" required>
            
            <label for="email">Re-Enter Password</label>
            <input  type="password" id="repassword" name="repassword" placeholder="Enter Your Password" required>
            
            <button type="submit" class="submit-btn">Sign Up</button>
        </form>
    </div>
    </div>

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
	
	<script>
    document.querySelector("form").addEventListener("submit", function(event) {
        var password = document.getElementById("password").value;
        var repassword = document.getElementById("repassword").value;

        if (password !== repassword) {
            alert("Passwords do not match. Please try again.");
            event.preventDefault(); // Prevent form submission if passwords don't match
        }
    });
</script>

</body>
</html>