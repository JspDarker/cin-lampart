<?php require_once 'db_connect.php' ;?>
<!doctype html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, inital-scale=1.0">
<title>Listing</title>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
</head>
<body>
<div id="wrapper">
	<header id="header">
		<img src="image/logo.png" alt="logo lampart">
		<span class="slogan">“Creativity is limitless”</span>
	</header>
    <nav id="menu">
		<button><i class="fa fa-bars fa-2x"></i></button>
		<form action="search.php" id="search">
			<input type="search" placeholder="Tìm kiếm" name="keyword">
			<button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
		</form>
    	<ul>
        	<li><a href="#">Trang chủ</a></li>
            <li><a href="#">Giới thiệu</a></li>
            <li><a href="#">Sản phẩm <i class="fa fa-caret-down" aria-hidden="true"></i></a>
            	<ul>
                    <?php foreach ($menu as $key => $value):?>
                    <li><a href="#"><?=$key;?> <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                        <ul>
                            <?php foreach ($value as $k => $val):?>
                            <li><a href="listing.php?cate_id=<?=$val['fc_id'];?>"><?=$val['fc_name'];?></a></li>
                            <?php endforeach;?>
                        </ul>
                    </li>
                    <?php endforeach;?>
                </ul>
            </li>
            <li><a href="login.html">Đăng nhập</a></li>
            <li><a href="#">Liên hệ</a></li>
        </ul>		
    </nav>

    <div class="flex-main">
        <aside id="left">left</aside>
        <section id="main">
            <?php if(isset($result_item)): ?>
            <div class="single-product">
                <div class="product">
                    <h2><?=$result_item['pro_name'];?></h2>
                    <img src="image/product/<?=$result_item['url_img'];?>" alt="<?=$result_item['alt_img'];?>">
                    <h3><?=$result_item['pro_price'];?> VND </h3>

                    <button>Mua</button>
                </div>
                <div class="info-product">

                </div>
            </div>
            <?php endif; ?>
        </section>
        <aside id="right">right</aside>
    </div>
    <footer id="footer">Copyright © 2018 Lampart Co., Ltd. All Rights Reserved.</footer>
</div>
</body>
</html>