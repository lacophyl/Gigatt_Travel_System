function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    sidebar.classList.toggle('show'); // Add a class to control visibility
    const button = document.querySelector('.admin_header button');
}

function logBtn(){
	let username = document.getElementById('username');
	let password = document.getElementById('password');
	let loginbutton = document.getElementById('login-button');

	if (username.value == ""){
		alert("Please enter username");
	} else if (password.value == ""){
		alert("Please enter password");
	} else {
		let formdata = new FormData();
		formdata.append("usn",username.value);
		formdata.append("pw",password.value);
		formdata.append("loBtn",loginbutton.value);

		console.log("Username: " + username.value);
        console.log("Password: " + password.value);

		fetch('config.php',{
			method: 'POST',
			body: formdata
		})
		.then(response => response.text())
		.then(data=>{
				if (data=="1") {
					window.location.href = "dashboard.php";
				} else {
					alert(data);
				}
		})
		.catch(error=>alert("Error: "+error.message))
	}
	return false;
}

function updBtn(){
	let username = document.getElementById('username');
	let pass = document.getElementById('password');
	let pass2 = document.getElementById('password2');
	let updatebutton = document.getElementById('update-button');

	if(username.value ===""){
		alert("Username should not be empty!");
	} else if (pass.value !== pass2.value){
		alert("Password does not match!");
	} else {
		let formdata = new FormData();

		formdata.append("usn",username.value);
		formdata.append("pw",pass.value);
		formdata.append("upBtn",updatebutton.value);

		fetch('config.php',{
			method: 'POST',
			body: formdata
		})
		.then(response => response.text())
		.then(data=>{
			alert(data);
			pass.value = "";
			pass2.value = "";	
		})
		.catch(error=>alert("Error: "+error.message))
	}
	return false;
}

document.addEventListener("DOMContentLoaded", function () {
    let sidebar = document.getElementById("sidebar");
    let mainContent = document.querySelector(".main-content"); 

    if (sidebar) {
        sidebar.addEventListener("click", function (event) {
            let targetLink = event.target.closest("a");
            if (targetLink && targetLink.href.includes("sidebar=")) {
                event.preventDefault();

                let urlParams = new URLSearchParams(targetLink.href.split("?")[1]);
                let page = urlParams.get("sidebar");

                if (page) {
                    console.log("Loading page:", page);

                    fetch(page + ".php")
                        .then(response => response.text())
                        .then(data => {
                            mainContent.innerHTML = data;
                            console.log("Page loaded:", page);

                            if (page === "brand") {
                                displayTable();
                            }
                            if (page === "admins") {
                                displayTableAdmin();
                            }
                            if (page === "drivers") {
                                displayTableDriver();
                            }
                            if (page === "log_history") {
                                displayTableLog();
                            } 
                            if (page === "tour_guides") {
                                displayTableTourGuide();
                            } 
                        })
                        .catch(error => console.error("Error loading page:", error));
                }
            }
        });
    }
});


function displayTable() {
    let displayList = document.getElementById('display-list-table');

    fetch('brandlistdisplay.php')
    .then(response => response.text())
    .then(data => {
        displayList.innerHTML = data;
    })
    .catch(error=> alert("Error: "+error.message))

    return false;
}

function loadAddBrand() {
    fetch('addBrand.php')
    .then(response => response.text())
    .then(data => {
        document.querySelector('.main').innerHTML = data;
    })
    .catch(error => alert("Error: "+error.message))
}

function addBrandBtn() {
	let brandname = document.getElementById('brand-name');
	let brandimage = document.getElementById('brand-image');
	let addbutton = document.getElementById('add-brand-button');
    let file = brandimage.files[0];

    const allowedExtensions = ['jpg', 'jpeg', 'png'];
    const maxFileSize = 10 * 1024 * 1024; 
    const fileExtension = file.name.split('.').pop().toLowerCase();

    if (!file) {
        alert("No file selected.");
    } else if (file.size > maxFileSize) {
        alert("File size exceeds the maximum limit of 10 MB.");
    } else if (!allowedExtensions.includes(fileExtension)) {
        alert("Invalid file type. Only JPG, JPEG, and PNG files are allowed.");
    } else {
	    let formdata = new FormData();
	    formdata.append('bName', brandname.value);
	    formdata.append('bImage', file);
	    formdata.append('adBtn', addbutton.value);
	    fetch('config.php', { 
	        method: 'POST',
	        body: formdata
	    })
	    .then(response => response.text())
	    .then(data => {
	        alert(data);
	        var xhr = new XMLHttpRequest();
		    xhr.open("GET", "brand.php", true);
		    xhr.onload = function() {
		        if (xhr.status === 200) {
		            document.querySelector(".main").innerHTML = xhr.responseText; 
		            displayTable();
		        } else {
		            console.error("Error loading brand.php: " + xhr.status);
		        }
		    };
		    xhr.send(); 
	    })
	    .catch(error => {
	        ("Error: "+error.message)
	    });
    }
	return false;
}

function delBrandBtn(name, imageName) {
    if (!confirm("Delete file?")) {
        return false; 
    }
	let deleteimage = document.getElementById('delete-image'); 
    let formdata = new FormData();
    formdata.append('brandName', name); 
    formdata.append('imageName', imageName);
    formdata.append('delBImgBtn', deleteimage.value); 

    fetch('config.php', {
        method: 'POST',
        body: formdata
    })
    .then(response => response.text()) 
    .then(data => {
        alert(data); 
        displayTable(); 
    })
    .catch(error => alert("Error: " + error.message)); 

    return false;
}

function displayTableAdmin() {
    let displayList = document.getElementById('display-list-table');

    fetch('adminlistdisplay.php')
    .then(response => response.text())
    .then(data => {
        displayList.innerHTML = data;
    })
    .catch(error=> alert("Error: "+error.message))

    return false;
}
function displayTableLog() {
    let displayList = document.getElementById('display-list-table');

    fetch('loghistorylist.php')
    .then(response => response.text())
    .then(data => {
        displayList.innerHTML = data;
    })
    .catch(error=> alert("Error: "+error.message))

    return false;
}
function displayTableDriver() {
    let displayList = document.getElementById('display-list-table');

    fetch('driverlist.php')
    .then(response => response.text())
    .then(data => {
        displayList.innerHTML = data;
    })
    .catch(error=> alert("Error: "+error.message))

    return false;
}
function displayTableTourGuide() {
    let displayList = document.getElementById('display-list-table');

    fetch('tourguidelist.php')
    .then(response => response.text())
    .then(data => {
        displayList.innerHTML = data;
    })
    .catch(error=> alert("Error: "+error.message))

    return false;
}