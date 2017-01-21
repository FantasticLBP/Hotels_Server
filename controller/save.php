<?php
header("Content-Type: text/html;charset=utf-8");
require_once '../swiftmailer-master/lib/swift_required.php';
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
require_once '../model/pwd.php';
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    create();
}
function create(){
    $username=$_REQUEST["usernamePass"];
    $password=base64_encode($_REQUEST["usernamePass"]);
    $email=$_REQUEST["emailPass"];
    $mobilephone=$_REQUEST["mobilephonePass"];
    $table=$_REQUEST["tablename"];
    $preusername=$_REQUEST['preusername'];
    if (!isset($_REQUEST["usernamePass"]) || empty($_REQUEST["usernamePass"])
        || !isset($_REQUEST["usernamePass"]) || empty($_REQUEST["usernamePass"])
        || !isset($_REQUEST["emailPass"]) || empty($_REQUEST["emailPass"])
        ||!isset($_REQUEST["mobilephonePass"]) || empty($_REQUEST["mobilephonePass"])
        ||!isset($_REQUEST["tablename"]) || empty($_REQUEST["tablename"])
        ||!isset($_REQUEST["preusername"]) || empty($_REQUEST["preusername"])) {
        echo "参数错误，用户信息填写不全";
        return;
    }
    else{
        $pdo=new PdoMySQL();
        $sql="UPDATE {$table} SET username='{$username}',password='{$password}',email='{$email}',mobilephone='{$mobilephone}' WHERE username='{$preusername}';";
        $stmt=$pdo->query($sql);
        echo '<script language="JavaScript">window.alert("信息更新成功"),location.href="../admin/account.php";</script>';
        if($stmt=='1'){
            echo'<script language="JavaScript">window.alert("信息更新成功"),location.href="../admin/account.php";</script>';
        }else{
            echo '<script language="JavaScript">window.alert("请重新修改信息"),location.href="../admin/account.php";</script>';
        }
        echo "信息更新成功";
    }
}
?>
