document.addEventListener("DOMContentLoaded", () => {
    const navbar = document.querySelector("nav");

    window.addEventListener("scroll", () =>
        navbar.classList.toggle("sticky", window.scrollY > 0)
    );

    const menu = document.querySelector(".menu");
    const toggleMenu = () => menu.classList.toggle("active");

    // Ensure these elements exist
    const menuBtn = document.querySelector(".menu-btn");
    const closeBtn = document.querySelector(".close-btn");

    if (menuBtn) {
        menuBtn.addEventListener("click", toggleMenu);
    }

    if (closeBtn) {
        closeBtn.addEventListener("click", toggleMenu);
    }

    document.querySelectorAll(".menu a").forEach((link) => 
        link.addEventListener("click", toggleMenu)
    );
});

//scroll reveal
const sr = ScrollReveal({
	origin: "bottom",
	distance: "40px",
	duration: 800,
	delay: 400,
	easing: "ease-in-out",

});

	sr.reveal(".hero-headlines", { origin: "left" });
	sr.reveal(".hero-page img", { origin: "right" });
	sr.reveal(".about");
	sr.reveal(".about h1", { delay: "400" });
	sr.reveal(".about p", { delay: "500" });
	sr.reveal(".about-info", { delay: "700" });
	sr.reveal(".collection h1");
	sr.reveal(".collection-container", {delay: "500"});
	sr.reveal(".info");
	sr.reveal(".about-us-info", { delay: "400" });

