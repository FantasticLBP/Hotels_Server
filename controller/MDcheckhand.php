<?php
session_id("login");
session_start();
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    chechhand();
}
function chechhand(){
    $st=$_REQUEST['re'];
    $insid=$_REQUEST['insid'];


    if (!isset($_REQUEST['re']) || empty($_REQUEST['re'])||!isset($_REQUEST['insid']) || empty($_REQUEST['insid'])) {
        echo "参数错误，信息填写不全";
        return;
    }else {
        //TODO: 获取POST表单数据并保存到数据库
        $PdoMySQL = new PdoMySQL();
        $pdo = new PdoMySQL();
        $sql = "update instruction set state ='{$st}' where insid ='{$insid}'";
        $stmt = $pdo->query($sql);
        if ($stmt == '1') {
            if($st=="4"){
                $finishNum=$_SESSION['finishNum'];
                $finishNum+=1;
                $_SESSION['finishNum']=$finishNum;
                echo'<script language="JavaScript">window.alert("操作成功"),location.href="../view/workercheck.php";</script>';
            }else{
                echo'<script language="JavaScript">window.alert("操作成功"),location.href="../view/MDcheck.php";</script>';
            }
        }

    }
}
