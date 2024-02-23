<!DOCTYPE jsp>
<jsp lang="en">
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
        }
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
			font-family: var(--fontSans);
			margin: 0;
			padding: 0;
			text-transform: uppercase;
			color: var(--textLight);
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

        .logo h1 a {
            color: var(--textDark) !important;
        }

        nav ul li a:hover {
            color: var(--textDark) !important;
            border-bottom: 2px solid var(--textDark) !important;
        }
        .title {
            text-transform: capitalize;
            font-weight: 800;
            font-size: 90px;
            line-height: 0.1cm;
        }
        @media screen and (max-width: 640px) {
            .title {
                font-weight: 700 !important;
                font-size: 70px !important;
            }
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
            <li><a href="cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a></li>
        </ul>
    </nav>

    <section id="about">
        <center>
            <section class="first">
                <p><span class="title">Frow Stream</span></p>
            </section>
            <section>
                <img style="cursor: pointer;" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQki47VNvfdfLwi2lamHSvazIKsMHDEyDHVow&usqp=CAU">
                <p><span class="aboutFrow">
                    Live on the 30th of May 2024.
                </span></p>
            </section>
        </center>
    </section>

	<img src="https://zdisanto.github.io/test/media/Nova.png" alt="Chatbot" class="chatbot-image">

</body>
</jsp>