<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    delete();
}
//创建笼位申请信息
function delete(){
    $id=$_REQUEST['id'];
    $ps=$_REQUEST['page'];


    if (!isset($_REQUEST['id']) || empty($_REQUEST['id'])
        ||!isset($_REQUEST['page']) || empty($_REQUEST['page'])
    ) {
        echo "参数错误，信息填写不全";
        return;
    }else{
        //TODO: 获取POST表单数据并保存到数据库
        $PdoMySQL=new PdoMySQL();
        $pdo=new PdoMySQL();
        $sql1="delete from mouseapply where cageid ='{$id}'";
        $sql2="delete from cageapply where cageid = '{$id}'";
        $stmt1=$pdo->query($sql1);
        $stmt2=$pdo->query($sql2);

        if($stmt1=='1'&&$stmt2=='1') {
            if($ps=="2"){
                echo'<script language="JavaScript">window.alert("删除成功"),location.href="../view/applystate.php";</script>';
            }else{
                echo'<script language="JavaScript">window.alert("删除成功"),location.href="../view/cageApply.php";</script>';
            }
        }else{
            echo'<script language="JavaScript">window.alert("删除失败");</script>';

        }

    }

}
