<!DOCTYPE html>
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

<body>