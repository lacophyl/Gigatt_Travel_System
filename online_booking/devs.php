<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="i_style.css">
	<script type="text/javascript" src="i_main.js" defer></script>
	<script src="https://unpkg.com/scrollreveal"></script>
	<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<!-- NavBar -->
	<nav>
		<a href="index.php" class="brand">
			<h1><b class="accent">Gig</b>att</h1>
		</a>
		<div class="menu">
			<div class="btn close-btn">
                <i class='bx bx-x'></i> 
            </div>
			<a href="index.php">HOME</a>
			<a href="vehicles.php">CARS</a>
			<a href="tour_packages.php">TOURS</a>
			<a href="">ABOUT US</a>
		</div>

		<button class="btn-2" onclick="window.location.href='car-book.php'">
			Book Now!
		</button>

		<div class="btn menu-btn">
            <i class='bx bx-menu'></i>
        </div>
	</nav>
	<!-- NavBar End-->
	<br><br><br>
	<section class="collection" id="collection">
		<h1>We are the developers!</h1>
		<div class="collection-container">
			<!-- Person #1 -->
			<div class="collection-car-item">
				<img src="i_img/">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>Charles Phyllipe Acosta</h5>
							
						</div>
					</div>
					<h5>BSIT Student - 2nd Year</h5>
				</div>
			</div>
			<!-- Person #2 -->
			<div class="collection-car-item">
				<img src="i_img/">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>Yumi Vargas</h5>
							
						</div>
					</div>
					<h5>BSIT Student - 2nd Year</h5>
				</div>
			</div>
			<!-- Person #3 -->
			<div class="collection-car-item">
				<img src="i_img/">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>Damiel Villanueva</h5>
							
						</div>
					</div>
					<h5>BSIT Student - 2nd Year</h5>
				</div>
			</div>
		</div>
		<br>
		<button class="btn-herocar" onclick="window.location.href='index.php'">
			<p>Back to Home</p>
			<i class='bx bx-left-arrow-alt'></i>
		</button>
	</section>
		
	</section>
	<!-- Info Page  End-->

	<!-- footer section -->
		<footer class="about-footer">
			<div class="footer-copyright">
				<p>
					2025 © GT - 24/7
				</p>
			</div>
		</footer>
	<!-- footer section end-->
</body>
</html>