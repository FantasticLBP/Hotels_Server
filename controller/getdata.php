<?php
error_reporting(0);
header("Content-Type: text/html;charset=utf-8"); 
$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
	$sql="select *from cageapply where status=0";
	$stmt=$pdo->query($sql);
	while($row = $stmt->fetch(PDO::FETCH_ASSOC)){       
		 echo json_encode($row);   
} 

?>
