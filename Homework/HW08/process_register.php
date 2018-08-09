<?php

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
$err_email = $err_lname = $err_fname = $err_pass=$err_pass_confirm='';
$fname = $lname = $email = $isOke = '';

if(isset($_POST['btn_register']) && $_SERVER["REQUEST_METHOD"] == "POST")
{
    // CHECK USER REGISTER ACCOUNT
    $result_register = true;
    if(empty($_POST['fname'])) {
        $err_fname = "first name is required !";
    } else {
        $fname = test_input($_POST['fname']); // err_fname
        if(!preg_match("/^[a-zA-Z ]*$/",$fname)){
            $err_fname = "First name must only letters";
        }
    }

    // last name
    if(empty($_POST['lname'])) {
        $err_lname = "lirst name is required !";
    } else {
        $lname = test_input($_POST['lname']); // err_lname
        if(!preg_match("/^[a-zA-Z ]*$/",$lname)){
            $err_lname = "First name must only letters";
        }
    }

    // email
    if (empty($_POST["email"])) {
        $err_email = "Email is required";
    } else {
        $email = test_input($_POST["email"]);
        // check if e-mail address is well-formed
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $err_email = "Invalid email format";
        }
    }

    // password and href
    if(empty($_POST['pass'])) {
        $err_pass = "Password not empty!";
    } else {
        $pass = test_input($_POST['pass']);   // err_pass
        if(validatePassword($pass) === false) {
            $err_pass = "password min length 8,must includes a-z and 1-9 and $!@%^?&";
        } else {
            $pass_confirm = test_input($_POST['pass_confirm']); // err_pass_confirm
            if($pass !== $pass_confirm){
                $err_pass_confirm = 'Password not match !';
                $result_register = false;
            } else {
                if($result_register === true) {
                    require_once ('ConnectDB.php');
                    $pass = md5($_POST['pass']);
                    $email = $_POST['email'];
                    $name = $_POST['lname']." ".$_POST['fname'];

                    $options = [$pass, $email, $name];
                    $conn = new ConnectDB;
                    $sql = "insert into fs_user (password, email, name, mobile, address, dob, gender, group_id, active, code) 
                        values (?,?,?,'0907681654','Ho chi Minh City','1996-05-11',1,1,0,2)";

                    if(!$conn->executeQuery($sql, $options)) {
                        echo "insert error";
                        $isOke = false;
                    } else {
                        $isOke = true;
                    }

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
<?php if($isOke == true) {echo "<script>alert('Successfully!'); window.location.href = ('login.php')</script>"; } ?>
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
            <form action="process_register.php" method="post">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputName">First name</label>
                            <input value="<?php echo $fname;?>" name="fname" class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
                            <span class="text-danger"><?=$err_fname?></span>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputLastName">Last name</label>
                            <input value="<?php echo $lname;?>" name="lname" class="form-control" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
                            <span class="text-danger"><?=$err_lname?></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <input value="<?php echo $email;?>" name="email" class="form-control" id="exampleInputEmail1" type="text" aria-describedby="emailHelp" placeholder="Enter email">
                    <span class="text-danger"><?=$err_email?></span>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputPassword1">Password</label>
                            <input name="pass" class="form-control" id="exampleInputPassword1" type="text" placeholder="Password">
                            <span class="text-danger"><?=$err_pass?></span>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleConfirmPassword">Confirm password</label>
                            <input name="pass_confirm" class="form-control" id="exampleConfirmPassword" type="text" placeholder="Confirm password">
                            <span class="text-danger"><?=$err_pass_confirm?></span>
                        </div>
                    </div>
                </div>
                <button type="submit" name="btn_register" class="btn btn-primary btn-block" href="login.html">Register</button>
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
