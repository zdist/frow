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
                background-color: var(--backgroundColorLight);
                text-align: center;
                font-family: var(--fontSans);
                margin: 0;
                padding: 0;
                text-transform: uppercase;
            }
            .logo h1 a {
                color: var(--textDark) !important;
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
            nav ul li a:hover {
                color: var(--textDark) !important;
                border-bottom: 2px solid var(--textDark) !important;
            }

            .small, .medium, .large {
                letter-spacing: 2px;
                line-height: normal;
                text-align: center;
            }
            .small {
                font-size: 14px;
            }
            .medium {
                font-size: 18px;
            }
            .large {
                font-size: 50px;
            }

            .collection {
                display: grid;
                grid-template-columns: 1fr 1fr 1fr;
                grid-column-gap: 10px;
                grid-row-gap: 10px;
            }

            .img {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 50%;
                max-height: 300px;
            }
            .index {
                max-height: 240px;
            }
            .background {
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-template-rows: 1fr;
                grid-area: 1 / 1 / 2 / 3;
                border-radius: 10px;
                padding: 20px;
                overflow: hidden;
            }
            .left {
                grid-area: 1 / 1 / 2 / 2;
                line-height: 10px;
            }
            .right { 
                grid-area: 1 / 2 / 2 / 3;
                display: grid;
            }
            button {
                background-color: var(--textDark);
                color: var(--backgroundColorLight);
                border: none;
                margin: 35px 20px;
                font-size: 16px;
                /* Button Transition */
                transition-duration: 0.4s;
                cursor: pointer;
                border-radius: 10px;
            }
            button:hover {
                background-color: var(--backgroundColorLight);
                color: var(--textDark);
            }
            button > a {
                background-color: var(--textDark);
                color: var(--backgroundColorLight);
                border: none;
                margin: 35px 20px;
                font-size: 16px;
                text-decoration: none;
            }
            button > a:hover, .disabled {
                background-color: var(--textDark) !important;
                color: var(--backgroundColorLight) !important;
            }
            p {
                text-transform: none;
                margin: 0 10% 0 10%;
                text-align: justify;
            }
            @media screen and (max-width: 900px) {
                #navbar {
                    display: block;
                }
                .split {
                    line-height: 7em;
                }
                .wrong { 
                    grid-area: 1 / 2 / 2 / 3;
                    display: grid;
                    float: right;
                    flex-direction: row-reverse;
                }
                .collection {
                    grid-template-columns: 1fr;
                }
                .img {
                    width: 30%;
                }
            }
            .chatbot-image {
                position: fixed;
                max-height: 90px;
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

    <section>
        <h1 class="large">Designers</h1>

        <div class="collection">
            <div class="card">
                <img class="img index" src="https://i8.amplience.net/i/naras/kanye-west_MI0005472981-MN0000361014" alt="Clothing Item 1">
                <div>
                    <h3 class="medium">Kanye West<br></h3>
                    <strong class="small"></strong>
                    <p>Kanye West, a prominent figure in the world of fashion, is renowned for his innovative and boundary-pushing designs. As a designer, he's known for blending streetwear elements with high-fashion aesthetics, creating a unique and influential style. With his fashion label Yeezy, West has made significant contributions to the industry, often incorporating bold silhouettes, neutral color palettes, and futuristic elements into his collections. His work has garnered attention and praise for its creativity, pushing the boundaries of traditional fashion and challenging the status quo.</p>
                </div>
                <button class="lines disabled" style="cursor: pointer;"><a href="yeezy">View Lines</a></button>
            </div> 
            <div class="card">
                <img class="img index" src="https://www.prada.com/content/dam/pradabkg_products/S/SPR/SPR17W/E1ABF05S0/SPR17W_E1AB_F05S0_C_049_MDL.jpg" alt="Clothing Item 1">
                <div>
                    <h3 class="medium">Prada<br></h3>
                    <strong class="small"></strong>
                    <p>Prada, a leading luxury fashion house founded by Mario Prada in 1913, is celebrated for its timeless elegance and avant-garde approach to design. Renowned for its innovative use of materials, intricate craftsmanship, and minimalist aesthetic, Prada has established itself as a symbol of sophistication and refined luxury. With a focus on clean lines, bold shapes, and unexpected details, Prada continually pushes the boundaries of fashion, creating iconic pieces that effortlessly blend modernity with tradition. From its iconic nylon accessories to its ready-to-wear collections, Prada remains at the forefront of the industry, setting trends and shaping the future of fashion.</p>
                </div>
                <button class="lines disabled" style="cursor: pointer;"><a href="prada">View Lines</a></button>
            </div> 
            <div class="card">
                <img class="img index" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyzYayT5nyqU2De_hiR7cTC5GMwe5LdwKRttDcotUh2OGJ3RFohANSkm2SivlB4ip1yEI&usqp=CAU" alt="Clothing Item 1">
                <div>
                    <h3 class="medium">Yves Saint Laurent<br></h3>
                    <strong class="small"></strong>
                    <p>Yves Saint Laurent, a revolutionary figure in the world of fashion, is renowned for his groundbreaking designs that redefined the concept of modern elegance. With a career spanning over five decades, Saint Laurent's innovative approach to fashion challenged traditional norms and established him as one of the most influential designers of the 20th century. From introducing the iconic tuxedo suit for women to popularizing the concept of ready-to-wear clothing, Saint Laurent's creations exuded sophistication, confidence, and a sense of rebellion. His pioneering spirit and visionary aesthetic continue to inspire generations of designers, cementing his legacy as a true icon of haute couture.</p>
                </div>
                <button class="lines disabled" style="cursor: not-allowed;">SOLD OUT</button>
            </div> 
        </div>
    </section>

    <img src="https://zdisanto.github.io/test/media/Nova2.png" alt="Chatbot" class="chatbot-image">

</body>
</html>