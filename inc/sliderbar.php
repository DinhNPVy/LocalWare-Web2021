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
    <div class="container">
    <div class="row" style="    margin-right: -10px;margin-left: -10px;">
        <div class="xv-product-slides grid-view products" data-thumbnail="figure .xv-superimage" data-product=".xv-product-unit">
            <div class="row">
                <?php
                $productNew = $product->getProductNew();
                if ($productNew) {
                    while ($result_new = $productNew->fetch_assoc()) {
                ?>
                        <div class="col-md-3">
                            <div class="xv-product-unit">
                            <div class="xv-product ">
                                <figure>
                                    <a href="#"><img class="xv-superimage" src="admin/uploads/<?php echo $result_new["image"] ?>" alt=""  /></a>
                                    <figcaption>
                                        <ul class="style1" style="font-size: 13.4px;">
                                            <li><a data-qv-tab="#qvt-wishlist" class="btn-cart flytoQuickView btn-square btn-blue" href="#"><i class="fa fa-heart"></i></a></li>
                                            <li><a data-qv-tab="#qvt-compare" class="btn-cart flytoQuickView btn-square btn-blue" href="#"><i class="fa fa-exchange"></i></a></li>
                                            <li><a class="btn-cart btn-square btn-blue" href="#"><i class="fa fa-expand"></i></a></li>
                                        </ul>
                                    </figcaption>
                                </figure>
                                <div class="xv-product-content">
                                    <h3><a href="detail1.html"><?php echo $result_new["productName"] ?></a></h3>
                                    <p>Aenean sollicitudin, nec sagittis sem lorem quist bibe dum auctor, nisi elit consequat ipsum. Duis sed odio sit amet nibh vulputate cursus a nec.</p>

                                    <ul class="extra-links">
                                        <li><a href="#"><i class="fa fa-heart"></i>Wishlist</a></li>
                                        <li><a href="#"><i class="fa fa-exchange"></i>Compare</a></li>
                                        <li><a href="#"><i class="fa fa-expand"></i>Expand</a></li>
                                    </ul>
                                    <!--ul-->
                                    <div class="xv-rating stars-5"></div>
                                    <span class="xv-price"><?php echo $fm->validation($result_new["price"] . " " . "VNĐ") ?></span>
                                    <a data-qv-tab="#qvt-cart" href="#" class="product-buy flytoQuickView">Buy</a>
                                </div>
                                <!--xv-product-content-->
                            </div>
                            <!--xv-product(list-view)-->
                        </div>
                        </div>
                <?php
                    }
                }
                ?>
            </div>
        </div>
    </div>
    </div>
</body>

</html>
