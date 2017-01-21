<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8"); 
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	modify();
}

function modify(){
	$username=$_POST["username"];
	$email=$_POST["email"];
	$id=$_POST['id'];
	if (!isset($_POST["username"]) || empty($_POST["username"])
		|| !isset($_POST["email"]) || empty($_POST["email"])) {
		echo "参数错误，信息填写不全";
		return;
	}else{
	$pdo=new PdoMySQL();
	$sql="UPDATE projector SET username='{$username}',email='{$email}' WHERE id={$id};";
	$stmt=$pdo->execute($sql);
	$msg="个人信息更新成功";
	
	if($stmt==1){
		echo $msg;	
	}
	}
	return json_encode($arr);
	}

?>