<?php
ob_start();
session_start();
function render($view, $data = [])
 {
     extract($data);
     include "protect/views/{$view}.php";
 }

$mod = isset($_GET['mod']) ? $_GET['mod'] : 'home';

require_once 'protect/model/Department.php';
$menu_department = new Department;
$hide = $menu_department->get_menu();
render('header',['menus' => $hide]);

//==================================================
if($mod =='home') {

    require_once 'protect/model/Product.php';
    $conn = new Product;
    $products_home = $conn->get_products_home();
    //$menus = $conn->get_menu();
    $product_feature = $conn->get_products_feature();

    render($mod, ['lists' => $products_home,'pro_feature' => $product_feature]);
}
if($mod == 'listing')
{
    if(isset($_GET['id_cate']))
    {
        // pagination
        $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
        $limit_items = 20;
        $per_page = isset($_GET['per_page']) ? (int)$_GET['per_page'] : $limit_items;
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

        $cate =$_GET['id_cate'];
        $limit = $per_page;
        require_once 'protect/model/Category.php';
        $conn = new Category;
        $bind_value = Category::get_listing_by_category($order, $limit, $cate, $start);
        $product_by_cate = $conn->loadMoreRows($bind_value);
        // Pages  create total
        $totals = $conn->count_rows($_GET['id_cate']);
        $page_number = ceil($totals->total/$per_page);
    }

    render($mod, array('products'=> $product_by_cate, 'page_number'=>$page_number,'limit'=> $limit));
}



if($mod == 'search_word') {
    if( ! empty($_REQUEST['search_product'])) {
        $word = $_REQUEST['search_product'];

        require_once 'protect/model/Category.php';
        $conn = new Category;
        $total_items = $conn->count_search($word);

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

        $bind_select = Category::search_any($word,$start,$per_page, $sort);
        $product_search = $conn->loadMoreRows($bind_select);
        $total_item = $total_items->total;
        //die($total_item);
        render($mod,['products' => $product_search,'search_txt'=>$word, 'total_pro' =>$total_item, 'limit' => $per_page]);
    }
}





if($mod == 'detail')
{
    if(isset($_GET['pro_id'])){
        $id= (int)$_GET['pro_id'];
        require_once 'protect/model/Product.php';
        $conn = new Product;
        $res = $conn->get_product_detail($id);
        $type_pro = $res->cate_id; // number
        $pro_relationship = $conn->select_pro_by_id_cate($type_pro);
        render($mod, array('product' => $res, 'pro_relationship'=>$pro_relationship));
    }
}
if($mod=='login') {


   // $email = $_POST['email'];
    $err_emails =$err_pass=$email='';
    $isOke = false;
    if(isset($_POST['btn_login']))
    {
        function check_email_valid($email) {
            if(empty($email)){
                return "Email is required";
            } elseif(! filter_var($email, FILTER_VALIDATE_EMAIL)){
                return 'Email Khong hop le';
            }
            return 1;
        }

        $email = $_POST['email'];
        $pass = $_POST['pass'];


        $err_emails = check_email_valid($email);
        if(empty($pass)) {
            $err_pass= "password khong duoc rong";
        }
        if($err_emails == 1) {
            $err_emails = '';
            require_once 'protect/model/User.php';
            $conn = new User;
            $res = $conn->check_email_exists($email);
            if($res == false) {
                $err_emails = 'Email k ton tai trong database';
            } else {
                $user_id = $res->id;
                $user_pass = $res->password;
                /*var_dump($user_id);
                var_dump($user_pass);*/
                //die;
                if(password_verify($pass,$user_pass) == true) {
                    //$err_pass = "oke pass";
                    $_SESSION['name_user'] = $res->name;
                    $_SESSION['id_user'] = $res->id;
                    $isOke = true;
                } else {
                    $err_pass = "pass wrong !";
                }
            }
        }
    }

    if($isOke == true) {
        header("location:inited.php?mod=home");
    }

    render($mod,['err_email' => $err_emails, 'err_pass' => $err_pass,'email'=>$email]);
}

if($mod== 'logout') { render($mod); }

if($mod == 'register'){
    $err_emails =$err_pass=$email=$name=$err_pass_confirm=$err_name='';
    $isOke = false;
    if(isset($_POST['btn_login']))
    {

        require_once 'protect/model/Validate.php';
        $valid = new Validate;
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        $pass_confirm = $_POST['pass_confirm'];
        $name = $_POST['name'];


        $err_emails = $valid->checkEmail($email);
        $err_name = Validate::checkName($name);
        $err_pass = $valid->checkPassword($pass);
        $err_pass_confirm = $valid->checkPassConfirm($pass,$pass_confirm);

        if($err_emails == false) {
            require_once 'protect/model/User.php';
            $conn = new User;
            $res = $conn->check_email_exists($email);
            if($res != 0) {
                $err_emails = 'Email da ton tai trong database';
            } else {
                if($err_name == false && $err_pass == false && $err_pass_confirm == false ) {
                    echo "Ban da danh ki thanh cong";
                    $sql = "insert into fs_user (`name`, `email`, `password`)
                values (?, ?, ?)";
                    $pass = password_hash($pass,PASSWORD_DEFAULT);
                    $options = [$name,$email,$pass];
                    $insert = $conn->executeQuery($sql,$options);
                    if($insert == false) {
                        echo "not insert";
                        $isOke = true;
                        //die;
                    } else {
                        $isOke = true;
                    }
                }
            }
        }
    }
    render($mod,['isOke'=>$isOke,'err_email' => $err_emails, 'err_pass' => $err_pass,'email'=>$email,'name'=> $name,'err_name'=> $err_name,'err_pass_confirm'=>$err_pass_confirm]);
}

if($mod == 'up_info') {

    //$user = '';
    if(isset($_POST['btn_update']))
    {
        //$user = '';
        $name = $_POST['name'];
        require_once 'protect/model/Validate.php';

        $err_name = Validate::checkName($name);
        if($err_name == false) {
            $id = $_SESSION['id_user'];
            require_once 'protect/model/User.php';
            $conn = new User;
            $phone=$_POST['phone'];
            $address = $_POST['address'];
            $dob = $_POST['dob'];
            $gender = isset($_POST['gender']) ? $_POST['gender'] : 1;

            $sql_update = User::update_user($name,$phone,$address,$dob,$gender,$id);
            $conn->executeQuery($sql_update);
            header("location:inited.php?mod=up_info");
        }
        render('up_info',['err_name'=>$err_name]);
    } else {
        $id = $_SESSION['id_user'];
        require_once 'protect/model/User.php';
        $conn = new User;
        $user = $conn->select_user($id);
        //var_dump($user);
        render($mod,['user'=>$user]);
    }
}
if($mod=='test') {

}
render('footer_update',['menus' => $hide]);




?>