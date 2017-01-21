<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/14
 * Time: 上午11:36
 */
session_start();
error_reporting(0);
date_default_timezone_set(PRC);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    add();
}


//创建笼位申请信息
function add()
{
    $cageid = date("Ymd");
    $username=$_SESSION['username'];
    $pdo = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
    $sql = "select cageid  from cageapply where cageid like '" . $cageid . "%' order by cageid desc";
    echo $sql;
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $i = 0;
    $row = $stmt->fetch();
    if(!empty($row)){
        echo '1';

            $i=substr($row['cageid'],8);
            $i++;
            echo '哈哈'.$i;

    }else{
        $i=0;
        echo "嘻嘻".$i;
    }




    if($i<10){
        $cageid=$cageid."000".$i;
    }else if($i<100){
        $cageid=$cageid."00".$i;
    }else if($i<1000){
        $cageid=$cageid."0".$i;
    }else{
        echo "报错";
    }
    $table='cageapply';
    $PdoMySQL=new PdoMySQL();
    $data=compact('cageid','username');
    $res=$PdoMySQL->add($data, $table);
    $lastInsertId=$PdoMySQL->getLastInsertId();
    if($res){
        echo'<script language="JavaScript">window.location.href="../view/cageApply.php?id='.$cageid.'";</script>';
    }
}
?>