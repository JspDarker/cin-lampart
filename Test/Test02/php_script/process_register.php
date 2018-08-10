<?php
require_once ('ConnectDB.php');
$conn = new ConnectDB;
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
$err_email = $err_name=$err_pass=$err_pass_confirm=$err_phone ='';
$name = $name = $email = $isOke = '';

if(isset($_POST['btn_register']) && $_SERVER["REQUEST_METHOD"] == "POST")
{
    // CHECK USER REGISTER ACCOUNT
    $result_register = true;


    // last name
    if(empty($_POST['name'])) {
        $err_name = "name is required !";
    } else {
        $name = test_input($_POST['name']); // err_lname
        if(!preg_match("/^[a-zA-Z ]*$/",$name)){
            $err_name = "name must only letters";
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


//                                $pass = md5($_POST['pass']);
//                                $email = $_POST['email'];
//                                $name = $_POST['name'];
//                                $phone = $_POST['phone'];
//                                $options = [$name, $email, $pass,$phone];
//
//
//                                $sql = "insert into user (name,email password,phone)
//                        values (?,?,?,?)";
//
//                                if(!$conn->executeQuery($sql, $options)) {
//                                    echo "insert error";
//                                    $isOke = false;
//                                } else {
//                                    $isOke = true;
//                                }

                                echo "OKE Co the insert";
//                                echo "<pre>";
//                                var_dump($_POST);
//                                print_r($_SESSION);
//                                echo "</pre>";
                                //die;
                            }
                        }
                    }
                }

                /*if($result_register === true) {
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

                }*/
            }
        }
    }


}


?>