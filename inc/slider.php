<?php
include_once 'inc/header.php';
?>
<link rel="stylesheet" href="Store/css/style.css">
<div class="header_bottom">
    <div class="header_bottom_left">
        <div class="section group">
            <?php
            $getLastedDell = $product->getLastedDell();
            if ($getLastedDell) {
                while ($resultDell = $getLastedDell->fetch_assoc()) {
            ?>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <a href="details.php"> <img height="80px" src="admin/uploads/<?php echo $resultDell["image"] ?>" /> </a>
                        </div>
                        <div class="text list_2_of_1">
                            <h2>dell</h2>
                            <p><?php echo $resultDell["productName"] ?></p>
                            <div class="button"><span><a href="details.php?productID=<?php echo $resultDell["productId"] ?>">Add to cart</a></span></div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
            <?php
            $getLastedApple = $product->getLastedIphone();
            if ($getLastedApple) {
                while ($resultApple = $getLastedApple->fetch_assoc()) {
            ?>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <a href="details.php"> <img height="80px" src="admin/uploads/<?php echo $resultApple["image"] ?>" /> </a>
                        </div>
                        <div class="text list_2_of_1">
                            <h2>apple</h2>
                            <p><?php echo $resultApple["productName"] ?></p>
                            <div class="button"><span><a href="details.php?productID=<?php echo $resultApple["productId"] ?>">Add to cart</a></span></div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
        </div>
        <div class="section group">
            <?php
            $getLastedSamsung = $product->getLastedSamsung();
            if ($getLastedSamsung) {
                while ($resultSamsung = $getLastedSamsung->fetch_assoc()) {
            ?>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <a href="details.php"> <img height="80px" src="admin/uploads/<?php echo $resultSamsung["image"] ?>" /> </a>
                        </div>
                        <div class="text list_2_of_1">
                            <h2>samsung</h2>
                            <p><?php echo $resultSamsung["productName"] ?></p>
                            <div class="button"><span><a href="details.php?productID=<?php echo $resultSamsung["productId"] ?>">Add to cart</a></span></div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>

            <?php
            $getLastedXiaomi = $product->getLastedXiaomi();
            if ($getLastedXiaomi) {
                while ($resultXiaomi = $getLastedXiaomi->fetch_assoc()) {
            ?>
                    <div class="listview_1_of_2 images_1_of_2">
                        <div class="listimg listimg_2_of_1">
                            <a href="details.php"> <img height="80px" src="admin/uploads/<?php echo $resultXiaomi["image"] ?>" /> </a>
                        </div>
                        <div class="text list_2_of_1">
                            <h2>xiaomi</h2>
                            <p><?php echo $resultXiaomi["productName"] ?></p>
                            <div class="button"><span><a href="details.php?productID=<?php echo $resultXiaomi["productId"] ?>">Add to cart</a></span></div>
                        </div>
                    </div>
            <?php
                }
            }
            ?>
        </div>
        <div class="clear"></div>
    </div>

    <div class="header_bottom_right_images">
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <?php
                    $getSlider = $product->show_slider();
                    if ($getSlider) {
                        while ($result = $getSlider->fetch_assoc()) {
                    ?>
                            <li><img src="admin/uploads/<?php echo $result["slider_image"] ?>" /></li>
                    <?php
                        }
                    }
                    ?>
                </ul>
            </div>
        </section>
    </div>

    <div class="clear"></div>
</div>
<!-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
    <div class="carousel-inner" role="listbox">
        <?php
        $get_slider = $product->show_slider();
        if ($get_slider) {
            while ($result_slider = $get_slider->fetch_assoc()) {


        ?>
                <div class="carousel-item active">
                    <img src="admin/uploads/<?php echo $result_slider["slider_image"] ?>">
                </div>
        <?php
            }
        }
        ?>

    </div>


</body>

</html>

<body> -->