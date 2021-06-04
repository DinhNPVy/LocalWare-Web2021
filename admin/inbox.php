<?php include 'inc/header.php'; ?>
<?php include 'inc/sliderbar.php'; ?>

<?php

$filepath = realpath(dirname(__FILE__));
include_once($filepath . '/../classes/cart.php');
include_once($filepath . '/../helper/format.php');
?>
<?php
$ct = new cart();

if (isset($_GET['shiftid'])) {
    $id = $_GET['shiftid'];
    $productid = $_GET['productId'];
    $quantity = $_GET['quantity'];
    $time = $_GET['time'];
    $price = $_GET['price'];
    $shifted = $ct->shifted($id, $productid, $quantity, $time, $price);
}

if (isset($_GET['delid'])) {
    $id = $_GET['delid'];

    $time = $_GET['time'];
    $price = $_GET['price'];
    $del_shifted = $ct->delShifted($id, $time, $price);
}

?>

?>
<div class="main">
    <div class="container">
        <div class="cartoption">
            <div class="cartpage">
                <h3>Danh sách sản phẩm</h3>
                <?php
                if (isset($shifted)) {
                    echo $shifted;
                }
                ?>
                <?php
                if (isset($del_shifted)) {
                    echo $del_shifted;
                }
                ?>
                <section class="section">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <!-- <div class="border-bottom">
                                    <nav class="pb-sm-3 pb-4" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                                        <ol class="breadcrumb mb-0">
                                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Cart</li>
                                        </ol>
                                    </nav>
                                </div> -->
                                <div class="table-responsive mt-4">
                                    <table class="table caption-top table-borderless pro-table">
                                        <thead class="bg-light">
                                            <tr>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    No.
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Order Time
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Product
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Quantity
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Price
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Customer ID
                                                </th>
                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Address
                                                </th>

                                                <th scope="col" class="fw-medium text-uppercase mt-2">
                                                    Action
                                                </th>
                                            </tr>
                                            <?php

                                            $ct = new cart();
                                            $fm = new Format();
                                            $get_inbox_cart = $ct->get_inbox_cart();
                                            if ($get_inbox_cart) {
                                                $i = 0;
                                                while ($result = $get_inbox_cart->fetch_assoc()) {
                                                    $i++;

                                            ?>
                                                    <tr>
                                                        <td><?php echo $i; ?></td>
                                                        <td><?php echo $fm->formatDate($result['date_order']) ?></td>
                                                        <td><?php echo $result['productName'] ?></td>

                                                        <td><?php echo $result['quantity'] ?></td>
                                                        <td><?php echo $result['price'] . '' . 'VNĐ' ?></td>
                                                        <td><?php echo $result['customer_id'] ?></td>
                                                        <td><a href="customer.php?customerid=<?php echo $result['customer_id'] ?>">View Address</a></td>
                                                        <td>
                                                            <?php
                                                            if ($result['status'] == 0) {
                                                            ?>

                                                                <a href="?shiftid=<?php echo $result['id'] ?>&price=<?php echo $result['price'] . '' . 'VNĐ' ?>&time=<?php echo $result['date_order'] ?> ">Đang vận chuyển</a>
                                                            <?php
                                                            } else if ($result['status'] == 1) {
                                                            ?>
                                                                  <a href="?shiftid=<?php echo $result['id'] ?>&price=<?php echo $result['price'] . '' . 'VNĐ' ?>&time=<?php echo $result['date_order'] ?> ">Đang giao hàng</a>
                                                              

                                                            <?php
                                                            } elseif ($result['status'] == 2) {

                                                            ?>
                                                                <a href="?delid=<?php echo $result['id'] ?>&price=<?php echo $result['price'] . '' . 'VNĐ' ?>&time=<?php echo $result['date_order'] ?> ">Xóa</a>
                                                            <?php
                                                            }
                                                            ?>
                                                        </td>



                                                    </tr>
                                        </thead>


                                <?php
                                                }
                                            }
                                ?>
                                </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</div>