<?php

$filepath = realpath(dirname(__FILE__));
include_once($filepath . '/../lib/database.php');
include_once($filepath . '/../helper/format.php');

?>

<?php

class category
{

    private $db;
    private $fm;

    public function __construct()
    {
        // this chay trong trang nay thoi nhe
        $this->db = new Database();
        $this->fm = new Format();
    }
    public function insert_category($catName)
    {
        // kiem tra tinh hop le ex / \ v.v.
        $catName = $this->fm->validation($catName);


        // 1 bien ket noi vs du lieu , bien thu hai ket noi co so du lieu
        $catNamer = mysqli_real_escape_string($this->db->link, $catName);


        // neu empty
        if (empty($catName)) {
            $alert = "<span class='error'>Category must be not empty</span>";
            return $alert;
        }
        // neu ng dung nhap thi doi chieu voi csdl
        else {
            $query = "INSERT INTO tbl_category(catName) VALUE('$catName')";
            $result = $this->db->insert($query);

            if ($result) {
                $alert = "<span class='Success'>Insert Category Successfully</span>";
                return $alert;
            } else {
                $alert = "<span class='error'>Insert Category Not Successfully</span>";
                return $alert;
            }
        }
    }
    // DANH SACH SAN PHAM //
    public function show_category()
    {
        $query = "SELECT * FROM tbl_category order by catId desc";
        $result = $this->db->select($query);
        return $result;
    }

    // UPDATE 
    public function update_category($catName, $id)
    {
        // kiem tra tinh hop le ex / \ v.v.
        $catName = $this->fm->validation($catName);


        // 1 bien ket noi vs du lieu , bien thu hai ket noi co so du lieu
        $catNamer = mysqli_real_escape_string($this->db->link, $catName);
        $id = mysqli_real_escape_string($this->db->link, $id);

        if (empty($catName)) {
            $alert = "<span class='error'>Category must be not empty</span>";
            return $alert;
        }
        // neu ng dung nhap thi doi chieu voi csdl
        else {
            $query = "UPDATE tbl_category SET catName = '$catName' WHERE catId = '$id'";
            $result = $this->db->update($query);

            if ($result) {
                $alert = "<span class='Success'> Category Update Successfully</span>";
                return $alert;
            } else {
                $alert = "<span class='error'> Category  Update Not Successfully</span>";
                return $alert;
            }
        }
    }

    // EDIT SAN PHAM // 
    public function getCateById($id)
    {
        $query = "SELECT * FROM tbl_category WHERE catId = '$id'";
        $result = $this->db->select($query);
        return $result;
    }
}
?>