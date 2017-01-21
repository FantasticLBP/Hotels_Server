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
    check();
}
function check(){
    $longid=$_POST["longid"];
    if (!isset($_POST["longid"]) || empty($_POST["longid"])) {
        echo "参数错误，信息填写不全";
        return;
    }else{
        $pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql1="select formerid from cage where cageid='".$longid."'";
        $stmt1=$pdo1->prepare($sql1);
        $stmt1->execute();
        $cageid="";
        while($row1=$stmt1->fetch()){
            $cageid=$row1['formerid'];
        }
        $res="++";
        $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql2="select * from mouseapply  where  cageid ='".$cageid."' order by id  asc ";
        $pdo2->query("set names utf8");
        $stmt2=$pdo2->prepare($sql2);
        $stmt2->execute();
        while($row2=$stmt2->fetch()){
            $res = $res.$row2['id']."++".$row2['erbiao']."++"
                .$row2['name']."++".$row2['breed']."++"
                .$row2['gene']."++" .$row2['furcolor']."++". $row2['mouseid']."++";

        }
        echo $res;
    }

}
?>