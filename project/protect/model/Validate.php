<?php
/**
 * Created by PhpStorm.
 * User: nhat_thanh
 * Date: 8/15/2018
 * Time: 2:35 PM
 */

class Validate
{
    public static function checkName($field)
    {
        if(empty($field)) {
            return 'Name is required !';
        }
        if(!preg_match('/^([a-z ])+$/i',$field)) {
            return 'Name only characters !';
        } else {
            $pattern = '/\s+/';
            $replacement = ' ';
            $string = trim($field);
            if(strlen(preg_replace($pattern,$replacement,$string)) < 5) {
                return 'name must lager 5 characters';
            }
        }
        return false;
    }

    public function checkEmail($field)
    {
        if(empty($field)) {
            return 'Email is required !';
        }
        if( ! filter_var($field,FILTER_VALIDATE_EMAIL)) {
            return 'Email invalid !';
        }
        return false;
    }

    public function checkPassword($field)
    {
        if(empty($field)) {
            return 'Password is required !';
        }
        if(preg_match('/\s/',$field)) {
            return 'Password no whitespace !';
        } else {
            $flag1 = $flag2= $flag3=$flag4=0; // get 3 in 4
            if( preg_match('/[0-9]/', $field)) {
                $flag1 = 1;
            }
            if( preg_match('/[a-z]/',$field)) {
                $flag2 = 1;
            }
            if ( preg_match('/[A-Z]/', $field)) {
                $flag3 = 1;
            }
            if ( preg_match('/[!@#$%^&*]/', $field)) {
                $flag4 = 1;
            }
            if(($flag1 + $flag2 + $flag3 + $flag4) < 3) {
                return 'password not strong';
            }
        }
        return false;
    }
    public function checkPassConfirm($pass, $pass_confirm)
    {
        if(empty($pass_confirm)) {
            return 'Field is required !';
        }
        return ($pass != $pass_confirm) ? 'Password confirm not same !' : false;
    }

}