<?php
include "lib/session.php";
Session::init();
?>

<?php

$filepath = realpath(dirname(__FILE__));
include_once($filepath . '/../lib/database.php');
include_once($filepath . '/../helper/format.php');

spl_autoload_register(function ($className) {
    include_once "classes/" . $className . ".php";
});

$db = new Database();
$fm = new Format();
$ct = new cart();
$us = new user();
$cate = new category();
$product = new products();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.min.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Doppio+One">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="css/styleheader.css">
    <!-- <script type="text/javascript">
        $(document).ready(function($) {
            $('#dc_mega-menu-oảnge').dcMegaMenu({
                rowItems: '4',
                speed: 'fast',
                effect: 'fade'
            });
        });
    </script> -->
</head>



<body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top sticky" id="navbar">
        <div class="container">
            <a class="navbar-brand logo fw-bolder fs-24 text-dark">
                <a href="index.php"><img src="img/Blue Calculator Icon Business Logo.png" alt="" style="height: 100px; border-radius: 100px" /></a>
            </a>
            <div class="collapse navbar-collapse" id=navbar-collapse-1>
                <ul class="nav navbar-nav ms-auto" class="dc_mm-orange" id="dc_mega-menu-orange">
                    <li class="nav-item"><a href="#" class="nav-link sub-menu-item">Home</a></li>

                    <li class="nav-item"><a href="index.php" class="nav-link sub-menu-item">Products</a></li>
                    <li class="nav-item"><a href="products.php" class="nav-link sub-menu-item">Top Brands</a></li>

                    <li class="nav-item"><a href="cart.php" class="nav-link sub-menu-item">Cart</a></li>

                    <li class="nav-item"><a href="contact.php" class="nav-link sub-menu-item">Contact</a></li>
                    <div class="clear"></div>

                </ul>

            </div>
            <div class="navbar-header">
                <div class="search-box">
                    <form action="">
                        <input class="box" type="text" value="Search for Products" onfocus="this.value = ''; " onblur="if (this.value = '' ) {this.value='Search for Products';}">
                        <input class="search" type="submit" value="SEARCH">
                    </form>
                </div>
                <div class="shopping-cart">
                    <div class="cart">
                        <a href="#" title="View my shopping cart" rel="nofollow">
                            <span class="cart-title">Cart: </span>
                            <span class="no-product">
                                <?php
                                $check_cart = $ct->check_cart();
                                if ($check_cart) {
                                    echo Session::get("sum") . " SL: " . Session::get("qty");
                                } else {
                                    echo "Empty";
                                }
                                ?>
                            </span>
                        </a>
                    </div>
                </div>
                <div class="login"><a href="login.php">Login</a></div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>



        </div>
    </nav>
</body>

</html>