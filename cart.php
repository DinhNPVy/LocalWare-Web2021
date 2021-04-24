<?php
include('inc/header.php');
include('inc/slider.php');
?>

<head>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<div class="main">
    <div class="content">
        <div class="cartoption">
            <div class="cartpage">
                <h3>Your Cart</h3>
                <table>
                    <tr>
                        <th width="20%">Product Name</th>
                        <th width="15%">Image</th>
                        <th width="15%">Price</th>
                        <th width="30%">Quantity</th>
                        <th width="20%">Total Price</th>
                        <th width="10%">Action</th>
                    </tr>
                    <tr>
                        <td>Product Title</td>
                        <td><img src="img/pro-1.jpg" alt="" height="100px"></td>
                        <td>Tk. 20000</td>
                        <td>
                            <form action="" method="post">
                                <input type="number" value="1" />
                                <input type="submit" name="submit" value="Update" />
                            </form>
                        </td>
                        <td>Tk. 40000</td>
                        <td><a href="">X</a></td>
                    </tr>
                    <tr>
                        <td>Product Title</td>
                        <td><img src="img/pro-1.jpg" alt="" height="100px"></td>
                        <td>Tk. 20000</td>
                        <td>
                            <form action="" method="post">
                                <input type="number" value="1" />
                                <input type="submit" name="submit" value="Update" />
                            </form>
                        </td>
                        <td>Tk. 40000</td>
                        <td><a href="">X</a></td>
                    </tr>
                    <tr>
                        <td>Product Title</td>
                        <td><img src="img/pro-1.jpg" alt="" height="100px"></td>
                        <td>Tk. 20000</td>
                        <td>
                            <form action="" method="post">
                                <input type="number" value="1" />
                                <input type="submit" name="submit" value="Update" />
                            </form>
                        </td>
                        <td>Tk. 40000</td>
                        <td><a href="">X</a></td>
                    </tr>
                    <tr>
                        <td>Product Title</td>
                        <td><img src="img/pro-1.jpg" alt="" height="100px"></td>
                        <td>Tk. 20000</td>
                        <td>
                            <form action="" method="post">
                                <input type="number" value="1" />
                                <input type="submit" name="submit" value="Update" />
                            </form>
                        </td>
                        <td>Tk. 40000</td>
                        <td><a href="">X</a></td>
                    </tr>

                </table>
                <table style="float: right; text-align:left;" width="40%">
                    <tr>
                        <th>Sub Total: </th>
                        <td>Tk. 210000</td>
                    </tr>
                    <tr>
                        <th>VAT: </th>
                        <td>Tk. 210000</td>
                    </tr>
                    <tr>
                        <th>Grand Total: </th>
                        <td>Tk. 210000</td>
                    </tr>
                </table>
            </div>
            <div class="shopping">
                <div class="shopleft">
                    <a href="index.php"><img src="img/pro-1.jpg" alt=""></a>
                </div>
                <div class="shopright">
                    <a href="login.php">
                        <div class="fa fa-check-circle"></div>
                    </a>
                </div>

            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<?php
include('inc/footer.php');
?>