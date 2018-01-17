<?php
require_once 'Response.php';
$array = [["name"=>"电压","value"=>"20V"],["name"=>"电流","value"=>"2.2A"]];
Response::show(200,"success",$array,"json");
?>