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
	$cageid=$_POST['cageid'];
	$id=$_POST['id'];
	$erbiao=$_POST['erbiao'];
	$name=$_POST['name'];
	$breed=$_POST['breed'];
	$gene=$_POST['gene'];
	$furcolor=$_POST['furcolor'];
	$num=$_POST['num'];
	$mouseid=$cageid."00".$num;
	$table="mouseapply";

	if (!isset($_POST["cageid"]) || empty($_POST["cageid"])
			||!isset($_POST["id"]) || empty($_POST["id"])
		|| !isset($_POST["erbiao"]) || empty($_POST["erbiao"])
		|| !isset($_POST["name"]) || empty($_POST["name"])
		||!isset($_POST["breed"]) || empty($_POST["breed"])
		||!isset($_POST["gene"]) || empty($_POST["gene"])
		||!isset($_POST["furcolor"]) || empty($_POST["furcolor"])
			||!isset($_POST["num"]) || empty($_POST["num"])
		) {
		echo "参数错误，信息填写不全";
		return;
	}else{
	//TODO: 获取POST表单数据并保存到数据库
	$PdoMySQL=new PdoMySQL();
	$data=compact('mouseid','cageid','id','erbiao','name','breed','gene','furcolor');
	$res=$PdoMySQL->add($data, $table);
	$lastInsertId=$PdoMySQL->getLastInsertId();
	if($res){
		$pdo2=new PdoMySQL();
		$sql2="update cageapply set number = '{$num}' where cageid ='{$cageid}' ";
		$stmt2=$pdo2->query($sql2);
		if($stmt2=='1') {
			$result='添加成功';
		}
	}
}
	echo $result;
}
