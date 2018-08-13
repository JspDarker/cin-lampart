<?php
if (isset($_GET['id_category'])) {
    $products = new Product();
    $order = "fs_product.view";
    $cate = "AND fs_product.category_id = '{$_GET['id_category']}'";
    $product = $products->getProduct($order, 12, $cate);
}
// http://localhost:8888/storm/Education/project/inited.php?mod=listing&id_cate=1
render('header', array('menu' => $menu));

if ($page == 'listing') {
    render($page, array('products'=> $product,'total'=>$product->num_rows));
} else {
    $products = new Product();
    $order = "fs_product.id";
    $cate = "";
    $product = $products->getProduct($order, 12, $cate);
    $featured = $products->getProduct("fs_product.view",12,"");
    render($page, array('products'=> $product,'featured'=>$featured));
}

$sql = "SELECT fs_product.name AS pro_name,fs_product.id AS pro_id, fs_product.price AS pro_price, fs_product_img.url AS urlHinh, fs_product_img.alt AS img_alt 
                     FROM fs_product 
                     JOIN fs_product_img ON fs_product.id=fs_product_img.product_id  
                     {$cate}
                      ORDER BY fs_product.view  DESC
                     LIMIT 0,$limit";



//==================

if (isset($_GET['id_cate'])) {
    //$products = new Product();


    //$conn->getListingByCategory();
    $order = "fs_product.view";
    $cate = "AND fs_product.category_id = '{$_GET['id_cate']}'";
    $product = $conn->getListingByCategory($order, 12, $cate);
}
if ($mod == 'listing') {
    render($mod, array('products'=> $product,'total'=>$product->num_rows));
} else {
    $products = new Product();
    $order = "fs_product.id";
    $cate = "";
    $product = $products->getProduct($order, 12, $cate);
    $featured = $products->getProduct("fs_product.view",12,"");
    render($mod, array('products'=> $product,'featured'=>$featured));
}