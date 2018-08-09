<?php
session_start();
if(!isset($_SESSION['user_id']))
{
    $_SESSION['error_update']= 'Ban phai dang nhap moi co the update';
    header('location:login.php');
}

require_once "ConnectDB.php";
//if($isOke == true) {echo "<script>alert('Successfully!'); window.location.href = ('welcome.php')</script>"; }

$conn = new ConnectDB;
$sql = "select name, mobile, address, code from fs_user where id = ?";
$options = [$_SESSION['user_id']];
$info = $conn->loadOneRow($sql,$options);


function validatePassword($str) {
    return ctype_alnum($str)
        && strlen($str) >= 8
        && preg_match('/[A-Z]/', $str)
        && preg_match('/[a-z]/', $str)
        && preg_match('/[0-9]/', $str)
        || preg_match('/[$!@%^&?]/', $str)
        ;
}
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
$err_name=$err_phone=$err_code='';
$name=$isOke=$phone=$code='';
$address = $info->address;
if(isset($_POST['btn_update']) && $_SERVER["REQUEST_METHOD"] == "POST")
{
    $result_update = false;
    $address = isset($_POST['address']) ? test_input($_POST['address']) : $address;
    if(empty($_POST['name'])) {
        $err_name = "first name is required !";
    } else {
        $name = test_input($_POST['name']); // err_fname
        if(!preg_match("/^[a-zA-Z ]*$/",$name)){
            $err_name = "First name must only letters";
        }
    }

    // code number and letter
    if(empty($_POST['user_code'])) {
        $err_code = "code is required !";
    } else {
        $code = test_input($_POST['user_code']);
        if(!preg_match("/^[a-zA-Z0-9 ]*$/",$code)){
            $err_code = "Code as a-z 0-9";
        }
    }
    // phone 10 11 length
    if(empty($_POST['phone'])) {
        $err_phone = "Phone is required !";
    } else {
        $phone = test_input($_POST['phone']);
        if(strlen($phone) < 10 || strlen($phone) > 11) {
            $err_phone = "Length phone invalid";
        } else {
            if(!preg_match("/^[0-9]*$/",$phone)){
                $err_phone = "Phone must only number";
            } else {
                $result_update = true;
                if ($result_update == true) {
                    echo "OKE Co the update";
                    echo "<pre>";
                    var_dump($_POST);
                    print_r($_SESSION);
                    echo "</pre>";
                    //die;
                }
            }
        }
    }

}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin - Start Bootstrap Template</title>
    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">
<div class="container">
    <?php
    //require_once "ConnectDB.php";
    //if($isOke == true) {echo "<script>alert('Successfully!'); window.location.href = ('welcome.php')</script>"; }

    /* $conn = new ConnectDB;
     $sql = "select name, mobile, address, code,email from fs_user where id = ?";
     $options = [$_SESSION['user_id']];
     $info = $conn->loadOneRow($sql,$options);
     var_dump($info);*/
    //die;
    ?>
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Update an Account</div>
        <div class="card-body">
            <form action="after_update.php" method="post">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <label for="exampleInputName">Full name</label>
                            <input value="<?=$name?>" name="name" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Update first name">
                            <span class="text-danger"><?=$err_name?></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputPassword1">Phone</label>
                            <input name="phone" value="<?=$phone?>" class="form-control"  type="text" placeholder="Phone">
                            <span class="text-danger"><?=$err_phone?></span>
                            <input name="user_code" value="<?=$code?>" class="form-control mt-2"  type="text" placeholder="Enter code here">
                            <span class="text-danger"><?=$err_code?></span>
                        </div>
                        <div class="col-md-6">
                            <label for="address">Address</label>
                            <textarea rows="4" cols="40" name="address"><?=$address;?></textarea>
                        </div>
                    </div>
                </div>
                <button type="submit" name="btn_update" class="btn btn-primary btn-block" >uPDATE Now</button>
            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="login.html">Login Page</a>
                <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
            </div>
        </div>
    </div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/popper/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>