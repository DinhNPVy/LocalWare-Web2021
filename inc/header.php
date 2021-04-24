<head>
    <!--CSS-->
    <link rel="stylesheet" href="./../css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="./../css/materialdesignicons.min.css">
    <link rel="stylesheet" type="text/css" href="./../css/style.min.css">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Doppio+One">

    <script type="text/javascript">
        $(document).ready(function($) {
            $('#dc_mega-menu-oảnge').dcMegaMenu({
                rowItems: '4',
                speed: 'fast',
                effect: 'fade'
            });
        });
    </script>
</head>

<body>
    <div class="wrap">
        <div class="header-top">
            <a href="index.php"><img src="./../img/Blue Calculator Icon Business Logo.png" alt="" style="height: 100px; border-radius: 100px" /></a>
        </div>
        <div class="header-top-right">
            <div class="search-box">
                <form action="">
                    <input type="text" value="Search for Products" onfocus="this.value = ''; " onblur="if (this.value = '' ) {this.value='Search for Products';}">
                    <input type="submit" value="SEARCH">
                </form>
            </div>
            <div class="shopping-cart">
                <div class="cart">
                    <a href="#" title="View my shopping cart" rel="nofollow">
                        <span class="cart-title">Cart</span>
                        <span class="no-product">(empty)</span>
                    </a>
                </div>
            </div>
            <div class="login"><a href="login.php">Login</a></div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="menu">
        <ul class="nav navbar-nav ms-auto" class="dc_mm-orange" id="dc_mega-menu-orange">
            <li class="nav-item"><a href="#" class="nav-link sub-menu-item">Home</a></li>

            <li class="nav-item"><a href="index.php" class="nav-link sub-menu-item">Products</a></li>
            <li class="nav-item"><a href="products.php" class="nav-link sub-menu-item">Top Brands</a></li>

            <li class="nav-item"><a href="topbrands.php" class="nav-link sub-menu-item">Cart</a></li>

            <li class="nav-item"><a href="contact.php" class="nav-link sub-menu-item">Contact</a></li>
            <div class="clear"></div>

        </ul>
    </div>
</body>