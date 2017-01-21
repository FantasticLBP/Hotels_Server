<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/26
 * Time: 下午1:17
 */
$cageid=$_REQUEST['cageid'];
$id=$_REQUEST['id'];
$erbiao=$_REQUEST['erbiao'];
$name=$_REQUEST['name'];
$breed=$_REQUEST['breed'];
$gene=$_REQUEST['gene'];
$furcolor=$_REQUEST['furcolor'];
$pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql1="select * from  cage  where  cageid ='".$cageid."'";
$pdo1->query("set names utf8");
$stmt1=$pdo1->prepare($sql1);
$stmt1->execute();
$row1=$stmt1->fetch();
$formerid="";
$mouseid="";
$h="";
if($row1){
    $formerid=$row1['formerid'];
    $mouseid=$row1['formerid'];
    $h=$row1['formerid'];
}

$pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql2="select * from cageapply  where  cageid ='".$formerid."'";
$pdo2->query("set names utf8");
$stmt2=$pdo2->prepare($sql2);
$stmt2->execute();
$row2=$stmt2->fetch();
$number=0;
if($row2){
    $number=$row2['number'];
    $number+=1;
}


if($number<10) $mouseid=$mouseid."00".$number;
else if($number<100) $mouseid=$mouseid."0".$number;
else if($number<1000) $mouseid=$mouseid.$number;

$tableu='mouseapply';
$PdoMySQLu=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$datau=compact('mouseid','h','id','erbiao','name','breed','gene','furcolor');
$resu=$PdoMySQLu->add($datau, $tableu);
$lastInsertIdu=$PdoMySQLu->getLastInsertId();
if($resu){

}


$pdo4=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql4="update cageapply set number = '".$number."' where cageid = '".$h."'";
$stmt4=$pdo4->query($sql4);
if($stmt4=='1') {
    echo "ok";
}