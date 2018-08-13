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
if(isset($_GET['id_cate']))
{
    $order = "fs_product.view";
    $cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
    $limit = 20;
    $bind_value = Product::getListingByCategory($order, $limit, $cate);

    $product_by_cate = $conn->loadMoreRows($bind_value);
}

if($mod == 'listing')
{
    render($mod, array('products'=> $product_by_cate,'menus' => $menus));
} else {

    render($mod, ['lists' => $lists, 'menus' => $menus,'pro_feature' => $product_feature]);
}

render('footer');




?>