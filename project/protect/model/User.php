<?php
require_once "Connection.php";
class User extends Connection
{
    public function __construct()
    {
        parent::__construct();
    }

    public function check_email_exists($email)
    {
        $sql = "Select id, password, name from fs_user where email = ?";
        $options = [$email];
        $res = $this->loadOneRow($sql, $options);

        return ($res == false) ? false : $res;
    }

    public function select_user($id)
    {
        $options = [$id];
        $sql = "select name, mobile, address, dob, gender from fs_user where id = ?";
        return $this->loadOneRow($sql, $options);
    }

    public static function update_user($name,$phone,$address, $dob, $gender,$id)
    {
        $sql = "update fs_user set name = '{$name}', mobile ='{$phone}', address ='{$address}', dob ='{$dob}', gender='{$gender}' where id = '{$id}'";
        return $sql;
    }
}