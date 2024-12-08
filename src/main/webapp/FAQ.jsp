<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" type="image" href="image/icon.png">

<title>FAQ - iDo Eventor</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
/* FAQ Section */
.faq-section {
	background-color: #1e1e1f;
	color: #fff;
	padding: 60px 0;
	text-align: center;
}

.faq-section h1, .faq-section h2 {
	color: #fff;
}

.faq-section p {
	font-size: 18px;
	line-height: 1.8;
}

.accordion-button {
	background-color: #343a40;
	color: #fff;
	border: none;
}

.accordion-button:focus {
	box-shadow: none;
}

.accordion-button:not(.collapsed) {
	color: #000;
	background-color: #fff;
}

.accordion-item {
	background-color: #343a40;
	border: 1px solid #1e1e1f;
}

.accordion-body {
	background-color: #1e1e1f;
	color: #fff;
}

.cta-btn {
	background-color: #fff;
	color: #000;
	padding: 10px 30px;
	font-size: 20px;
	border-radius: 5px;
	text-decoration: none;
}

.cta-btn:hover {
	background-color: #0056b3;
	color: #fff;
}
</style>

</head>
<body>

	<!-- FAQ Section -->
	<div class="faq-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2">
					<h1>Frequently Asked Questions</h1>
					<p class="lead">Answers to Your Most Common Questions</p>
					<br>
					<br>
					<div class="accordion" id="faqAccordion">
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingOne">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseOne"
									aria-expanded="false" aria-controls="collapseOne">
									What is iDo Eventor?</button>
							</h2>
							<div id="collapseOne" class="accordion-collapse collapse"
								aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
								<div class="accordion-body">iDo Eventor is an innovative
									event planning platform designed to make your event planning
									experience seamless and stress-free. Our platform connects you
									with the best vendors, provides access to special offers, and
									offers tools to manage every aspect of your event.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingTwo">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseTwo"
									aria-expanded="false" aria-controls="collapseTwo">How
									do I get started with iDo Eventor?</button>
							</h2>
							<div id="collapseTwo" class="accordion-collapse collapse"
								aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
								<div class="accordion-body">Getting started is easy!
									Simply create an account on our platform, and you'll have
									access to all our event planning tools and vendor connections.
									You can start planning your event right away.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingThree">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseThree"
									aria-expanded="false" aria-controls="collapseThree">
									What types of events can I plan with iDo Eventor?</button>
							</h2>
							<div id="collapseThree" class="accordion-collapse collapse"
								aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
								<div class="accordion-body">You can plan any type of event
									with iDo Eventor, including weddings, corporate events, charity
									functions, birthdays, and other special occasions. Our platform
									is versatile and suitable for any event.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingFour">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFour"
									aria-expanded="false" aria-controls="collapseFour">
									Are there any fees to use iDo Eventor?</button>
							</h2>
							<div id="collapseFour" class="accordion-collapse collapse"
								aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
								<div class="accordion-body">Creating an account and using
									our basic event planning tools is free. However, some premium
									features and vendor services may come with additional costs.
									Please refer to our pricing page for more details.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingFive">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseFive"
									aria-expanded="false" aria-controls="collapseFive">
									How do I contact customer support?</button>
							</h2>
							<div id="collapseFive" class="accordion-collapse collapse"
								aria-labelledby="headingFive" data-bs-parent="#faqAccordion">
								<div class="accordion-body">If you need assistance, you
									can contact our customer support team via email at
									idoeventorsupport@gmail.com or call us at 0112345678. We're here
									to help you with any questions or issues you may have.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingSix">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSix"
									aria-expanded="false" aria-controls="collapseSix">Can
									I change or cancel my event plans?</button>
							</h2>
							<div id="collapseSix" class="accordion-collapse collapse"
								aria-labelledby="headingSix" data-bs-parent="#faqAccordion">
								<div class="accordion-body">Yes, you can modify or cancel
									your event plans at any time through your iDo Eventor account.
									Please note that some vendors may have specific cancellation
									policies, so be sure to review those details.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingSeven">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseSeven"
									aria-expanded="false" aria-controls="collapseSeven">
									How do I find and book vendors?</button>
							</h2>
							<div id="collapseSeven" class="accordion-collapse collapse"
								aria-labelledby="headingSeven" data-bs-parent="#faqAccordion">
								<div class="accordion-body">Our platform allows you to
									search for vendors based on your event needs and location. You
									can view vendor profiles, read reviews, and book services
									directly through iDo Eventor.</div>
							</div>
						</div>
						<div class="accordion-item">
							<h2 class="accordion-header" id="headingEight">
								<button class="accordion-button collapsed" type="button"
									data-bs-toggle="collapse" data-bs-target="#collapseEight"
									aria-expanded="false" aria-controls="collapseEight">
									Do you offer discounts on vendor services?</button>
							</h2>
							<div id="collapseEight" class="accordion-collapse collapse"
								aria-labelledby="headingEight" data-bs-parent="#faqAccordion">
								<div class="accordion-body">Yes, we often have special
									offers and discounts available from our vendor partners. Be
									sure to check our promotions page and subscribe to our
									newsletter for the latest deals.</div>
							</div>
						</div>
					</div>
					<br>
					<br>
					<h2>Have More Questions?</h2>
					<br> <a href="index.jsp" class="cta-btn">Contact Us</a>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>

