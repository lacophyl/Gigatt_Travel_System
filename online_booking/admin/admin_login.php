<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="login_style.css">
	<script type="text/javascript" src="main.js"></script>
	<!-- <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'> -->
	<title>Admin Login</title>
</head>
<body>
	<wrapper class="login-box">
		<form class="login-form">
			<div class="login-header">
				<header>
					GIGATT TRAVEL
				</header>
			</div>
			<div class="input-box">
				<input id="username" type="username" class="input-field" placeholder="Enter username">
			</div>
			<div class="input-box">
				<input id="password" type="password" class="input-field" placeholder="Enter password">
			</div>
			<div class="input-submit">
				<input id="login-button" type="submit" class="submit-btn" value="LOGIN" onclick="return logBtn()">
			</div>
			<div class="not-admin">
				<!-- <a href="online_booking/index.php">Not an admin?</a> -->
			</div>
		</form>
	</wrapper>
</body>
</html>