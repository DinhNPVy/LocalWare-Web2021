<?php include 'inc/header.php' ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="../css/bootstrap.min.css">




    <link rel="stylesheet" href="\">
    <link rel="stylesheet" href="css/styleslider.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owlcarousel.css">
    <link rel="stylesheet" href="css/flags.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/style.min.css">



</head>

<body>

    <div class="row" style="    margin-right: -10px;margin-left: -10px;">
        <div class="col-xs-12 col-sm-3 hidden-xs">
            <aside class="sidebar">
                <ul class="breadcrumb">
                    <li><a href="#"><i class="fa fa-home"></i>Home</a></li>
                    <!-- <li><a href="#">Mobile</a></li>
                    <li><a href="#">Nokia</a></li>
                    <li><a href="#">Lumia</a></li> -->
                </ul>
                <h4>Brands</h4>
                <ul class="customeField clearfix">
                    <li>
                        <input name="brandFilter-radio" id="pcheck6" class="required-check" type="radio">
                        <label for="pcheck6">
                            All brands
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck7" class="required-check" type="radio">
                        <label for="pcheck7">
                            Apple
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck8" class="required-check" type="radio">
                        <label for="pcheck8">
                            Nokia
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck9" class="required-check" type="radio">
                        <label for="pcheck9">
                            Sony
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck10" class="required-check" type="radio">
                        <label for="pcheck10">
                            Google
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck11" class="required-check" type="radio">
                        <label for="pcheck11">
                            Samsung
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck12" class="required-check" type="radio">
                        <label for="pcheck12">
                            HTC
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                    <li>
                        <input name="brandFilter-radio" id="pcheck13" class="required-check" type="radio">
                        <label for="pcheck13">
                            Other
                            <span>
                                <i></i>
                            </span>
                        </label>
                    </li>
                </ul>
                <section class="widget widget-category pb-30">
                    <header>
                        <h3>Categories Tree</h3>
                    </header>
                    <!--Widget header-->
                    <div class="widget-content">
                        <ul>
                            <li class="parent"><a href="#">Camera</a>
                                <ul class="customeField">
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck14" class="required-check" type="radio">
                                        <label for="pcheck14">
                                            DSLR
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck15" class="required-check" type="radio">
                                        <label for="pcheck15">
                                            Mirrorless
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck16" class="required-check" type="radio">
                                        <label for="pcheck16">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                </ul>
                            </li>
                            <li class="parent"><a href="#">Mobile &amp; Tablet</a>
                                <ul class="customeField">
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck17" class="required-check" type="radio">
                                        <label for="pcheck17">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck18" class="required-check" type="radio">
                                        <label for="pcheck18">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck19" class="required-check" type="radio">
                                        <label for="pcheck19">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                </ul>
                            </li>
                            <li class="parent"><a href="#">Televisions</a>
                                <ul class="customeField">
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck20" class="required-check" type="radio">
                                        <label for="pcheck20">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck21" class="required-check" type="radio">
                                        <label for="pcheck21">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck22" class="required-check" type="radio">
                                        <label for="pcheck22">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                </ul>
                            </li>
                            <li class="parent"><a href="#">Laptops</a>
                                <ul class="customeField">
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck23" class="required-check" type="radio">
                                        <label for="pcheck23">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck24" class="required-check" type="radio">
                                        <label for="pcheck24">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                    <li>
                                        <input name="brandFilter-radio" id="pcheck25" class="required-check" type="radio">
                                        <label for="pcheck25">
                                            Compact
                                            <span>
                                                <i></i>
                                            </span>
                                        </label>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!--widget-content-->
                </section>
                <!--widget-->
                <section class="widget widget_tag_cloud pt-30">
                    <header>
                        <h3>Tags</h3>
                    </header>
                    <!--Widget header-->
                    <div class="widget-content">
                        <a href="#">Macbook</a>
                        <a href="#">Iphone</a>
                        <a href="#">Case</a>
                        <a href="#">Popular</a>
                        <a href="#">New Design</a>
                        <a href="#">Trend 2015</a>
                        <a href="#">Android</a>
                        <a href="#">Designer</a>
                        <a href="#">Hieu Phan</a>
                        <a href="#">Hanoi</a>
                        <a href="#">UI</a>
                    </div>
                </section>
                <!--widget-->
            </aside>
        </div>
        <div class="xv-product-slides grid-view products" data-thumbnail="figure .xv-superimage" data-product=".xv-product-unit">
            <div class="row">
                <div class="xv-product-unit">
                    <div class="xv-product shadow-around">
                        <figure>
                            <a href="#"><img class="xv-superimage" src="assets/img/news-img-1.png" alt="" /></a>
                            <figcaption>
                                <ul class="style1" style="font-size: 13.4px;">
                                    <li><a data-qv-tab="#qvt-wishlist" class="btn-cart flytoQuickView btn-square btn-blue" href="#"><i class="fa fa-heart"></i></a></li>
                                    <li><a data-qv-tab="#qvt-compare" class="btn-cart flytoQuickView btn-square btn-blue" href="#"><i class="fa fa-exchange"></i></a></li>
                                    <li><a class="btn-cart btn-square btn-blue" href="#"><i class="fa fa-expand"></i></a></li>
                                </ul>
                            </figcaption>
                        </figure>
                        <div class="xv-product-content">
                            <h3><a href="detail1.html">Smartphone Apple iPhone 5 64GB</a></h3>
                            <p>Aenean sollicitudin, nec sagittis sem lorem quist bibe dum auctor, nisi elit consequat ipsum. Duis sed odio sit amet nibh vulputate cursus a nec.</p>
                            <ul class="color-opt">
                                <li><a href="#">White</a></li>
                                <li><a href="#">Black</a></li>
                                <li><a href="#">Gold</a></li>
                            </ul>
                            <ul class="extra-links">
                                <li><a href="#"><i class="fa fa-heart"></i>Wishlist</a></li>
                                <li><a href="#"><i class="fa fa-exchange"></i>Compare</a></li>
                                <li><a href="#"><i class="fa fa-expand"></i>Expand</a></li>
                            </ul>
                            <!--ul-->
                            <div class="xv-rating stars-5"></div>
                            <span class="xv-price">$250</span>
                            <a data-qv-tab="#qvt-cart" href="#" class="product-buy flytoQuickView">Buy</a>
                        </div>
                        <!--xv-product-content-->
                    </div>
                    <!--xv-product(list-view)-->
                </div>
            </div>
        </div>

</body>

</html>
<?php include 'inc/footer.php' ?>