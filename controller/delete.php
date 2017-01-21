<?php
//设置页面内容是html编码格式是utf-8
error_reporting(0);
header("Content-Type: text/html;charset=utf-8"); 
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
if ($_SERVER["REQUEST_METHOD"] == "GET") {
	delete();
}
function delete(){
	$username = $_GET["username"];
	$table=$_GET["tablename"];
	if (!isset($_GET["username"]) || empty($_GET["username"])||!isset($_GET["tablename"]) || empty($_GET["tablename"])) {
		echo "参数错误";
		return;
	}

	$pdo=new PdoMySQL();
	$sql="DELETE  FROM {$table} WHERE username='$username'";
	$stmt=$pdo->query($sql);
	if($stmt=='1'){
		echo '<script language="javascript">window.alert("删除成功！"),location.href="../admin/account.php";</script>';
	}else{
		echo '<script language="JavaScript">window.location.href="../view/500.php";</script>';
	}
}


