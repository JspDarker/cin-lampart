<?php

require_once "DemoDB.php";
class PaginationTest extends DemoDB
{
    public function __construct()
    {
        parent::__construct();
    }

    public static function get_listing_by_category($order, $limit, $cate,$start)
    {
        $cate = isset($cate) ? $cate : 1;
        $category_id= "AND fs_product.category_id = {$cate}";
        $sql = "SELECT fs_product.name AS pro_name,fs_product.id AS pro_id,
                        fs_product.price AS pro_price,fs_product_img.url AS urlHinh,
                        fs_product_img.alt AS img_alt,fs_product.view as `views`
                     FROM fs_product 
                     JOIN fs_product_img ON fs_product.id=fs_product_img.product_id  
                     {$category_id}
                      ORDER BY {$order}
                     LIMIT {$start},{$limit}";
        return $sql;
    }

    public function count_rows($id)
    {
        $sql = "select count(1) as `total` from fs_product where category_id = ?";
        return $this->loadOneRow($sql,[$id]);
    }
}