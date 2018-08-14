<?php
//require_once 'protect/model/Connection.php';
require_once 'protect/model/Product.php';
$conn = new Product;
$lists = $conn->getProductsHome();
$menus = $conn->getMenu();
$product_feature = $conn->getProductsFeature();



//listing
//$order = "fs_product.view";
//$cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
//
//$bind_value = Product::getListingByCategory($order, 12, $cate);
//
//$product_by_cate = $conn->loadMoreRows($bind_value);

//print_r($product_by_cate);
//die;
//print_r($menus);
//die;

 function render($view, $data = [])
 {
     extract($data);
     include "protect/views/{$view}.php";
 }

 $mod = isset($_GET['mod']) ?  $_GET['mod'] : 'home';




render('header',['menus' => $menus]);
//==================================================

//==================================================
/*if(isset($_GET['id_cate']))
{
    $order = "fs_product.view";
    $cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
    $limit = 20;
    $bind_value = Product::getListingByCategory($order, $limit, $cate);
    $product_by_cate = $conn->loadMoreRows($bind_value);
}*/

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
    $cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
    $limit = $per_page;
    $bind_value = Product::getListingByCategory($order, $limit, $cate, $start);
    $product_by_cate = $conn->loadMoreRows($bind_value);
    // Pages  create total
    $totals = $conn->countRows($_GET['id_cate']);
    $page_number = ceil($totals->total/$per_page);
}

if($mod == 'listing')
{
    //render($mod, array('products'=> $product_by_cate,'menus' => $menus));
    render($mod, array('products'=> $product_by_cate,'menus' => $menus, 'page_number'=>$page_number,'limit'=> $limit));
} else {

    render($mod, ['lists' => $lists, 'menus' => $menus,'pro_feature' => $product_feature]);
}

render('footer');




?>