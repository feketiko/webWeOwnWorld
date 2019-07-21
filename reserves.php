<?php
require_once "templates/database.php";
require_once "templates/functions.php";
?>


    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">


        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>wOw</title>
        <link rel="stylesheet" href="css/main.css">
    </head>

    <body class="reserves forheader is-preload">
        <div id="page-wrapper">
            <section id="header">

                
                
                <div class="container">
                    <nav id="nav">
                        <ul>
                            <li><a href="index.html" class="icon fa-home"><span>Intro</span></a></li>
                            <li>
                                <a href="problems.html" class="icon fa-exclamation-triangle"><span> Problems</span></a>
                            </li>
                            <li id="dropdown"><a href="solutions.php?category_id=0" class=" icon fa-cog"><span>Solutions</span></a>
                            <ul id="list">
                                <li>
                                    <a href="solutions.php?category_id=1">Less meat</a>
                                </li>
                                <li>
                                    <a href="solutions.php?category_id=2">More walk</a>
                                </li>
                                <li>
                                    <a href="solutions.php?category_id=3">Less use</a>
                                </li>
                            </ul>
                        </li>
                            <li><a href="reserves.php" class="icon fa-leaf"><span>Reserves</span></a></li>
                            <li><a href="#" class="icon fa-shopping-bag"><span>Shop</span></a></li>
                        </ul>
                    </nav>
                    
                </div>
                <header>
                    <h1 id="logo">We Own World</h1>
                    <a href="#main" class="goto-next scrolly"> <strong>Reserves. </strong>Read more </a>
                </header>
                
            </section>
            <section id="main">
                <div class="container">
                    <div id="content">
                        <header>
                            <h2>National Reserves</h2>
                            <p>A nature reserve (also known as natural reserve, bioreserve, natural/nature preserve, or natural/nature conserve) is a protected area of importance for wildlife, flora, fauna or features of geological or other special interest, which is reserved and managed for conservation and to provide special opportunities for study or research. Nature reserves are heavens on Earth and are home to the last specimens of endangered species. And ecotourism can help protect them. </p>
                            <p> <strong> There are 10 nature reserves you should visit at least once in your life </strong>  </p>
                        </header> 
                        <section>
                            <div class="slider" style="height:100%">
                                <div class="slide-list">
                                    <div class="slide-wrap">
                                        <?php $reserves = get_reserves();?>
                                            <?php foreach ($reserves as $reserve): ?>
                                            <ul class="divided slide-item block<?=$reserve['id']?>">
                                                <li>

                                                    <article class="box highlight slide-item-1">
                                                        <header>
                                                            <?=$reserve['title']?>

                                                        </header>
                                                        <a href="#" class="image featured"><img src=<?=$reserve[ 'image']?> alt="" /></a>
                                                        <?=utf8_encode($reserve['description'])?>
                                                            <ul class="actions">
                                                                <li><a href="#" class="button icon fa-file">Learn More</a></li>
                                                            </ul>
                                                    </article>

                                                </li>
                                            </ul>
                                            <?php endforeach; ?>
                                    </div>
                                </div>
                                
                                <div class="navy prev-slide"><h2><</h2></div>
                                <div class="navy next-slide"><h2>></h2></div>
                                <div class="auto play"></div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>

            <section id="footer">
                <div class="container">

                    <header>
                        <h2>Questions or comments? <strong>Contact us:</strong></h2>
                    </header>
                    <section id="contact">
                        <h3> We are waiting for your ideas and opinions. <strong> Save the planet together!</strong></h3>

                        <form method="POST" action="templates/form.php" onSubmit="alert('Thank you for the opinion!Save the planet together :)')">
                            <input name="name" id="f_name" type="text" placeholder="Name" required>
                            <input name="email" id="f_email" type="email" placeholder="Email" required>
                            <textarea name="comment" name="message" cols="30" rows="5" placeholder="Message" required></textarea>
                            <input type="submit" class="button" value="Send Message">

                        </form>

                        <section id="icons">
                            <ul class="icons">
                                <li class="icon fa-home">
                                    47, Lomonosova Str.</br>
                                    Kyiv, Ukraine</br>
                                </li>
                                <li class="icon fa-envelope">
                                    <a href="#">feketiko2.0@gmail.com</a>
                                </li>
                                <li class="icon fa-phone">
                                    +380962920991
                                </li>
                            </ul>
                            <ul class="icons">
                                <li class="icon fa-facebook">
                                    <a href="https://www.facebook.com/diana.fekete.568">diana.fekete.568</a>
                                </li>
                                <li class="icon fa-twitter">
                                    <a href="https://twitter.com/di_fekete">twitter.com/di_fekete</a>
                                </li>
                                <li class="icon fa-instagram">
                                    <a href="https://www.instagram.com/feketiko/">instagram.com/feketiko</a>
                                </li>
                            </ul>
                        </section>
                    </section>
                    <div id="copyright" class="container">
                        <ul class="links">
                            <li id="copy">&copy; All rights reserved.</li>
                            <li>
                                <p> Design: Diana Fekete</p>
                            </li>
                        </ul>
                    </div>
            </section>
            </div>

        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="js\slider.js"></script>
    </body>

    </html>