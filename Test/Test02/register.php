<?php
include_once 'php_script/process_register.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - Worldskills Travel</title>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/style.css">
</head>
<body>
<div class="wrapper">
    <header>
        <nav class="navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.html" class="navbar-brand">Worldskills Travel</a>
                </div>
                <div class="collapse navbar-collapse" id="main-navbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Welcome message</a></li>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="login.html">Log In</a></li>
                        <li><a href="register.html">Register</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-push-3">
                    <h2>Join as a Wordskills Travel Member</h2>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form method="post" role="form" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                <div class="form-group">
                                    <label class="control-label">Email Address:</label>
                                    <input name="email" type="email" class="form-control" placeholder="Enter your email address">
                                    <span class="text-danger"><?=$err_email?></span>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Password:</label>
                                    <input name="pass" type="password" class="form-control" placeholder="Enter your password">
                                    <span class="text-danger"><?=$err_pass?></span>
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Password confirm:</label>
                                    <input name="pass_confirm" type="password" class="form-control" placeholder="Enter your password confirm">
                                    <span class="text-danger"><?=$err_pass_confirm?></span>
                                </div>

                                <div class="form-group">
                                    <label class="control-label">Name:</label>
                                    <input name="name" type="text" class="form-control" placeholder="Enter your name">
                                    <span class="text-danger"><?=$err_name?></span>
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Phone Number:</label>
                                    <input name="phone" type="tel" class="form-control" placeholder="Enter your phone number">
                                    <span class="text-danger"><?=$err_phone?></span>
                                </div>
                                <div class="text-right">
                                    <button name="btn_register" type="submit" class="btn btn-primary">Register</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <footer>
        <div class="container">
            <p class="text-center">
                Copyright &copy; 2017 | All Right Reserved
            </p>
        </div>
    </footer>
</div>
<!--scripts-->
<script type="text/javascript" src="assets/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>