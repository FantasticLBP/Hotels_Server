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
	$id=$_POST['id'];
	$erbiao=$_POST['erbiao'];
	$username=$_POST['username'];
	$animalName=$_POST['animalName'];
	$breed=$_POST['breed'];
	$gene=$_POST['gene'];
	$furcolor=$_POST['furcolor'];
	$table="cageapply";
	if($gene=='纯合'){
		$gene=1;
	}else if($gene=='杂合'){
		$gene=2;
	}else{
		$gene=3;
	}
	if (!isset($_POST["id"]) || empty($_POST["id"])
		|| !isset($_POST["erbiao"]) || empty($_POST["erbiao"])
		|| !isset($_POST["username"]) || empty($_POST["username"])
		|| !isset($_POST["animalName"]) || empty($_POST["animalName"])
		||!isset($_POST["breed"]) || empty($_POST["breed"])
		||!isset($_POST["gene"]) || empty($_POST["gene"])
		||!isset($_POST["furcolor"]) || empty($_POST["furcolor"])
		) {
		echo "参数错误，信息填写不全";
		return;
	}else{
	//TODO: 获取POST表单数据并保存到数据库		
	$PdoMySQL=new PdoMySQL();
	date_default_timezone_set('PRC');
	$time= date('Y-m-d H:i:s');
	$data=compact('id','erbiao','username','animalName','breed','gene','furcolor','0','0','0','','time','');
	$res=$PdoMySQL->add($data, $table);
	$lastInsertId=$PdoMySQL->getLastInsertId();
	if($res){
		$result="保存成功";		
	}
}
	echo $result;
}
