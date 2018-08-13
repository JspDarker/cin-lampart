<div class="content_sec">
    <!-- Column2 Section -->
    <div class="col2">
        <div class="col2_top">&nbsp;</div>
        <div class="col2_center">
            <h4 class="heading colr">Featured Products</h4>
            <div id="prod_scroller">
                <a href="javascript:void(null)" class="prev">&nbsp;</a>
                <div class="anyClass scrol">
                    <ul>



                        <li>
                            <a href="detail.html"><img src="public/images/prod1.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>



                        <li>
                            <a href="detail.html"><img src="public/images/prod2.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod3.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod1.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod2.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod3.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod1.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                        <li>
                            <a href="detail.html"><img src="public/images/prod2.gif" alt="" ></a>
                            <h6 class="colr">Tsovet Watch</h6>
                            <p class="price bold">$510</p>
                            <a href="cart.html" class="adcart">Add to Cart</a>
                        </li>
                    </ul>
                </div>
                <a href="javascript:void(null)" class="next">&nbsp;</a>
            </div>
            <div class="clear"></div>

            <!-- Home needle -->
            <div class="listing">
                <h4 class="heading colr">New Products for March 2010</h4>
                <ul>
                    <?php $count = 1;
                    // $POS = ($p-1)*20
                    // tong so sp theo loai
                    //ceil(1.001) = 2;
                    // floor()
                    // get_page($cond, $page, $porduct_per_page)
                    // $pos = ($page-1)*$porduct_per_page
                    //count_page(product, total_page,
                    // xap sep
                    //
                    ?>
                    <?php foreach ($lists as $list):?>
                        <li<?php echo ($count % 4 == 0) ? " class='last'" : ''; $count++?>>
                            <a itemid="<?=$list->id?>" href="detail.html" class="thumb"><img src="public/images/product/<?=$list->url?>" alt="<?=$list->alt?>" ></a>
                            <h6 class="colr"><?=$list->name?></h6>
                            <div class="stars">
                                <a href="#"><img src="public/images/star_green.gif" alt="" ></a>
                                <a href="#"><img src="public/images/star_green.gif" alt="" ></a>
                                <a href="#"><img src="public/images/star_green.gif" alt="" ></a>
                                <a href="#"><img src="public/images/star_green.gif" alt="" ></a>
                                <a href="#"><img src="public/images/star_grey.gif" alt="" ></a>
                                <a href="#">(<?=$list->view?>) Reviews</a>
                            </div>
                            <div class="addwish">
                                <a href="#">Add to Wishlist</a>
                                <a href="#">Add to Compare</a>
                            </div>
                            <div class="cart_price">
                                <a href="cart.html" class="adcart" itemid="<?=$list->id?>">Add to Cart</a>
                                <p class="price">$<?php echo round((($list->price)/1000000),2)?></p>
                            </div>
                        </li>
                    <?php endforeach?>

                </ul>
            </div>
        </div>
        <div class="clear"></div>
        <div class="col2_botm">&nbsp;</div>
    </div>


    <!-- Column1 Section -->
    <div class="col1">
        <!-- Categories -->
        <div class="category">
            <div class="col1center">
                <div class="small_heading">
                    <h5>Categories</h5>
                </div>
                <div class="glossymenu">
                    <?php foreach ($menus as $cate => $menu): ?>
                        <a class="menuitem submenuheader" href="#" ><?=$cate?></a>
                        <div class="submenu">
                            <ul>
                                <?php foreach ($menu as $menu_child): ?>
                                    <li><a href="categories.html" itemid="<?=$menu_child->fc_id?>"><?=$menu_child->fc_name?></a></li>
                                <?php endforeach?>
                            </ul>
                        </div>
                    <?php endforeach?>
                </div>
            </div>
            <div class="clear"></div>
            <div class="left_botm">&nbsp;</div>
        </div>


        <!-- My Cart Products -->
        <div class="mycart">
            <div class="col1center">
                <div class="small_heading">
                    <h5>My Cart</h5>
                    <div class="clear"></div>
                    <span class="veiwitems">(3) Items - <a href="cart.html" class="colr">View Cart</a></span>
                </div>
                <ul>
                    <li>
                        <p class="bold title">
                            <a href="detail.html">Armani Tweed Blazer</a>
                        </p>
                        <div class="grey">
                            <p class="left">QTY: <span class="bold">3</span></p>
                            <p class="right">Price: <span class="bold">$200</span></p>
                        </div>
                    </li>
                    <li>
                        <p class="bold title">
                            <a href="detail.html">Armani Tweed Blazer</a>
                        </p>
                        <div class="grey">
                            <p class="left">QTY: <span class="bold">3</span></p>
                            <p class="right">Price: <span class="bold">$200</span></p>
                        </div>
                    </li>
                    <li>
                        <p class="bold title">
                            <a href="detail.html">Armani Tweed Blazer</a>
                        </p>
                        <div class="grey">
                            <p class="left">QTY: <span class="bold">3</span></p>
                            <p class="right">Price: <span class="bold">$200</span></p>
                        </div>
                    </li>
                </ul>
                <p class="right bold sub">Sub total: $600</p>
                <div class="clear"></div>
                <a href="#" class="simplebtn right"><span>Checkout</span></a>
            </div>
            <div class="clear"></div>
            <div class="left_botm">&nbsp;</div>
        </div>

        <div class="poll">
            <div class="col1center">
                <div class="small_heading">
                    <h5>Poll</h5>
                </div>
                <p>What is your favorite Magento feature?</p>
                <ul>
                    <li><input name="layerd" type="radio" value="" > Layered Navigation</li>
                    <li><input name="price" type="radio" value="" > Price Rules</li>
                    <li><input name="category" type="radio" value="" > Category Management</li>
                    <li><input name="compare" type="radio" value="" > Compare Products</li>
                </ul>
                <a href="#" class="simplebtn"><span>Vote</span></a>
            </div>
            <div class="clear"></div>
            <div class="left_botm">&nbsp;</div>
        </div>
        <div class="clear"></div>
    </div>
</div>