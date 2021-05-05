<?php

$filepath = realpath(dirname(__FILE__));
include_once($filepath . '/../lib/database.php');
include_once($filepath . '/../helper/format.php');

?>

<?php

class cart
{

    private $db;
    private $fm;

    public function __construct()
    {
        // this chay trong trang nay thoi nhe
        $this->db = new Database();
        $this->fm = new Format();
    }

    public function addToCart($quantity, $id)
    {
        $quantity = $this->fm->validation($quantity);
        $quantity = mysqli_real_escape_string($this->db->link, $quantity);
        $id = mysqli_real_escape_string($this->db->link, $id);
        $sId = session_id();

        $query = "SELECT * FROM tbl_product WHERE productId = '$id'";
        $result = $this->db->select($query)->fetch_assoc();

        $productName = $result["productName"];
        $price = $result["price"];
        $image = $result["image"];



        $checkCart = "SELECT * FROM tbl_cart WHERE productId = '$id' AND sId = '$sId'";
        $result = $this->db->select($checkCart);

        if ($result) {
            $result = "The product already exists in the shopping cart";
            return $result;
        } else {
            $query_insert = "INSERT INTO tbl_cart(productId, quantity, sId, image, price, productName)
             VALUE('$id','$quantity','$sId','$image','$price','$productName')";

            $result_insert = $this->db->insert($query_insert);

            if ($result_insert) {
                header("Location: cart.php");
            } else {
                header("Location: 404.php");
            }
        }
    }
    public function getToCart()
    {
        $sId = session_id();
        $query = "SELECT * FROM tbl_cart WHERE sId = '$sId'";
        $result = $this->db->select($query);
        return $result;
    }

    public function update_quantity_Cart($quantity, $cartId)
    {
        $quantity = mysqli_real_escape_string($this->db->link, $quantity);
        $cartId = mysqli_real_escape_string($this->db->link, $cartId);
        $query = "UPDATE tbl_cart SET 
                quantity = '$quantity'
            
                WHERE cartId = '$cartId'";
        $result = $this->db->update($query);

        if ($result) {
            header('Location:cart.php');
            // $mes = "<span class='Success'>Product Quantity Updated Successfully</span>";
            // return $mes;
        } else {

            $mes = "<span class='error'>Product Quantity Updated Not Successfully</span>";
            return $mes;
        }
    }
    public function del_ProductCart($cartid)
    {
        $cartid = mysqli_real_escape_string($this->db->link, $cartid);

        $query = "DELETE FROM tbl_cart WHERE cartId = '$cartid'";
        $result = $this->db->delete($query);
        if ($result) {
            header('Location:cart.php');
            // $alert = "<span class='Success'> Product Delete Successfully</span>";
            // return $alert;
        } else {
            $alert = "<span class='error'> Product  Delete Not Successfully</span>";
            return $alert;
        }
    }
    public function check_cart()
    {
        $sId = session_id();
        $query = "SELECT * FROM tbl_cart WHERE sId = '$sId'";
        $result = $this->db->select($query);
        return $result;
    }
}
