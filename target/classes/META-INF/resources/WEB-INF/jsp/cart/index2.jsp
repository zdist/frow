<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>frow.</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Lora:ital,wght@0,400..700;1,400..700&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap');
		:root {
			--backgroundColorLight: #f1efe7;
			--textLight: #fefef2;
			--textDark: #1a1a1a;
			--gray: #dddddd;
			--footer: #565656;
			--fontSans: Montserrat;
			--fontSansSerif: Lora;
		}

		body {
            color: var(--textDark) !important;
            background-color: var(--backgroundColorLight) !important;
            font-family: var(--fontSans);
            margin: 0;
            padding: 0;
            text-transform: uppercase;
        }

        .logo h1 a {
            color: var(--textDark) !important;
        }

        nav ul li a {
            color: var(--textDark) !important;
        }
        nav ul li a:hover {
            color: var(--textDark) !important;
            border-bottom: 2px solid var(--textDark) !important;
        }

		body * {
			box-sizing: border-box;
		}

		nav {
			margin-top: -20px;
			display: flex;
			justify-content: space-between;
			align-items: center;
			padding: 10px 20px;
		}
        #lowercase {
            text-transform: none !important;
        }

		.logo {
			text-transform: lowercase;
			font-family: var(--fontSans);
			font-style: italic;
			font-weight: 800;
			font-size: larger;
		}
		.closer {
			letter-spacing: -0.08cm;
		}
		.farther {
			letter-spacing: -0.05cm;
		}

		.logo h1 a {
			margin: 0;
			color: var(--textLight);
			text-decoration: none;
		}

		nav ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
		}
		nav ul li {
			display: inline-block;
			margin-right: 20px;
		}
		nav ul li:last-child {
			margin-right: 0;
		}
		nav ul li a {
			display: inline-block;
			color: var(--text);
			text-decoration: none;
			padding: 5px 0;
			border-bottom: 6px solid transparent;
			transition: all 0.5s ease;
		}
		nav ul li a:hover {
			color: var(--textLight);
			border-bottom: 2px solid var(--textLight);
		}

		@media screen and (max-width: 768px) {
			nav {
				display: flex !important;
				flex-direction: column !important; 
				align-items: center !important; 
			}
			
			.logo {
				margin-top: 20px !important; 
			}
		}
		@media screen and (max-width: 640px) {
			nav > ul {
				margin-left: 15%;
			}
		}

		#dates {
			padding-top: 20%;
			text-align: center;
			color: var(--textLight);
			font-size: 24px;
		}
		#dates p {
			font-family: var(--fontSansSerif);
			font-size: 16px;
		}

		section {
			padding: 20px;
		}

		footer {
			background-color: var(--footer);
			color: var(--textLight);
			text-align: center;
			padding: 10px 0;
		}

		.disabled {
			cursor: not-allowed;
		}
        .chatbot-image {
			position: fixed;
			max-height: 100px;
			bottom: 20px; 
			right: 20px; 
			z-index: 999; 
		}
		@media screen and (max-width: 850px) {
			.chatbot-image {
				display: none;
			}
		}
	</style>
</head>
<body>

    <nav>
        <div class="logo">
            <h1><a href="../"><span class="closer">F</span><span class="farther">row.</span></a></h1>
        </div>
        <ul>
            <li><a href="about">About</a></li>
            <li><a href="schedule">Schedule</a></li>
            <li><a href="designers">Designers</a></li>
            <li><a href="gallery">Gallery</a></li>
            <li><a href="watch-live">Watch live</a></li>
            <li><a href="sign-in">Sign in</a></li>
        </ul>
    </nav>

    <section id="form_container">
        <div id="from_header_container">
            <h2 id=""form_header>Sign In</h2>
        </div>

        <div id="form_content_container">
            <div id="form_content_inner_container">
                <input type="text" id="name" placeholder="Full Name"><br>
                <input type="text" id="companyName" placeholder="Company Name"><br>
                <input type="email" id="email" placeholder="Company Email"><br>

                <input type="number" id="number" placeholder="Phone Number"><br>
                <input type="text" id="website" placeholder="Company Website"><br>
                <input type="text" id="location" placeholder="Business Location (City, State)"><br>
                <input type="text" id="social" placeholder="Company Social Media"><br>

                <input type="password" id="password" placeholder="Password"><br>

                <input type="checkbox" id="agree" name="agree" value="Agree">
                <label for="agree" id="lowercase">Agree to <a href="#">FROW's terms and conditions.</a></label><br>
                
                <div id="button_container">
                    <button id="signUpButton" onclick="signUp()">Register</button>
                    <button id="signInButton" onclick="signIn()">Login</button>
                </div>
            </div>
        </div>
    </section>
