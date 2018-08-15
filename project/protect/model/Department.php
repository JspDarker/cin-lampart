<?php
/**
 * Created by PhpStorm.
 * User: nhat_thanh
 * Date: 8/15/2018
 * Time: 9:24 AM
 */
require_once "Connection.php";
class Department extends Connection
{
    public function __construct()
    {
        parent::__construct();
    }

    public function get_menu()
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
}