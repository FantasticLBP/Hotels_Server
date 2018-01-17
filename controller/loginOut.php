<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/26
 * Time: 上午9:43
 */
if(!isset($_SESSION)){
    session_id("login");
    session_start();
}
logut();
function logut(){
    $_SESSION['username']="";
    $_SESSION['password']="";
    $_SESSION['usertype']="";
}
echo'<script language="JavaScript">window.location.href="../view/login.php";</script>';
?>