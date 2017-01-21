<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/25
 * Time: 下午1:04
 */
$cageid=$_REQUEST['cageid'];
$id=$_REQUEST['id'];
$erbiao=$_REQUEST['erbiao'];
$name=$_REQUEST['name'];
$breed=$_REQUEST['breed'];
$gene=$_REQUEST['gene'];
$furcolor=$_REQUEST['furcolor'];
$pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql1="select * from cage  where  cageid ='".$cageid."'";
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
$stmt2=$pdo2->prepare($sql2);
$stmt2->execute();
$row2=$stmt2->fetch();
$number=0;

if($row2){
    $number=$row2['number'];

}
$number=$number+1;
if($number<10) $mouseid=$mouseid."00".$number;
else if($number<100)  $mouseid=$mouseid."0".$number;
else if($number<1000)  $mouseid=$mouseid.$number;


$pdo3=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql3="insert into mouseapply (mouseid,cageid,id,erbiao,name,breed,gene,furcolor) values(?,?,?,?,?,?,?,?)";
$stmt3=$pdo->prepare($sql3);
$stmt3->execute(array($mouseid,$formerid,$id,$erbiao,$name,$breed,$gene,$furcolor));
while($row3=$stmt3->fetch()){

}


$pdo4=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
$sql4="update cageapply set number = '".$number."' where cageid = '".$h."'";
$stmt4=$pdo4->query($sql4);
if($stmt=='1') {

    ?>
    <script>window.location.href='../view/wokercagemanage.php?longjiaid=<?php echo substr($cageid,0,5); ?>;</script>
<?php
}

?>


