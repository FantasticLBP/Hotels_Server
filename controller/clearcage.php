<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/25
 * Time: 下午1:29
 */
$cageid=$_REQUEST['cageid'];
$pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql1="select * from cage where cageid = '".$cageid."'";
$stmt1=$pdo1->prepare($sql1);
$stmt1->execute();
$row1=$stmt1->fetch();
$formerid="";
if($row1){
    $formerid=$row1['formerid'];
}


$pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql2="update cageapply set status = 3 where cageid = '".$formerid."'";
$stmt2=$pdo2->query($sql2);
if($stmt2=='1') {

}

$pdo3=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql3="delete from cage where cageid = '".$cageid."'";
$stmt3=$pdo3->prepare($sql3);
$stmt3->execute();
$row3=$stmt3->fetch();
if($row3){

}

?>