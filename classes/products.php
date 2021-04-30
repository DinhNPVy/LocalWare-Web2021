<?php

$filepath = realpath(dirname(__FILE__));
include_once($filepath . '/../lib/database.php');
include_once($filepath . '/../helper/format.php');

?>

<?php

class products
{

    private $db;
    private $fm;

    public function __construct()
    {
        // this chay trong trang nay thoi nhe
        $this->db = new Database();
        $this->fm = new Format();
    }
    public function insert_product($data, $files)
    {


        // 1 bien ket noi vs du lieu , bien thu hai ket noi co so du lieu
        $productName = mysqli_real_escape_string($this->db->link, $data['productName']);
        $brand = mysqli_real_escape_string($this->db->link, $data['brand']);
        $category = mysqli_real_escape_string($this->db->link, $data['category']);
        $product_desc = mysqli_real_escape_string($this->db->link, $data['product_desc']);
        $price = mysqli_real_escape_string($this->db->link, $data['price']);
        $type = mysqli_real_escape_string($this->db->link, $data['type']);


        // kiem tra hinh anh va lay hinh anh cho vao folder upload
        $permited = array('jpg', 'jpeg', 'png', 'gif');
        $file_name = $_FILES['image']['name'];
        $file_size = $_FILES['image']['size'];
        $file_temp = $_FILES['image']['tmp_name'];

        $div = explode('.', $file_name);
        $file_text = strtolower(end($div));
        $unique_image = substr(md5(time()), 0, 10) . '.' . $file_text;
        $uploaded_image = "uploads/" . $unique_image;
        // neu empty
        if ($productName == "" || $brand == "" || $category == "" || $product_desc == "" ||  $price == "" ||  $type == "" || $file_name == "") {
            $alert = "<span class='error'>Fiels must be not empty</span>";
            return $alert;
        }
        // neu ng dung nhap thi doi chieu voi csdl
        else {
            move_uploaded_file($file_temp, $uploaded_image);
            $query = "INSERT INTO tbl_product(productName, brandId, catId, product_desc,price,type,image) VALUE('$productName','$brand','$category','$product_desc','$price','$type','$unique_image')";
            $result = $this->db->insert($query);

            if ($result) {
                $alert = "<span class='Success'>Insert Product Successfully</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Insert Product Not Successfully</span>";
                return $alert;
            }
        }
    }

    // // DANH SACH SAN PHAM //
    // public function show_category()
    // {
    //     $query = "SELECT * FROM tbl_category order by catId desc";
    //     $result = $this->db->select($query);
    //     return $result;
    // }

    // // UPDATE 
    // public function update_category($catName, $id)
    // {
    //     // kiem tra tinh hop le ex / \ v.v.
    //     $catName = $this->fm->validation($catName);


    //     // 1 bien ket noi vs du lieu , bien thu hai ket noi co so du lieu
    //     $catName = mysqli_real_escape_string($this->db->link, $catName);
    //     $id = mysqli_real_escape_string($this->db->link, $id);

    //     if (empty($catName)) {
    //         $alert = "<span class='error'>Category must be not empty</span>";
    //         return $alert;
    //     }
    //     // neu ng dung nhap thi doi chieu voi csdl
    //     else {
    //         $query = "UPDATE tbl_category SET catName = '$catName' WHERE catId = '$id'";
    //         $result = $this->db->update($query);

    //         if ($result) {
    //             $alert = "<span class='Success'> Category Update Successfully</span>";
    //             return $alert;
    //         } else {
    //             $alert = "<span class='error'> Category  Update Not Successfully</span>";
    //             return $alert;
    //         }
    //     }
    // }

    // public function del_category($id)
    // {
    //     $query = "DELETE FROM tbl_category WHERE catId = '$id'";
    //     $result = $this->db->delete($query);
    //     if ($result) {
    //         $alert = "<span class='Success'> Category Delete Successfully</span>";
    //         return $alert;
    //     } else {
    //         $alert = "<span class='error'> Category  Delete Not Successfully</span>";
    //         return $alert;
    //     }
    // }

    // // EDIT SANPHAM // 
    // public function getCateById($id)
    // {
    //     $query = "SELECT * FROM tbl_category WHERE catId = '$id'";
    //     $result = $this->db->select($query);
    //     return $result;
    // }
}
