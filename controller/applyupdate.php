<?php
header("Content-Type: text/html;charset=utf-8"); 
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
if ($_SERVER["REQUEST_METHOD"] == "POST"){
	update();
}
function update(){
	$erbiao=$_POST["erbiao"];
	$animalName=$_POST["animalName"];
	$breed=$_POST["breed"];
	$gene=$_POST["gene"];
	$furcolor=$_POST["furcolor"];
	if (!isset($_POST["erbiao"])||empty($_POST["erbiao"])
		||!isset($_POST["breed"]) || empty($_POST["breed"])
		|| !isset($_POST["animalName"]) || empty($_POST["animalName"])
		|| !isset($_POST["gene"]) || empty($_POST["gene"])
		||!isset($_POST["furcolor"]) || empty($_POST["furcolor"]) ) {
		echo "参数错误，小鼠信息填写不全";
		return;
	}else{
		echo $erbiao;
		echo $animalName;
		echo $breed;
		echo $gene;
		echo $furcolor;
	$pdo=new PdoMySQL();
	$sql="UPDATE cageapply SET erbiao='{$erbiao}',breed='{$breed}',animalName='{$animalName}',gene='{$gene}',furcolor='{$furcolor}' WHERE id=1;";
	$stmt=$pdo->execute($sql);
	if($stmt==1){
		$result="信息更新成功";
	}else{
		$result="请修改信息，再提交";
		}
	}
	echo $result;
}
