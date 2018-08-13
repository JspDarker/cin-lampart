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
                                <li><a href="?mod=listing&id_cate=<?=$menu_child->fc_id?>" itemid="<?=$menu_child->fc_id?>"><?=$menu_child->fc_name?></a></li>
                            <?php endforeach?>
                        </ul>
                    </div>
                <?php endforeach?>
            </div>
        </div>
        <div class="clear"></div>
        <div class="left_botm">&nbsp;</div>
    </div>

    <!-- My Cart Products |||| SHOPPING CART -->
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