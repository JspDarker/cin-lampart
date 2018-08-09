<?php
session_start();
if(!isset($_SESSION['user_id']))
{
    $_SESSION['error_update']= 'Ban phai dang nhap moi co the update';
    header('location:login.php');
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
        require_once "ConnectDB.php";
        //if($isOke == true) {echo "<script>alert('Successfully!'); window.location.href = ('welcome.php')</script>"; }

        $conn = new ConnectDB;
        $sql = "select name, mobile, address, code from fs_user where id = ?";
        $options = [$_SESSION['user_id']];
        $info = $conn->loadOneRow($sql,$options);
        //var_dump($info);
        //die;
    ?>
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Update an Account</div>
        <div class="card-body">
            <form action="after_update.php" id="usrform" name="usrform" method="post">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <label for="exampleInputName">Full name</label>
                               <input value="<?=isset($info->name)? $info->name: ''?>" name="name" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="">
                            <span class="text-danger"></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputPassword1">Phone</label>
                            <input name="phone" value="<?=isset($info->mobile)? $info->mobile: ''?>" class="form-control"  type="text" placeholder="Phone">
                            <input name="user_code" value="<?=isset($info->code)? $info->code: ''?>" class="form-control mt-2"  type="text" placeholder="Enter code here">
                            <span class="text-danger"></span>
                        </div>
                        <div class="col-md-6">
                            <label for="address">Address</label>
                            <textarea rows="4" cols="40" name="address"><?=isset($info->address)? $info->address : ''?></textarea>
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
