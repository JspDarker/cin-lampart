<?php
ob_start();
session_start();
unset($_SESSION['name_user']);
header('location:inited.php?mod=home');