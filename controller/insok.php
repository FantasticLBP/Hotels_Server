<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/25
 * Time: 下午1:37
 */
$insid=$_REQUEST['insid'];
$pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql2="update instruction set state = 4  where insid = '".$insid."'";
$stmt2=$pdo2->query($sql2);
if($stmt2=='1') {

}

$pdo3=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql3="update instruction set state = 4  where insid = '".$insid."'";
$stmt3=$pdo3->query($sql3);
if($stmt3=='1') {
    echo "ok";
}
?>