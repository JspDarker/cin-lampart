
        <h2 class="heading colr">Login</h2>
        <div class="login">
            <div class="registrd">
                <h3>Please Sign In</h3>
                <p>If you have an account with us, please log in.</p>

                <form method="post" action="?mod=login">
                    <ul class="forms">
                        <li class="txt">Email Address <span class="req">*</span></li>
                        <li class="inputfield">
                            <input value="<?=$email?>" type="text" name="email" class="bar" ><br>
                            <span class="text-danger"><?=$err_email?></span>
                        </li>
                    </ul>
                    <ul class="forms">
                        <li class="txt">Password <span class="req">*</span></li>
                        <li class="inputfield">
                            <input type="password" name="pass" class="bar" ><br>
                            <span class="text-danger"><?=$err_pass?></span>
                        </li>
                    </ul>
                    <ul class="forms">
                        <li class="txt">&nbsp;</li>
                        <li>
                            <button type="submit" name="btn_login">Login</button>
                            <a href="#" class="forgot">Forgot Your Password?</a>
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