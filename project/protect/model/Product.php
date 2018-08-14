<?php
require_once 'Connection.php';

class Product extends Connection
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getProductsHome()
    {
        $sql = $product_sql = "
            select f.`id`, f.name, f.price, f.`view`, img.url, img.alt
            from fs_product f
            join fs_product_img img
            on f.id = img.product_id
            -- where f.price > 9000000 and f.active =1
            where f.active =1
            order by f.price desc limit 0,20"
        ;
        return $this->loadMoreRows($sql);
    }

    public function getProductsFeature()
    {
        $sql = $product_sql = "
            select f.`id`, f.name, f.price, f.`view`, img.url, img.alt
            from fs_product f
            join fs_product_img img
            on f.id = img.product_id
            -- where f.price > 9000000 and f.active =1
            where f.active =1
            order by f.view desc limit 0,10"
        ;
        return $this->loadMoreRows($sql);
    }

    public function getProductsByCategory($id_cate = '')
    {
        $sql = $product_sql = "
            select f.`id`, f.name, f.price, f.`view`, img.url, img.alt
            from fs_product f
            join fs_product_img img
            on f.id = img.product_id
            -- where f.price > 9000000 and f.active =1
            where f.category_id = 1 and f.active =1
            order by f.id desc limit 0,50"
        ;
        return $this->loadMoreRows($sql);
    }

    public function getMenu()
    {
        $menu_sql = "
            select d.id as `depart_id`,
               d.name as `depart_name`,
                fc.id as fc_id,
                fc.name as fc_name
            from fs_department d
            left join fs_category fc on d.id = fc.department_id"
        ;

        $menus = $this->loadMoreRows($menu_sql);

        $res = [];
        foreach ($menus as $menu) {
            $res[$menu->depart_name][] = $menu;
        }
        return $res;
    }

    public static function getListingByCategory($order, $limit, $cate,$start)
    {
        $sql = "SELECT fs_product.name AS pro_name,fs_product.id AS pro_id,
                        fs_product.price AS pro_price,fs_product_img.url AS urlHinh,
                        fs_product_img.alt AS img_alt,fs_product.view as `views`
                     FROM fs_product 
                     JOIN fs_product_img ON fs_product.id=fs_product_img.product_id  
                     {$cate}
                      ORDER BY {$order}  DESC
                     LIMIT {$start},{$limit}";
        return $sql;
    }

    public function countRows($id)
    {
        $sql = "select count(1) as `total` from fs_product where category_id = ?";
        return $this->loadOneRow($sql,[$id]);
    }
}