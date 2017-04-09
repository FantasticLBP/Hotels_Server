<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/13
 * Time: 上午12:40
 */
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    inCheck();
}
function inCheck(){
    $mid=$_REQUEST["mid"];
    if (!isset($_REQUEST["mid"]) || empty($_REQUEST["mid"])) {
        echo "参数错误，信息填写不全";
        return;
    }else{
        $pdo=new PdoMySQL();
        $sql1="select * from instruction  where  mouseid ='".$mid."'";
        $pdo->query("set names utf8");
        $stmt1=$pdo->prepare($sql1);
        $stmt1->execute();
        $res="++";
        while($row1=$stmt1->fetch()){
            $res=$res.$row1['txt']."++".$row1['time']."++".$row1['state']."++";
        }
        echo $res;
    }
}
?>