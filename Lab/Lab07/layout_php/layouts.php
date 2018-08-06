<?php
require_once "../connect_db.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Master Layouts</title>
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css" integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous">
</head>
<body>

    <div class="container">
        <!-- Header -->
        <header>
            <img src="images/logo.png" alt="My Company LAMPART">
            <b><q><i>Creativity is limitless</i></q></b>
        </header>
        <!-- /.Header -->

        <!-- nav -->
        <nav id="nav-header">
            <div id="wrapper-button">
                <button id="dropdowns"><i class="fas fa-bars bars-custom"></i></button>
            </div>
            <ul>
                <li><a href="#">Trang chủ</a></li>
                <li><a href="#">Giới thiệu</a></li>
                <li><a href="#">Sản phẩm <i class="fas fa-caret-down"></i></a>
                    <ul>

                    <?php if($multi):?>
                        <?php foreach ($multi as $key =>$value):?>
                            <li><a href="#"><?=$key?> <i class="fas fa-caret-down"></i></a>
                                <ul>
                                    <?php foreach ($value as $k => $v) :?>
                                        <li><a href="#"><?=$v?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            </li>
                        <?php endforeach?>
                    <?php endif ?>

                    </ul>
                </li>
                <li><a href="#">Hướng dẫn</a></li>
                <li><a href="#">Liên hệ</a></li>
            </ul>

        </nav>
        <!-- /.nav -->

        <section id="main-content"> <!-- Main content -->
            <!-- aside -->
            <aside id="left-side">
                left
            </aside>
            <!-- /.aside -->

            <!-- article -->
            <article id="middle-strong">
                <?php  foreach ($res_product as $value):?>
                <div class="items-sp" itemid="<?=$value['id']?>">
                    <h4><?=$value['nme']?></h4>
                    <img src="images/product/<?=$value['url']?>" alt="<?=$value['alt']?>">
                    <h5><?php echo number_format($value['price'])?></h5>
                    <button>Mua</button>
                </div>
                <?php endforeach ?>
                <!--<div class="items-sp">
                    <h4>iPhone 8 Plus 64GB</h4>
                    <img src="images/iPhone8.png" alt="Iphone X 999GB Gold">
                    <h5>12,000,000 VND</h5>
                    <button>Mua</button>
                </div>

                <div class="items-sp">
                    <h4>Ten SP</h4>
                    <img src="images/iPhone8.png" alt="Iphone X 999GB Gold">
                    <h5>12,000,000 VND</h5>
                    <button>Mua</button>
                </div>

                <div class="items-sp">
                    <h4>Ten SP</h4>
                    <img src="images/iPhone8.png" alt="Iphone X 999GB Gold">
                    <h5>12,000,000 VND</h5>
                    <button>Mua</button>
                </div>

                <div class="items-sp">
                    <h4>Ten SP</h4>
                    <img src="images/iPhone8.png" alt="Iphone X 999GB Gold">
                    <h5>12,000,000 VND</h5>
                    <button>Mua</button>
                </div>

                <div class="items-sp">
                    <h4>iPhone 8 Plus Red 64GB (Đỏ)</h4>
                    <img src="images/iPhone8.png" alt="Iphone X 999GB Gold">
                    <h5>12,000,000 VND</h5>
                    <button>Mua</button>
                </div>-->

            </article>
            <!-- /.article -->


            <!-- aside -->
            <aside id="right-side">
                right
            </aside>
            <!-- /.aside -->
        </section> <!-- End Main content -->


        <!-- footer -->
        <footer>
            <b>Copyright &copy; 2017 Lampart Co.,Ltd.All Rights Reserved.</b>
        </footer>
        <!-- /.footer -->

    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="js/dropdowns.js"></script>
</body>
</html>