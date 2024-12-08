<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<link href="css/login.css" rel="stylesheet">
</head>
<body>

	<div class="container">
		<form action="LoginServlet" method="post" class="form" id="login">
			<h1 class="form__title">Login</h1>
			<div class="form__message form__message--error"></div>
			<div class="form__input-group">
				<input type="text" class="form__input" autofocus
					placeholder="Username or email" name="uname" required>
				<div class="form__input-error-message"></div>
			</div>
			<div class="form__input-group">
				<input type="password" class="form__input" autofocus
					placeholder="Password" name="pass" required>
				<div class="form__input-error-message"></div>
			</div>
			<button class="form__button" type="submit">Login</button>

			<p class="form__text">
				<a class="form__link" href="signup.jsp" id="linkCreateAccount">You Don't
					have an account? Create new account</a>
			</p>
		</form>
	</div>

</body>
</html>