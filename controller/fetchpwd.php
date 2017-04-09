<?php
error_reporting(0);
$q=$_GET["q"];
$table="admin";


error_reporting(0);
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';



$pdo=new PdoMySQL();
		$sql1="select username from admin";
		$stmt1=$pdo->prepare($sql1);
		$stmt1->execute();
		while($row1=$stmt1->fetch()){
			$username[]=$row1['username'];
		}
if(!in_array($q,$username)){
	$response="该账号未被注册";
}else{
	$pdo=new PdoMySQL();
	$sql1="select * from `admin` where username=?";
	$stmt1=$pdo->prepare($sql1);
 	$stmt1->execute(array("admin"));
	while($row1 = $stmt1->fetch()){
		$username1=$row1['username'];
		if($username1==""){
			return;
		}
		$password=base64_decode($row1['password']);
		$response="用户名:".$username1." 密码:".$password;
	}
}
echo $response;
?>






