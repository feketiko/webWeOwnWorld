<?php
require_once "templates/database.php";
require_once "templates/functions.php";
?>
<?php

$category = $_GET['category_id'];

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

<body class="rrr forheader is-preload">
    <div id="page-wrapper">
        <section id="header">

            <header>
                <h1 id="logo">We Own World</h1>


            </header>

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
        </section>
        <section id="main">
            <div class="container">
            
            <ul class="divided posts">
                <?php $solutions = get_solutions($category);?>
                <?php foreach ($solutions as $solution): ?>
                <li class=" posts">
                <article>
                <header>
                    <h3>
                       <strong> <?=utf8_encode($solution['title'])?> </strong>
                            
                    </h3>
                </header>
                <a href="#" class="image post1"><img src=<?=$solution[ 'img']?> alt="" /></a>
                <p>
                                <?=utf8_encode($solution['description'])?>
                                
                            </p>
               
                            
                </article><li><a href="solve.php?solve_id=<?=$solution['id']?>" class="button icon fa-file">Learn More</a></li></li>
                    <?php endforeach; ?>
</ul>
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

</body>

</html>