<?php include 'inc/header.php'; ?>


<?php include 'inc/sliderbar.php'; ?>
<?php include '../classes/category.php'; ?>
<?php
$cat = new category();
// kiem tra
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $catName = $_POST['catName'];


    $insertCat = $cat->insert_category($catName);
}
?>
<div class="gird_10">
    <div class="box round first grid">
        <h2>Thêm danh mục</h2>
        <div class="block copyblock">
            <?php
            if (isset($insertCat)) {
                echo $insertCat;
            }
            ?>

            <form action="catadd.php" method="post">
                <table class="form">
                    <tr>
                        <td>
                            <input type="text" name="catName" placeholder="Vui lòng thêm danh mục sản phẩm..." class="medium" />
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