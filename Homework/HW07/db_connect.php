<?php
error_reporting(E_ALL);
$servername = "172.16.100.3";
$username = "edu_thanh";
$password = "edu_thanh";
$dbname = "edu_thanh";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
//$conn->set_charset('utf8'); # bug for charset

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// select 1
function getRows ($conn, $sql) {
    $res = $conn->query($sql);
    if($res) {
        $arr = array();
        while($rows = $res->fetch_assoc()) {
            $arr[] = $rows;
        }
        return $arr;
    }
}

function getMenu ($conn, $once) {
    $res = $conn->query($once);
    if($res) {
        $arr = array();
        while($rows = $res->fetch_assoc()) {
            $arr[$rows['depart_name']][] = $rows;
            //$arr[$rows['depart_name']][$rows['fc_id']] = $rows['fc_name'];
        }
        return $arr;
    }
}

$menu_sql = "
    select d.id as `depart_id`,
       d.name as `depart_name`,
        fc.id as fc_id,
        fc.name as fc_name
from fs_department d
 left join fs_category fc on d.id = fc.department_id"
;
$menu = getMenu($conn,$menu_sql);


$product_sql = "
    select f.`id`, f.name, f.price, img.url, img.alt
    from fs_product f
    join fs_product_img img
    on f.id = img.product_id
    order by f.id desc limit 0,20
";
$product = getRows($conn, $product_sql);


$cateById = "select f.`id`, f.name, f.price, img.url, img.alt, f.category_id
from fs_product f
  join fs_product_img img
    on f.id = img.product_id
  where f.category_id = ?
order by f.id desc limit 0,20";

function prepareStatement($conn, $sql, $id) {
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i",$id);
    $stmt->execute();

    $result = $stmt->get_result();

    $res = [];
    $name = '';
    if($result->num_rows ===0) {

        $stmt = $conn->prepare("
          select fs_category.name as `name` 
          from fs_category where fs_category.`id` = ?");

        $stmt->bind_param("i",$id);
        $stmt->execute();
        $stmt->store_result();
        if($stmt->num_rows ===0) {
            $res['not_row'] = '';
        } else {
            $stmt->bind_result($name);
            $stmt->fetch();
            $res['not_row'] = '<b>Hiện tại, loại '.$name.' chưa có sản phẩm!</b>';
        }
    } else {
        while($rows = $result->fetch_assoc()) {
            $res[] = $rows;
        }
    }

    return $res;
}

if(isset($_GET['cate_id']) && is_numeric($_GET['cate_id'])) {
    $id_cate = $_GET['cate_id'];
    $categoryById = prepareStatement($conn, $cateById, $id_cate);
}