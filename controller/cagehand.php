<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    cagehand();
}
//创建笼位申请信息
function cagehand(){
    $cageid=$_REQUEST['cageid'];
    $username="";
        //TODO: 获取POST表单数据并保存到数据库
        $pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql1="select * from cage  where  cageid = '".$cageid."'";
        $stmt1=$pdo->prepare($sql1);
        $stmt1->execute(array($cageid));
        while($row1 = $stmt1->fetch()) {
            $num=$row1["animalsum"];
            $username=$row1['username'];


        }
    $sql12="select * from projector  where  username =".$username."";
    $pdo->query("set names utf8");
    $stmt2=$pdo->prepare($sql12);
    $stmt2->execute();
    while($row2 = $stmt2->fetch()) {
        $name=$row2['applyer'];
        $mes=$cageid."++".$name."++".$num;
    }
   echo  $mes;
}
