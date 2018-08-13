<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home - Worldskills Travel</title>
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/jquery-ui.css">
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
            <br>
            <ul class="nav nav-tabs">
                <li><a data-toggle="tab" href="#hotel-tab">Hotel Booking</a></li>
            </ul>
            <div class="tab-content">
                <div id="hotel-tab" class="tab-pane fade in active">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <form role="form" action="hotel-list.html">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <div>
                                            <h4 class="form-heading">1. Destination / Hotel Name</h4>
                                            <div class="form-group">
                                                <input type="search" placeholder="City" class="form-control">
                                            </div>
                                        </div>
                                        <div>
                                            <h4 class="form-heading">2. Duration of Stay</h4>
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Check In:</label>
                                                            <input type="text" placeholder="Choose Check In Date" class="datepicker form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Check Out:</label>
                                                        <input type="text" placeholder="Choose Check Out Date" class="datepicker form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <h4 class="form-heading">3. Search Hotels</h4>
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label">Total Person:</label>
                                                    <select class="form-control">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label">Total Room:</label>
                                                    <select class="form-control">
                                                        <option value="1">1</option>
                                                        <option value="2">2</option>
                                                        <option value="3">3</option>
                                                        <option value="4">4</option>
                                                        <option value="5">5</option>
                                                        <option value="6">6</option>
                                                        <option value="7">7</option>
                                                        <option value="8">8</option>
                                                        <option value="9">9</option>
                                                        <option value="10">10</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary btn-block">Search Hotels</button>
                                        </div>
                                    </div>
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
<script type="text/javascript" src="assets/bootstrap/jquery-ui.js"></script>
<script>
    $(function() {
        $('.datepicker').datepicker({
            dateFormat: 'dd-mm-yy',//check change
            changeMonth: true,
            changeYear: true,
        });
    })
</script>
</body>
</html>