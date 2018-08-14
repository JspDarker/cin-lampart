<div class="col2">
    <div class="col2_top">&nbsp;</div>
    <div class="col2_center">
        <h4 class="heading colr"><?=$product->name?></h4>
        <div class="prod_detail">
            <div class="big_thumb">
                <div id="slider2">
                    <div class="contentdiv">
                        <img src="public/images/product/<?=$product->url?>" alt="<?=$product->alt?>">

                        <a rel="example_group" href="public/images/product/<?=$product->url?>" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                    </div>

                    <div class="contentdiv">
                        <img src="public/images/product/<?=$product->url?>" alt="" >
                        <a rel="example_group" href="public/images/product/<?=$product->url?>" title="Lorem ipsum dolor sit amet, consectetuer adipiscing elit." class="zoom">&nbsp;</a>
                    </div>


                </div>
                <a href="javascript:void(null)" class="prevsmall"><img src="public/images/product/<?=$product->url?>" alt="" ></a>
                <div style="float:left; width:189px !important; overflow:hidden;">
                    <div class="anyClass" id="paginate-slider2">
                        <ul>
                            <li><a href="#" class="toc"><img src="public/images/product/<?=$product->url?>" alt="<?=$product->alt?>" ></a></li>
                        </ul>
                    </div>
                </div>
                <a href="javascript:void(null)" class="nextsmall"><img src="public/images/next.gif" alt="" ></a>
                <script type="text/javascript" src="public/js/cont_slidr.js"></script>
            </div>
            <div class="desc">
                <div class="quickreview">
                    <a href="#" class="bold black left"><u>Be the first to review this product</u></a>
                    <div class="clear"></div>
                    <p class="avail"><span class="bold">Availability:</span> In stock</p>
                    <h6 class="black">Quick Overview</h6>
                    <p>
                        <?=$product->desc_pro?>
                    </p>
                </div>

                <div class="addtocart">
                    <h4 class="left price colr bold">$<?php echo round((($product->price)/1000000),2)?></h4>
                    <div class="clear"></div>
                    <ul class="margn addicons">
                        <li>
                            <a href="#">Add to Wishlist</a>
                        </li>
                        <li>
                            <a href="#">Add to Compare</a>
                        </li>
                    </ul>
                    <div class="clear"></div>
                    <ul class="left qt">
                        <li class="bold qty">QTY</li>
                        <li><input name="qty" type="text" class="bar" ></li>
                        <li><a href="cart.html" class="simplebtn"><span>Add To Cart</span></a></li>
                    </ul>
                </div>

                <div class="clear"></div>
            </div>
            <div class="prod_desc">
                <h4 class="heading colr">Product Description</h4>
                <p>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien, hendrerit non, suscipit bibendum, auctor ac, arcu. Vestibulum dapibus. Sed pede lacus, pretium in, condimentum sit amet, mollis dapibus, magna. Ut bibendum dolor nec augue. Ut tempus luctus metus. Sed a velit. Pellentesque at libero elementum ante condimentum sollicitudin. Pellentesque lorem ipsum, semper quis.  interdum et, sollicitudin eu, purus. Vivamus fringilla ipsum vel orci. Phasellus vitae massa at massa pulvinar pellentesque. Fusce tincidunt libero vitae odio. Donec malesuada diam nec mi. Integer hendrerit pulvinar ante. Donec eleifend, nisl eget aliquam congue, justo metus venenatis neque, vel tincidunt elit augue sit amet velit. Nulla facilisi. Aenean suscipit.
                </p>
            </div>
        </div>
        <div class="listing">

            <h4 class="heading colr">New Products for March 2010</h4>


            <ul>
                <?php $count=1; ?>
                <?php foreach ($pro_relationship as $list):?>
                    <li<?php echo ($count % 4 == 0) ? " class='last'" : ''; $count++?>>
                        <a itemid="<?=$list->id?>" href="?mod=detail&pro_id=<?=$list->id?>" class="thumb"><img src="public/images/product/<?=$list->url?>" alt="<?=$list->alt?>" ></a>
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
                            <a href="?mod=detail&pro_id=<?=$list->id?>" class="adcart" itemid="<?=$list->id?>">Add to Cart</a>
                            <p class="price">$<?php echo round((($list->price)/1000000),2)?></p>
                        </div>
                    </li>
                <?php endforeach?>
            </ul>
        </div>
        <div class="tags_big">
            <h4 class="heading">Product Tags</h4>
            <p>Add Your Tags:</p>
            <span><input name="tags" type="text" class="bar" ></span>
            <div class="clear"></div>
            <span><a href="#" class="simplebtn"><span>Add Tags</span></a></span>
            <p>Use spaces to separate tags. Use single quotes (') for phrases.</p>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div class="col2_botm">&nbsp;</div>
</div>
<?php include 'col_one.php'?>