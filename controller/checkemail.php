<?php
error_reporting(0);
$email=$_GET["email"];
$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
		$sql6="select email from projector";
		$stmt6=$pdo->prepare($sql6);
		$stmt6->execute();
		while($row6=$stmt6->fetch()){
			$mail2[]=$row6['email'];
			
		}	
if(in_array($email,$mail2)){
	$response="该邮箱已注册可"."<a href='../view/login.php'>直接登录</a>";
}	

echo $response;
		?>
		
