<?php
/**
 * Created by PhpStorm.
 * User: geek
 * Date: 16/4/25
 * Time: 下午12:24
 */
if ($_SERVER["REQUEST_METHOD"] == "POST"){
    create();
}
function create(){
    if (!isset($_REQUEST["longid"]) || empty($_REQUEST["longid"])) {
        echo "参数错误";
        exit;
    }
        $longid=$_REQUEST['longid'];
        $pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql1="select formerid from cage  where  cageid ='".$longid."'";
    $pdo1->query("set names utf8");
        $stmt1=$pdo1->prepare($sql1);
        $stmt1->execute();
        $row1=$stmt1->fetch();
        $formerid="";
        if($row1){
            $formerid=$row1['formerid'];
        }

    $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
    $sql2="select * from mouseapply  where  cageid = '".$formerid."' order by id  asc";
    $pdo2->query("set names utf8");
    $stmt2=$pdo2->prepare($sql2);
    $stmt2->execute();
    $allrow2 = $stmt2->fetchAll(PDO::FETCH_ASSOC);
    $res="++";
    $next="++";
    $mouseid="";
    foreach($allrow2 as $row2){
        $mouseid=$row2['mouseid'];
        $res=$res.$row2['id']."++".$row2['erbiao']."++".$row2['name']."++".$row2['breed']."++".$row2['gene']."++".$row2['furcolor']."++".$row2['mouseid']."++";
    }


    $pdo3=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
    $sql3="select * from instruction where mouseid ='".$mouseid."' and state = '1'";
    $pdo3->query("set names utf8");
    $stmt3=$pdo3->prepare($sql3);
    $stmt3->execute();
    $row3=$stmt3->fetch();
    if($row3){
        $next=$next.$row2['insid']."++".$row2['ispost']."++".$row2['txt']."++".$row2['time']."++";
    }

    $res=$res."thisistheline";
    $res=$res.$next;
    echo $res;
}

?>