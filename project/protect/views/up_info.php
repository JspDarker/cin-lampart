<?php

//var_dump($user);


?>
<h2 class="heading colr">Update</h2>

<div class="login">
    <div class="registrd">
        <h3>Please Update</h3>
        <p>If you have an account with us, please log in.</p>

        <form method="post" action="?mod=up_info">
            <ul class="forms">
                <li class="txt">Name <span class="req">*</span></li>
                <li class="inputfield">
                    <input value="<?=isset($user->name)?$user->name:''?>" type="text" name="name" class="bar" ><br>
                    <span class="text-danger"><?=isset($err_name)?$err_name:''?></span>
                </li>
            </ul>
            <ul class="forms">
                <li class="txt">Number Phone</li>
                <li class="inputfield"><input type="text" name="phone" class="bar" value="<?=isset($user->mobile)?$user->mobile:''?>">
                    <br><span class="error"></span>
                </li>
            </ul>
            <ul class="forms">
                <li class="txt">Address</li>
                <li class="inputfield"><textarea name="address" cols="28" rows="5"><?=isset($user->address)?$user->address:''?></textarea><br>
                </li>
            </ul>
            <ul class="forms">
                <li class="txt">DOB </li>
                <li class="inputfield">
                    <input value="<?=isset($user->dob)?$user->dob:''?>" type="date" name="dob" class="datepicker bar" ><br>
                </li>
            </ul>

            <ul class="forms">
                <li class="txt">Gender</li>
                <li class="radiobtn">
                    <input type="radio" <?=isset($user->gender)&&($user->gender==0)?"checked":""?> name="gender" class="radiobtn" value="0" > Male
                </li>
                <li class="radiobtn"><input <?=isset($user->gender)&&($user->gender==1)?"checked":""?> type="radio" name="gender" class="text" value="1"> Female</li>
            </ul>


            <ul class="forms">
                <li class="txt">&nbsp;</li>
                <li>
                    <button type="submit" name="btn_update">Update info</button>
                    <!--<a href="#" class="forgot">Forgot Your Password?</a>-->
                </li>
            </ul>
        </form>

    </div>
    <div class="newcus">
        <h3>Please Sign In</h3>
        <p>
            By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.
        </p>
        <a href="#" class="simplebtn"><span>Register</span></a>
    </div>
</div>
<div class="clear"></div>
</div>
<div class="clear"></div>
<div class="col3_botm">&nbsp;</div>
</div>