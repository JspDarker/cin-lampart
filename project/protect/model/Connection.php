<?php

class Connection
{
    private $connect = NULL;
    function __construct($dbName = 'fs_shop',$user = 'dev', $password='zxcv')
    {
        try {
            $this->connect = new PDO("mysql:host=localhost;dbname=$dbName",$user,$password);
            $this->connect->exec("set names utf8");

            $this->connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            //echo "Connected successfully";
        }
        catch(PDOException $e)
        {
            die("Connection failed: " . $e->getMessage());
        }
    }

    function setStatement($sql, $options = [])
    {
        $stmt = $this->connect->prepare($sql);
        for($i = 1; $i<= count($options); $i++){
            $stmt->bindValue($i, $options[$i-1]);
            //$stmt->bindValue($i+1, $options[$i]);
        }
        return $stmt;
    }

    //sd cho lenh INSERT/UPDATE/DELETE
    function executeQuery($sql, $options = [])
    {
        $stmt = $this->setStatement($sql,$options);
        return $stmt->execute();
    }

    // sd cho cau SELECT return 1 data
    function loadOneRow($sql,$options = [])
    {
        $stmt = $this->setStatement($sql,$options);
        $check = $stmt->execute();
        if($check){
            return $stmt->fetch(PDO::FETCH_OBJ);
        }
        else return false;
    }

    //sd cho cau SELECT return more datas
    function loadMoreRows($sql,$options=[])
    {
        $stmt = $this->setStatement($sql,$options);
        $check = $stmt->execute();
        if($check){
            return $stmt->fetchAll(PDO::FETCH_OBJ);
        }
        else return false;
    }

}