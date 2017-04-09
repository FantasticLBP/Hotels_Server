<?php
//开启session
session_id("login");
session_start();
date_default_timezone_set('PRC');
header('content-type:text/html;charset=utf-8');

//1.包含所需文件
error_reporting(0);
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';


//对输入的转义
if (!function_exists(get_magic_quotes_gpc) || !get_magic_quotes_gpc()) {
    foreach (array('_COOKIE', '_POST', '_GET') as $v) {
        foreach ($$v as $kk => $vv) {
            $kk{0} != '_' && $$v[$kk] = addslashes($vv);
        }
    }
}

//2.接收信息
$act = $_GET['act'];
$username = addslashes($_POST['username']);
$password = base64_encode($_POST['password']);
$status = '0';
$rememberUser = $_POST["rememberUser"];
//$rememberUser=='on'用户选择了记住密码


$table1 = 'admin';

//3.得到连接对象
$PdoMySQL = new PdoMySQL();
if ($act === 'login') {

    $_SESSION["username"] = $username;
    $_SESSION["password"] = $password;
    //记住密码,自动登录

    //session开始，存储用户信息
    if ($username == "") {
        echo '<script language="JavaScript">window.alert("请输入用户名"),location.href="../view/login.php?viewFlag=login-box";</script>';
    } else if ($password == "") {
        echo '<script language="JavaScript">window.alert("请输入密码"),location.href="../view/login.php?viewFlag=login-box";</script>';
    }
    $pdo = new PdoMySQL();
    $allrows = $pdo->find($table1,"username='$username' and password='$password'");
    if ($allrows[0]['username'] !== "") {
        echo '<script>window.location.href="../view/index.php";</script>';

    } else {
        echo '<script language="JavaScript">window.alert("账号或密码错误"),location.href="../view/login.php";</script>';
    }

} else if ($act === "reg") {
    if ($username == "") {
        echo '<script language="JavaScript">window.alert("请输入用户名"),location.href="../view/login.php?viewFlag=signup-box";</script>';
    } else if ($password == "") {
        echo '<script language="JavaScript">window.alert("请输入密码"),location.href="../view/login.php?viewFlag=signup-box";</script>';
    }
    //	$regtime= date('Y-m-d H:i:s');
    $data = compact('username', 'password');
    $res = $PdoMySQL->add($data, "admin");
    $lastInsertId = $PdoMySQL->getLastInsertId();
    if ($res) {
        echo '<script language="JavaScript">window.alert("注册成功，请登陆"),location.href="../view/login.php";</script>';
    }
} else if ($act === 'seek') {
    if ($email == "") {
        echo '<script language="JavaScript">window.alert("请注册时的邮箱便于您找回密码"),location.href="../view/login.php?viewFlag=forgot-box";</script>';
    }
    try {
        echo '<script language="JavaScript">window.alert("try1");</script>';
        $pdo = new PdoMySQL();
        $sql = "select * from projector where email=?";
        $stmt = $pdo->prepare($sql);
        $stmt->execute(array($email));
        echo '<script language="JavaScript">window.alert("try2");</script>';

        while ($row = $stmt->fetch()) {
            $username1 = $row['username'];
            $password = base64_decode($row['password']);
        }
        echo '<script language="JavaScript">window.alert("try3");</script>';
        echo '<script language="JavaScript">window.alert($username1);</script>';
        echo '<script language="JavaScript">window.alert($password);</script>';
        //发送邮件，以QQ邮箱为例
        //配置邮件服务器，得到传输对象

    } catch (PDOException $e) {
        echo $e->getMessage();
    }

}
?>