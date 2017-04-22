<?php

require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';

require_once 'api/Response.php';

//表名称
$table = "admin";
//1、拿到请求的账号
$username  = $_REQUEST["username"];


$pdoOperator = new PdoMySQL();
$passwordRows = $pdoOperator->find($table,"username='".$username."'");
$row = $passwordRows[0];
if(count($passwordRows) >0){
	Response::show("200","密码找回成功",base64_decode($row["password"]));
}else{
	Response::show("200","该账号未注册","");
}

?>
