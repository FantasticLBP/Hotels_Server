<?php
error_reporting(0);
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
header("Content-Type: text/html;charset=utf-8"); 
$pdo=new PdoMySQL();
	$sql="select *from cageapply where status=0";
	$stmt=$pdo->query($sql);
	while($row = $stmt->fetch(PDO::FETCH_ASSOC)){       
		 echo json_encode($row);   
} 

?>
