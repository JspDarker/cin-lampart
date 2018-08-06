<?php
error_reporting(E_ALL);
$servername = "localhost";
$username = "nhatthanh";
$password = "zxcv";
$dbname = "pro_shop";
// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);
$conn->set_charset('utf8');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// select 1
function getRows ($conn, $sql) {
    $res = $conn->query($sql);
    if($res->num_rows > 0) {
        $arr = array();
        while($rows = $res->fetch_assoc()) {
            $arr[] = $rows;
        }
        return $arr;
    }
    return false;
}

// optgroup | select
$sql = "SELECT * FROM `fs_department`";
$resDepart = getRows($conn,$sql);
$stmt = $conn->prepare("select `fs_category`.`id` as `id_cate`, 
`fs_category`.`name` as `name_cate`
from fs_category where `department_id` = ?");



// single query
$once = "
    select d.id as `depart_id`,
       d.name as `depart_name`,
        fc.id as fc_id,
        fc.name as fc_name
from fs_department d
 left join fs_category fc on d.id = fc.department_id"
;
function getRows1 ($conn, $once) {
    $res = $conn->query($once);
    if($res->num_rows > 0) {
        $arr = array();
        while($rows = $res->fetch_assoc()) {
            $arr[$rows['depart_name']][$rows['fc_id']] = $rows['fc_name'];
        }
        return $arr;
    }
    return false;
}
$multi = getRows1($conn,$once);

$product = "
    select f.`id`, f.name, f.price, img.url, img.alt
    from fs_product f
    join fs_product_img img
    on f.id = img.product_id
    limit 0,20
";
$res_product = getRows($conn, $product);


