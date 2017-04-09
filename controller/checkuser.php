<?php
//error_reporting(0);
require_once '../../model/PdoMySQL.class.php';
require_once '../../model/config.php';
$username=$_GET["username"];
$pdo=new PdoMySQL();
$sql5="select username from admin";
$stmt5=$pdo->prepare($sql5);
$stmt5->execute();
while($row5=$stmt5->fetch()){
    $usernames[]=$row5['username'];

}

if(in_array($username,$usernames)){
    $response="该账号已注册可"."<a href='../view/login.php'>直接登录</a>";
}
echo $response;
?>

