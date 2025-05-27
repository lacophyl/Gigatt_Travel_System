<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript" src="i_main.js" defer></script>
	<script src="https://unpkg.com/scrollreveal"></script>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="i_style.css">
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
			<a href="about.php">ABOUT US</a>
		</div>

		<button class="btn-2" onclick="window.location.href='car_book.php'">
			Book Now!
		</button>

		<div class="btn menu-btn">
            <i class='bx bx-menu'></i>
        </div>
	</nav>
	<!-- NavBar End-->

	<!-- Hero section -->
	<div class="hero-page">
		<div class="hero-headlines">
			<h1>
				Explore new horizons.<br>
				<h3>We make <b class="accent">Travel</b> simple. </h3>
			</h1>
			<p>
				Have a look at our exlusive services, your travel needs made easy.
			</p>
			<button class="btn-2 btn-hero" onclick="window.location.href='car-book.php'">Get Started</button>
			<h2>
				Or call:
			</h2>
			<p>
				<i class='bx bx-phone' style='color:#000' ></i> 0911 222 3333
			</p>
			<p>
				<i class='bx bx-phone' style='color:#000' ></i> 0911 222 3333
			</p>
		</div>
		<img src="i_img/hero_img.png" class="hero-page-img" alt="img">
	</div>
	<!-- Hero section End -->

	<!-- Offers Section -->
	<section class="about" id="about">
		<div class="about-container">
			<h1>
				Our Services
			</h1>
			<p class="about-subline">
				Explore with ease with Gigatt Travel! From premium rides to all-in-one tour packages, we’ve got you covered. Seamless bookings, top service, and unforgettable adventures—your journey starts here!
			</p>

			<div class="about-info">
				<div class="about-info-item">
					<hr class="about-hr" />
					<i class='bx bxs-car'></i>
					<h5>Car Rental</h5>
					<p>
						Ease your worries of going anywhere with fast, easy and affordable car rentals!
					</p>
				</div>
				<div class="about-info-item">
					<hr class="about-hr" />
					<i class='bx bx-package'></i>
					<h5>Tour Packages</h5>
					<p>
						Upgrade your adventure with our epic tour packages! More fun, one for all!
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- Offers Section End-->

	<!-- Cars Section -->
	<section class="collection" id="collection-car">
		<h1>Our Car Collections</h1>
		<div class="collection-container">
			<!-- Car #1 -->
			<div class="collection-car-item">
				<img src="i_img/car1.png">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>$80.00</h5>
							<h6>/Day</h6>
						</div>
						<div class="car-capacity">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>4</h5>
						</div>
					</div>
					<h2>Car-Name-1</h2>
					<button class="btn-2 btn-car">
						<p>Book Now</p>
						<i class='bx bx-phone' style='color:#fff' ></i>
					</button>
				</div>
			</div>
			<!-- Car #2 -->
			<div class="collection-car-item">
				<img src="i_img/car2.png">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>$60.00</h5>
							<h6>/Day</h6>
						</div>
						<div class="car-capacity">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>4</h5>
						</div>
					</div>
					<h2>Car-Name-2</h2>
					<button class="btn-2 btn-car">
						<p>Book Now</p>
						<i class='bx bx-phone' style='color:#fff' ></i>
					</button>
				</div>
			</div>
			<!-- Car #3 -->
			<div class="collection-car-item">
				<img src="i_img/car3.png">
				<div class="car-info-container">
					<div class="car-info">
						<div class="car-price">
							<h5>$70.00</h5>
							<h6>/Day</h6>
						</div>
						<div class="car-capacity">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>6</h5>
						</div>
					</div>
					<h2>Car-Name-3</h2>
					<button class="btn-2 btn-car">
						<p>Book Now</p>
						<i class='bx bx-phone' style='color:#fff' ></i>
					</button>
				</div>
			</div>
		</div>
		<button class="btn-herocar" onclick="window.location.href='vehicles.php'">
			<p>See All Cars</p>
			<i class='bx bx-right-arrow-alt'></i>
		</button>
	</section>
