<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/11
 * Time: 下午12:00
 */
$username='hello php';
setcookie("username",$username,time()-3600*24*365);
?>