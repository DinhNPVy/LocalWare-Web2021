<?php include 'inc/header.php'; ?>
<?php include 'inc/sliderbar.php'; ?>
<?php include '../classes/brand.php'; ?>
<?php include '../classes/category.php'; ?>
<?php include '../classes/products.php'; ?>
<?php include_once '../helper/format.php'; ?>
<?php
$product = new products();
$fm = new Format();
if (isset($_GET['productid'])) {
    $id = $_GET['productid'];
    $delProduct = $product->del_product($id);
}
?>
<div class="gird_10">
    <div class="box round first grid">
        <h2>Post List</h2>
        <div class="block">
            <?php
            if (isset($delProduct)) {
                echo $delProduct;
            }
            ?>
            <table class="data display datatable" id="example">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Product Price</th>
                        <th>Product Image</th>
                        <th>Category</th>
                        <th>Brand</th>
                        <th>Description</th>
                        <th>Type</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php

                    $product_list = $product->show_products();
                    if ($product_list) {
                        $i = 0;
                        while ($result = $product_list->fetch_assoc()) {
                            $i++;
                    ?>
                            <tr class="odd gradeX">
                                <td><?php echo $i ?></td>
                                <td><?php echo $result['productName'] ?></td>
                                <td><?php echo $result['price'] ?></td>
                                <td><img src="uploads/<?php echo $result['image'] ?>" width="80"></td>
                                <td><?php echo $result['catName'] ?></td>
                                <td><?php echo $result['brandName'] ?></td>
                                <td><?php $fm->textShorten($result['product_desc'], 50) ?></td>
                                <td>
                                    <?php
                                    if ($result['type'] == 0) {
                                        echo 'Feathered';
                                    } else {
                                        echo 'Non-Feathered';
                                    }
                                    ?>
                                </td>
                                <td><a href="productedit.php?productid=<?php echo $result['productId'] ?>">Edit </a> | <a href="?productid=<?php echo $result['productId'] ?>">Delete</a></td>
                            </tr>
                    <?php
                        }
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>
</div>