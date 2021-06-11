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


    <div class="xv-slider-wrap">
        <?php
        $get_slider = $product->show_slider();
        if ($get_slider) {
            while ($result_slider = $get_slider->fetch_assoc()) {


        ?>

                <div class="owl-carousel slider_controls1" data-dots=true data-slides="1" data-slides-md="1" data-slides-sm="1" data-margin="0" data-loop="true" data-prev="fa fa-angle-left" data-next="fa fa-angle-right" data-nav="false">
                    <div class="xv-slide" style="background-image:url(admin/uploads/<?php echo $result_slider['slider_image'] ?>;">
                <?php
            }
        }
                ?>
                <div class="container">
                    <div class="row">
                        <div class="hidden-xs hidden-sm col-md-6 fadeInLeft animated">
                            <img src="assets/img/home1-slider3.png" alt="">
                        </div>
                        <div class="col-xs-12 col-md-6 fadeInRight animated">
                            <div class="xv-slider-content clearfix color-white">
                                <h1>Macbook Pro Retina</h1>
                                <p>When we designed MacBook Pro with Retina display, we started with a blank slate. That gave us the freedom to imagine something radical, something entirely different. A notebook so thin, so light, and so powerful it’s like
                                    nothing you’ve ever seen before.</p>
                                <a href="#" class="btn btn-grey btn-price">From $1499</a>
                                <a href="#" class="btn btn-grey">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
                </div>
    </div>
</body>

</html>