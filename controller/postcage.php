<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    post();
}
//创建笼位申请信息
function post(){
    $id=$_REQUEST['id'];


    if (!isset($_REQUEST['id']) || empty($_REQUEST['id'])
    ) {
        echo "参数错误，信息填写不全";
        return;
    }else {
        //TODO: 获取POST表单数据并保存到数据库
        $PdoMySQL = new PdoMySQL();
        $pdo = new PdoMySQL();
        $sql = "update cageapply set ispost = 1 where cageid ='{$id}'";
        $stmt = $pdo->query($sql);
        if ($stmt == '1') {
            echo'<script language="JavaScript">window.alert("提交成功"),location.href="../view/cageApply.php";</script>';

        }else{
            echo'<script language="JavaScript">window.alert("提交失败"),location.href="../view/cageApply.php";</script>';
        }

    }
}
