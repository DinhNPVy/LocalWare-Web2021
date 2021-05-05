<?php
include "inc/header.php";
include "inc/sliderbar.php";
?>
<?php
// echo session_id();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <div class="flex-container">
        <h3>Feature Products</h3>
        <div class="hh-box">
            <?php
            $productFeathered = $product->getProductFeathered();

            if ($productFeathered) {
                while ($result = $productFeathered->fetch_assoc()) {
            ?>
                    <div class="grid_1_of_4 images_1_of_4">
                        <a href="details.php"><img height="80px" src="admin/uploads/<?php echo $result["image"] ?>" /></a>
                        <h2><?php echo $result["productName"] ?> </h2>
                        <p><?php echo $fm->textShorten($result["product_desc"], 25) ?></p>
                        <p><span class="price"><?php echo $fm->validation($result["price"]) . " VND"  ?></span></p>
                        <div class="button"><span><a href="details.php?productid=<?php echo $result["productId"] ?>" class="details">Details</a></span></div>
                    </div>

            <?php
                }
            }
            ?>
        </div>
        <div class="clear"></div>


    </div>
    <h3>New Products</h3>
    <div class="hh-box">
        <?php
        $productNew = $product->getProductNew();

        if ($productNew) {
            while ($result_new = $productNew->fetch_assoc()) {
        ?>
                <div class="grid_1result_new_of_4 images_1_of_4">
                    <a href="details.php"><img height="80px" src="admin/uploads/<?php echo $result_new["image"] ?>" /></a>
                    <h2><?php echo $result_new["productName"] ?> </h2>
                    <p><?php echo $fm->textShorten($result["product_desc"], 25) ?></p>
                    <p><span class="price"><?php echo $fm->validation($result_new["price"]) . " VND"  ?></span></p>
                    <div class="button"><span><a href="details.php?productid=<?php echo $result_new["productId"] ?>" class="details">Details</a></span></div>
                </div>
        <?php
            }
        }
        ?>
    </div>
    <div class="clear"></div>

    <div>
        <?php
        $productAll = $product->getAllProdut();
        $productCount = mysqli_num_rows($productAll);
        $productButton = ceil($productCount / 4);
        $i = 1;
        echo '<p>Page: </p>';
        for ($i = 1; $i <= $productButton; $i++) {
            echo '<a style="margin: 0 50px;" href="index.php?page=' . $i . '">' . $i . '</a>';
        }
        ?>

    </div>

    </div>

</body>
<script src="./../js/bootstrap.bundle.min.js"></script>

</html>
<?php include "inc/footer.php"; ?>