<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/8
 * Time: 下午11:06
 */
if(!isset($_SESSION)){
    session_id("login");

    session_start();
}
header("Content-Type","text/html;charset=utf-8");
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
require_once '../model/pwd.php';
if (!isset($_POST["username"]) || empty($_POST["username"])
    ||!isset($_POST["tablename"]) || empty($_POST["tablename"])
    || !isset($_POST["password"]) || empty($_POST["password"])
    || !isset($_POST["email"]) || empty($_POST["email"])
    || !isset($_POST["projecterHandler"]) || empty($_POST["projecterHandler"])|| !isset($_POST["currentUsername"]) || empty($_POST["currentUsername"])) {
    echo '<script language="JavaScript">window.alert("参数错误,用户信息不完整"),location.href="../view/profile.php";</script>';
    return;
}
if($_SERVER["REQUEST_METHOD"]=="POST"){
    update();
}
function update(){
    if (!isset($_POST["username"]) || empty($_POST["username"])
        ||!isset($_POST["tablename"]) || empty($_POST["tablename"])
        || !isset($_POST["password"]) || empty($_POST["password"])
        || !isset($_POST["email"]) || empty($_POST["email"])
        || !isset($_POST["projecterHandler"]) || empty($_POST["projecterHandler"])) {
        echo "参数错误,用户信息不完整";
        return;
    }else{
        $tablename=$_POST["tablename"];
        $username=$_POST["username"];
        $password=base64_encode($_POST["password"]);
        $email=$_POST["email"];
        $projecterHandler=$_POST["projecterHandler"];
        $currentUsername=$_POST["currentUsername"];

        if($tablename=="projector"){
            $sessiontab="sessionTab";
        }else if($tablename=="worker"){
            $sessiontab="sessionTab1";
        }else if($tablename=="doctor"){
            $sessiontab="sessionTab2";
        }
        $pdo=new PdoMySQL();
        $sql="UPDATE ".$tablename." SET username='{$username}',password='{$password}',email='{$email}',projectername='{$projecterHandler}' WHERE  username='{$currentUsername}' ";
        $stmt=$pdo->query($sql);
        if($stmt=='1'){
            $_SESSION["username"]=$username;
            $_SESSION["password"]=$password;
            echo "用户信息修改成功";
        }else{
            //echo '<script language="JavaScript">window.alert("用户信息修改失败"),location.href="../view/profile.php";</script>';
            echo "用户信息修改失败";
        }
    }
}

?>




