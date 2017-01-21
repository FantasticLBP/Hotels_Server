<?php
header("Content-Type: text/html;charset=utf-8"); 
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
//error_reporting(0);
	 class Notice{
		public static function query($table=''){
			 $pdo=new PdoMySQL();
			$sql="select count(*) from {$table} where status=0;";
			$stmt = $pdo->getRow($sql);
			$pdo->execute($sql);
			echo $stmt['count(*)'];		
		}
		
	}
?>