</body>
<script type="module">
    // Import the functions you need from the SDKs you need
    import { initializeApp } from "https://www.gstatic.com/firebasejs/10.8.0/firebase-app.js";
    import { 
        getAuth, 
        createUserWithEmailAndPassword, 
        signInWithEmailAndPassword, 
        onAuthStateChanged, 
        signOut } from "https://www.gstatic.com/firebasejs/10.8.0/firebase-auth.js";
    import { getDatabase  } from "https://www.gstatic.com/firebasejs/10.8.0/firebase-database.js";
    // TODO: Add SDKs for Firebase products that you want to use
    // https://firebase.google.com/docs/web/setup#available-libraries

    // Your web app's Firebase configuration
    const firebaseConfig = {
        apiKey: "AIzaSyB0Oqlva-vHrVfKI2CkImQ2fb3SD8sFxXw",
        authDomain: "frowfashion.firebaseapp.com",
        projectId: "frowfashion",
        storageBucket: "frowfashion.appspot.com",
        messagingSenderId: "297443467317",
        appId: "1:297443467317:web:8152d93d81cb312a06517c"
    };

    // Initialize Firebase
    const app = initializeApp(firebaseConfig);
    // Initialize Variables
    const auth = getAuth(app);
    const database = getDatabase(app);

    // Set up Register Function
    function signUp() {
        // Get Input Fields
        name = document.getElementById('name').value;
        companyName = document.getElementById('companyName').value;
        email = document.getElementById('email').value;
        number = document.getElementById('number').value;
        website = document.getElementById('website').value;
        location = document.getElementById('location').value;
        social = document.getElementById('social').value;
        password = document.getElementById('password').value;
        agree = document.getElementById('agree').value;

        // Validation
        if (validate_email(email) == false || validate_password(password) == false) {
            alert('Your email or password is invalid.');
            return;
        }
        if (validate_field(name) == false || validate_field(companyName) == false || validate_field(number) == false || validate_field(website) == false || validate_field(location) == false || validate_field(social) == false || validate_field(agree) == false) {
            alert('One or more fields are invalid.');
        }

        createUserWithEmailAndPassword(auth, email, password).then(function() {
            var user = auth.currentUser;

            // Adding User to Firebase Database
            var database_ref = database.ref();

            // Create User Data:
            var user_data = {
                name : name,
                companyName : companyName,
                email : email,
                number : number,
                website : website,
                location : location,
                social : social,
                password : password,
                last_login : Date.now()
            }
            console.log(user_data);

            database_ref.child('users/' + user.uid).set(user_data);
            alert('Your account has been made.');

        }).catch(function(error) {
            // Firebase Errors
            var error_code = error.code;
            var error_message = error.message;

            console.log(error_code + " " + error_message);
        });
    }

    function test() {
        console.log("Test function called successfully!");
    }

    function signIn() {
        email = document.getElementById('email').value;
        password = document.getElementById('password').value;

        if (validate_email(email) == false || validate_password(password) == false) {
            alert('Your email or password is invalid.');
            return;
        }

        signInWithEmailAndPassword(auth, email, password).then(function() {
            var user = auth.currentUser;
            var database_ref = database.ref();

            var user_data = {
                last_login : Date.now()
            }

            database_ref.child('users/' + user.uid).update(user_data);
            alert('Welcome Back!');


        }).catch(function(error) {
            var error_code = error.code;
            var error_message = error.message;

            console.log(error_code + " " + error_message);
        });
    }

    function validate_email(email) {
        // Future implementation, if company email = true, good, if false, bad
        expression = /^[^@]+@\w+(\.\w+)+\w$/;
        if(expression.test(email) == true) {
            return true;
        } else {
            return false;
        }
    }
    function validate_number(number) {
        expression = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/;
        if(expression.test(number) == true) {
            return true;
        } else {
            return false;
        }
    }
    function validate_password(password) {
        if (password < 6) {
            return false;
        } else {
            return true;
        }
    }
    function validate_field(field) {
        if(field == null) {
            return false;
        } 
        if(field.length <= 0) {
            return false;
        } else {
            return true;
        }
    }  
    signUpButton.addEventListener('click', signUp);
    signInButton.addEventListener('click', signIn);
</script>
</html>