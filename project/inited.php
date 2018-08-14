<?php
//require_once 'protect/model/Connection.php';
require_once 'protect/model/Product.php';
$conn = new Product;
$lists = $conn->getProductsHome();
$menus = $conn->getMenu();
$product_feature = $conn->getProductsFeature();

 function render($view, $data = [])
 {
     extract($data);
     include "protect/views/{$view}.php";
 }

 $mod = isset($_GET['mod']) ?  $_GET['mod'] : 'home';




render('header',['menus' => $menus]);
//==================================================

//==================================================

if(isset($_GET['id_cate']))
{
    // pagination
    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
    $sum_row = 100;
    $limit_items = 20;
    $per_page = isset($_GET['per_page']) && $_GET['per_page'] <= $sum_row ? (int)$_GET['per_page'] : $limit_items;
    $start = ($page > 1) ? ($page * $per_page) - $per_page : 0;

    $order = "fs_product.view";
    if(isset($_GET['order']))
    {
        if($_GET['order'] == 1) {
            $order = "fs_product.name";
        }
        if($_GET['order'] == 2) {
            $order = "fs_product.price";
        }
    }
        //$cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
    $cate =$_GET['id_cate'];
    $limit = $per_page;
    $bind_value = Product::getListingByCategory($order, $limit, $cate, $start);
    $product_by_cate = $conn->loadMoreRows($bind_value);
    // Pages  create total
    $totals = $conn->countRows($_GET['id_cate']);
    $page_number = ceil($totals->total/$per_page);
}

//if($mod='search_word') {
//    render($mod, []);
//}

if($mod == 'listing')
{
    render($mod, array('products'=> $product_by_cate,'menus' => $menus, 'page_number'=>$page_number,'limit'=> $limit));
}
if($mod == 'search_word') {
    if( ! empty($_REQUEST['search_product'])) {
        $word = $_REQUEST['search_product'];
        $total_items = $conn->countItems($word);

        $page = isset($_GET['p']) ? (int)$_GET['p'] : 1;
        $limit_items = 10;
        $per_page = isset($_GET['per_p']) ? (int)$_GET['per_p'] : $limit_items;
        $start = ($page > 1) ? ($page * $per_page) - $per_page : 0;

        $sort = "fs_product.view DESC";
        if(isset($_GET['order']))
        {
            if($_GET['order'] == 1) {
                $sort = "fs_product.name";
            }
            if($_GET['order'] == 2) {
                $sort = "fs_product.price DESC";
            }
        }

        $bind_select = Product::search_any($word,$start,$per_page, $sort);
        $product_search = $conn->loadMoreRows($bind_select);
        $total_item = $total_items->total;
        //die($total_item);
        render($mod,['products' => $product_search,'search_txt'=>$word,'menus'=> $menus,'total_pro' =>$total_item, 'limit' => $per_page]);
    }
}

if($mod == 'detail')
{
    if(isset($_GET['pro_id'])){
        $id= (int)$_GET['pro_id'];
        $res = $conn->get_product_detail($id);
        $type_pro = $res->cate_id; // number
        $pro_relationship = $conn->selectProByIdCate($type_pro);
        render($mod, array('product' => $res,'menus' => $menus, 'pro_relationship'=>$pro_relationship));
    }
}
if($mod=='login') {

//$res = $conn->check_email_exists($_POST['email']);
//    var_dump($res);
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    render($mod, ['email_err' => $conn->check_email_exists($email)]);
}


if($mod== 'home') {
    render($mod, ['lists' => $lists, 'menus' => $menus,'pro_feature' => $product_feature]);

}
render('footer');




?>