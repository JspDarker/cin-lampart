<div class="col1">
    <!-- Categories -->
    <div class="category">
        <div class="col1center">
            <div class="small_heading">
                <h5>Categories</h5>
            </div>
            <div class="glossymenu">
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
                <!-- Categories -->

            </div>
        </div>
        <div class="clear"></div>
        <div class="left_botm">&nbsp;</div>
    </div>
    <!-- My Cart Products -->
    <div class="clear"></div>
</div>