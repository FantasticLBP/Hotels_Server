<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    create();
}
//创建笼位申请信息
function create(){
    $mouseid=$_POST['mouseid'];
    $id=$_POST['id'];
    $erbiao=$_POST['erbiao'];
    $name=$_POST['name'];
    $breed=$_POST['breed'];
    $gene=$_POST['gene'];
    $furcolor=$_POST['furcolor'];

    if (!isset($_POST["mouseid"]) || empty($_POST["mouseid"])
        ||!isset($_POST["id"]) || empty($_POST["id"])
        || !isset($_POST["erbiao"]) || empty($_POST["erbiao"])
        || !isset($_POST["name"]) || empty($_POST["name"])
        ||!isset($_POST["breed"]) || empty($_POST["breed"])
        ||!isset($_POST["gene"]) || empty($_POST["gene"])
        ||!isset($_POST["furcolor"]) || empty($_POST["furcolor"])
    ) {
        echo "参数错误，信息填写不全";
        return;
    }else{
        //TODO: 获取POST表单数据并保存到数据库
        $PdoMySQL=new PdoMySQL();
        $pdo=new PdoMySQL();
        $sql="update mouseapply set id ='{$id}',erbiao ='{$erbiao}', name ='{$name}', breed ='{$breed}',gene ='{$gene}', furcolor ='{$furcolor}' where mouseid ='{$mouseid}'";
        $stmt=$pdo->query($sql);
        $result='修改失败';
        if($stmt=='1') {
            $result = '修改成功';
        }else{
            $result='修改失败';
        }
        }
    echo $result;
}
