<!-- Column2 Section -->
<div class="col2">
    <div class="col2_top">&nbsp;</div>
    <div class="col2_center">
        <h4 class="heading colr">Featured Products</h4>
        <div id="prod_scroller">
            <a href="javascript:void(null)" class="prev">&nbsp;</a>
            <div class="anyClass scrol">
                <ul>
                    <?php foreach ($pro_feature as $product):?>
                    <li>
                        <a href="detail.html"><img src="public/images/product/<?=$product->url?>" alt="<?=$product->alt?>" ></a>
                        <h6 class="colr"><?=$product->name?></h6>
                        <p class="price bold">$<?php echo round((($product->price)/1000000),2)?></p>
                        <a href="cart.html" class="adcart">Add to Cart</a>
                    </li>
                    <?php endforeach?>
                </ul>
            </div>
            <a href="javascript:void(null)" class="next">&nbsp;</a>
        </div>
        <div class="clear"></div>
        <div class="listing">
            <h4 class="heading colr">New Products for March 2010</h4>
            <ul>
                <?php $count=1; ?>
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