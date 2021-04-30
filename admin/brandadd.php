<?php include 'inc/header.php'; ?>


<?php include 'inc/sliderbar.php'; ?>
<?php include '../classes/brand.php'; ?>
<?php
$brand = new brand();
// kiem tra
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $brandName = $_POST['brandName'];


    $insertBrand = $brand->insert_brand($brandName);
}
?>
<div class="gird_10">
    <div class="box round first grid">
        <h2>Thêm thương hiệu</h2>
        <div class="block copyblock">
            <?php
            if (isset($insertBrand)) {
                echo $insertBrand;
            }
            ?>

            <form action="brandadd.php" method="post">
                <table class="form">
                    <tr>
                        <td>
                            <input type="text" name="brandName" placeholder="Vui lòng thêm thương hiệu sản phẩm..." class="medium" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" name="submit" value="Save">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<?php include 'inc/footer.php'; ?>