<?php
error_reporting(0);
$q=$_GET["q"];
$identify=$_REQUEST['usertype'];
$table="";
if($identify=='科研人员'){
	$table='projector';
}else if($identify=='兽医'){
	$table='doctor';
}else if($identify=='工作人员'){
	$table='worker';
}

$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
		$sql1="select email from projector";
		$sql2="select email from doctor";
		$sql3="select email from worker";
		$stmt1=$pdo->prepare($sql1);
		$stmt2=$pdo->prepare($sql2);
		$stmt3=$pdo->prepare($sql3);
		$stmt1->execute();
		$stmt2->execute();
		$stmt3->execute();
		while($row1=$stmt1->fetch()){
			$mail1[]=$row1['email'];
		}
		while($row2=$stmt2->fetch()){
			$mail2[]=$row2['email'];
		}
		while($row3=$stmt3->fetch()){
			$mail3[]=$row3['email'];
		}

if(!in_array($q,$mail1)&&!in_array($q,$mail2)&&!in_array($q,$mail3)){
	$response="该邮箱未被注册";
}else{
	$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
	$sql1="select * from projector where email=?";
	$stmt1=$pdo->prepare($sql1);
	$stmt1->execute(array($q));
	while($row1 = $stmt1->fetch()){
		$username1=$row1['username'];
		if($username1==""){
			return;
		}
		$password=base64_decode($row1['password']);
		$response="用户名:".$username1." 密码:".$password;
	}

	$sql2="select * from ,doctor where email=?";
	$stmt2=$pdo->prepare($sql2);
	$stmt2->execute(array($q));

	while($row2 = $stmt2->fetch()){
		$username2=$row2['username'];
		if($username2==""){
			return;
		}
		$password2=base64_decode($row2['password']);
		$response="用户名:".$username2." 密码:".$password2;
	}


	$sql3="select * from worker where email=?";
	$stmt3=$pdo->prepare($sql3);
	$stmt3->execute(array($q));

	while($row3 = $stmt3->fetch()){
		$username3=$row3['username'];
		if($username3==""){
			return;
		}
		$password3=base64_decode($row3['password']);
		$response="用户名:".$username3." 密码:".$password3;
	}



}
echo $response;
?>






