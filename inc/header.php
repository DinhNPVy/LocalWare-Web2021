<?php
include "lib/session.php";
Session::init();

?>

<?php
include 'lib/database.php';
include 'helper/format.php';

spl_autoload_register(function ($class) {
    include_once "classes/" . $class . ".php";
});

$db = new Database();
$fm = new Format();
$ct = new cart();
$us = new user();
$cate = new category();
$cust = new customer();
$product = new products();
$brand = new brand();
?>
<!DOCTYPE html>
<html lang="en">



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--CSS-->
    <title>LocalWare</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.min.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Doppio+One">
    <link rel="stylesheet" href="css/pe-icon-7-stroke.css">
    <link rel="stylesheet" href="css/styleheader.css">
    <link rel="shortcut icon" href="img/logomini.png" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
    <script src="js/jquery.js"></script>
    <script src="js/setup.js"></script>
    <!-- <script type="text/javascript">
        $(document).ready(function() {
            setupLeftMenu();
            setSidebarHeight();
        });
    </script> -->
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top sticky" id="navbar">
        <div class="container">

            <a href="index.php"><img src="img/Blue Calculator Icon Business Logo.png" alt="" style="width: 42%;border-radius: 50%;" /></a>

            <div class="col-lg-8 mb-2" id=navbar-collapse-1 style="padding: 10px;margin-right: 4%;">
                <ul class="nav navbar-nav ms-auto" class="dc_mm-orange" id="dc_mega-menu-orange">
                    <li class="nav-item"><a href="index.php" class="nav-link sub-menu-item">Home</a></li>

                    <!-- <li class="nav-item"><a href="productbycat.php" class="nav-link sub-menu-item">Products</a></li> -->

                    <?php
                    $check_cart = $ct->check_cart();
                    if ($check_cart == true) {
                        echo '<li class="nav-item"><a href="cart.php" class="nav-link sub-menu-item">Cart</a></li>';
                    } else {
                        echo '';
                    }
                    ?>
                    <?php
                    $customer_id = Session::get("customer_id");
                    $check_order = $ct->check_order($customer_id);
                    if ($check_order == true) {
                        echo '<li class="nav-item"><a href="orderdetail.php" class="nav-link sub-menu-item">Ordered</a></li>';
                    } else {
                        echo '';
                    }
                    ?>

                    <?php
                    $login_check = Session::get('customer_signin');
                    if ($login_check) {
                        echo '<li class="nav-item"><a href="compareproduct.php" class="nav-link sub-menu-item">Compare</a></li>';
                    }
                    ?>
                    <?php
                    $login_check = Session::get('customer_signin');
                    if ($login_check) {
                        echo '<li class="nav-item"><a href="wishlist.php" class="nav-link sub-menu-item">Wishlist</a></li>';
                    }
                    ?>


                    <?php
                    $login_check = Session::get('customer_signin');
                    if ($login_check == false) {
                        echo '';
                    } else {
                        echo '<li class="nav-item"><a href="profile.php" class="nav-link sub-menu-item">Profile</a></li>';
                    }
                    ?>

                    <div class="clear"></div>

                </ul>

            </div>
            <div class="col-lg-6 mb-2" style="padding-right:8%;">
                <div class="search-box">
                    <form action="search.php" method="post">
                        <div>
                            <input class="col-lg-4 mb-2 form-control input-sm header-search-input jump-to-field js-jump-to-field js-site-search-focus" type="text" name="value" placeholder="Search Products..." value="Search Products" onfocus="this.value = ''; " onblur="if (this.value = '' ) {this.value='Search for Products';}">
                        </div>
                        <!-- <input class="col-lg-6 mb-2" type="text" value="Search Products" onfocus="this.value = ''; " onblur="if (this.value = '' ) {this.value='Search for Products';}"> -->
                        <div style=" padding-left: 105%; margin-top: -49px; display: flex; float: left;">
                            <a href="search.php" type="submit" name="search_product"><i class="fa fa-search"> </i></a>

                            <!-- </div> -->

                            <!-- <div class="col-lg-4 mb-2" style="display: flex; padding:10px"> -->
                            <?php
                            if (isset($_GET['customer_id'])) {
                                $cutomer_id = $_GET['customer_id'];
                                $delCart = $ct->del_all_dataCart();
                                $delCompare = $ct->del_all_dataCompare($customer_id);
                                Session::destroy();
                            }
                            ?>
                            <?php
                            $login_check = Session::get('customer_signin');
                            if ($login_check == false) {
                                echo '<div class="col-lg-12 mb-2"><a href="login.php" class="btn btn-dark" value="Sign in">Sign in</a></div>';
                            } else {
                                echo '<div class="col-lg-12 mb-2"><a href="?customer_id=' . Session::get("customer_id") . ' " class = "btn btn-dark">Sign out</a></div>';
                            }
                            ?>

                            <!-- <div class="col-lg-12 mb-2"><a href="signup.php" class="btn btn-primary" value="Sign up">Sign up</a></div> -->
                        </div>
                    </form>
                </div>
                <div class="col-lg-12 mb-2">
                    <div class="cart">
                        <a href="#" title="View my shopping cart" rel="nofollow">
                            <span class="cart-title"><i class="fas fa-money-check-alt" style="color: green;">: </i></span>
                            <span class="no-product">
                                <?php
                                $check_cart = $ct->check_cart();
                                if ($check_cart) {
                                    echo $fm->format_currency(Session::get("sum")) . " SL: " . Session::get("qty");
                                } else {
                                    echo "Empty";
                                }
                                ?>
                            </span>
                        </a>
                    </div>
                </div>

            </div>
            <div class="clear"></div>



        </div>
    </nav>
    <!-- MENU -->
    <style>
        ul.menu_nav {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: rgb(101, 211, 236);
        }

        li.menu_nav_item {
            float: left;
        }

        li.menu_nav_item a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li.menu_nav_item a:hover {
            background-color: rgb(32, 200, 238);
        }
    </style>
    <ul class="menu_nav">
        <?php
        $getall_category = $cate->show_category_fontend();
        if ($getall_category) {
            while ($result_allcat = $getall_category->fetch_assoc()) {

        ?>

                <li btn-color-opt class="menu_nav_item">
                    <a href="productbycat.php?catid=<?php echo $result_allcat['catId'] ?>"><?php echo $result_allcat['catName'] ?></a>
                </li>


        <?php
            }
        }

        ?>
    </ul>

    <script src="../js/thatim.js"></script>

</body>

</html>