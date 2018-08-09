<?php
session_start();
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

$err_email=$err_pass='';
$email = '';


if(isset($_POST['form_login']) && $_SERVER["REQUEST_METHOD"] == "POST")
{
    $pass = test_input($_POST['pass']);   // err_pass
    $result_register = true;

    if(empty($_POST['pass'])) {
        $err_pass = "Password not empty!";
    }
    // email
    if (empty($_POST["email"])) {
        $err_email = "Email is required";
        //$err_pass = "Password not empty!";
    } else {
        $email = test_input($_POST["email"]);
        // check if e-mail address is well-formed
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $err_email = "Invalid email format";
        } else {

            require_once "ConnectDB.php";
            $conn = new ConnectDB;
            $sql = "select email,password,id from fs_user where email = ?";
            $options = [$email];
            $user_exist = $conn->loadOneRow($sql,$options);
            if(!$user_exist) {
                $err_email = "Email k ton tai trong db";
            } else {
                $pass_user = $user_exist->password;
                if($pass_user === md5($pass)) {
                    $_SESSION['user_id'] = $user_exist->id;
                    header('location:welcome.php');
                } else {
                    $err_pass = "Pass k dung";
                }
            }

        }
    }

    // password and href
    if(empty($_POST['pass'])) {
        $err_pass = "Password not empty!";
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
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">
            <form id="form-login" method="post" action="process_login.php">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input name="email" value="<?php echo $email;?>" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Enter email">
                    <span class="text-danger"><?=$err_email?></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input name="pass" class="form-control" id="exampleInputPassword1" type="text" placeholder="Password">
                    <span class="text-danger"><?=$err_pass?></span>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox"> Remember Password</label>
                    </div>
                </div>
                <button name="form_login" class="btn btn-primary btn-block" type="submit">Login</button>
            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="register.html">Register an Account</a>
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
<script>
    $(function () {
        $('#form-login').on('submit', function(e){
            return true;
        })
    })
</script>
</body>

</html>