<!-- Cars Section End -->

<!-- Tour Section -->
	<section class="collection" id="collection">
		<h1>Our Tour Packages</h1>
		<div class="collection-container">
			<!-- Tour #1 -->
			<div class="collection-tour-item">
				<img src="i_img/canigao-island.png">
				<div class="tour-info-container">
					<div class="tour-info">
						<div class="tour-price">
							<h5>$40.00</h5>
							<h6>/Person</h6>
						</div>
						<div class="tour-pax">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>10</h5>
						</div>
					</div>
					<h2>Canigao Island</h2>
					<button class="btn-2 btn-tour">
						<p>View More</p>
						<i class='bx bx-chevron-right' style='color:#ffffff' ></i>
					</button>
				</div>
			</div>
			<!-- Tour #2 -->
			<div class="collection-tour-item">
				<img src="i_img/ulot-river.png">
				<div class="tour-info-container">
					<div class="tour-info">
						<div class="tour-price">
							<h5>$55.00</h5>
							<h6>/Person</h6>
						</div>
						<div class="tour-pax">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>8</h5>
						</div>
					</div>
					<h2>Ulot River Samar</h2>
					<button class="btn-2 btn-tour">
						<p>View More</p>
						<i class='bx bx-chevron-right' style='color:#ffffff' ></i>
					</button>
				</div>
			</div>
			<!-- Tour #3 -->
			<div class="collection-tour-item">
				<img src="i_img/siargao-island.png">
				<div class="tour-info-container">
					<div class="tour-info">
						<div class="tour-price">
							<h5>$70.00</h5>
							<h6>/Day</h6>
						</div>
						<div class="tour-pax">
							<i class='bx bxs-user' style='color:#000' ></i>
							<h5>6</h5>
						</div>
					</div>
					<h2>Siargao Island</h2>
					<button class="btn-2 btn-tour">
						<p>View More</p>
						<i class='bx bx-chevron-right' style='color:#ffffff' ></i>
					</button>
				</div>
			</div>
		</div>
		<button class="btn-herotour" onclick="window.location.href='tour_packages.php'">
			<p>See All Tour Packages</p>
			<i class='bx bx-right-arrow-alt'></i>
		</button>
	</section>
	<!-- Tour Section End -->

	<!-- footer section -->
	<footer class="index-footer">
		<div class="footer-bottom">
			<div class="company">
				<img src="i_img/Logo.png">
				<a href="index.php" class="footer-brand">
					<h1><b class="accent">Gig</b>att Travel</h1>
				</a>
				<p>
					We offer the best prices for car rentals! <br>
					Need a travel guide? We got you covered with our tour packages.
					<br>
					<br>
					Gigatt Travel, your gateway to global adventures!
				</p>
			</div>
			<div class="location">
				<div class="loc">
					<i class='bx bx-current-location' style='color:#000' ></i>
						Brgy. 110 Utap, Soledad St. Tacloban City, Leyte
					</p>
				</div>
				<p>
				<div class="maps">
					<a href="https://maps.app.goo.gl/1YHCRZRy6byfY6nf6"><i class='bx bx-map-pin'></i>Google Maps</a>
				</div>
			</div>
			<div class="contacts">
				<p>
					<i class='bx bx-phone' style='color:#000' ></i> 0911 222 3333
				</p>
				<p>
					<i class='bx bx-phone' style='color:#000' ></i> 0911 222 3333
				</p>
			</div>
			<div class="socials">
				<a href="#" class="social-item">
					<i class='bx bxl-facebook-circle' style='color:#000' ></i>
				</a>
				<a href="#" class="social-item">
					<i class='bx bxl-instagram' style='color:#000' ></i>
				</a>
			</div>
		</div>
		<div class="footer-copyright">
			<p>
				2025 © GT - 24/7
			</p>
		</div>
	</footer>
	<!-- footer section end-->
</body>
</html>