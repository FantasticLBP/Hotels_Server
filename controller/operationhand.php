<?php
error_reporting(0);
require_once('../model/PdoMySQL.class.php');
require_once('../model/config.php');
header("Content-Type: text/html;charset=utf-8");
addInstruction();

function addInstruction(){

    if (!isset($_REQUEST["mid"]) || empty($_REQUEST["mid"])) {
        echo "参数错误，信息填写不全";
        return;
    }else{

        $mid=$_REQUEST["mid"];
        $insid=$mid;
        $txt=$_REQUEST['txt'];
        $pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql1="select insid from instruction where insid like '".$mid."%' order by insid  desc";
        $stmt1=$pdo->prepare($sql1);
        $stmt1->execute();
        $i=0;
        $allrow1=$stmt1->fetchAll(PDO::FETCH_ASSOC);
        if($allrow1){
            foreach($allrow1 as $row1){
                $i=intval($row1['insid'].substr(16));
                $i++;
            }

        }else{
            $i=0;
        }

echo "i:".$i;
        if ($i < 10)
            $insid = $insid."000".$i;
        else if ($i < 100)
            $insid = $insid."00".$i;
        else if ($i < 1000)
            $insid = $insid."0".$i;
        else if ($i < 10000)
            $insid = $insid."".$i;
        else
            echo "报错";

        $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
        $sql2="insert into instruction (insid,mouseid,txt,ispost,state) values('".$insid."','".$mid."','".$txt."','1','0')";
        echo $sql2;
        $stmt2=$pdo2->prepare($sql2);
        $stmt2->execute();
        while($row2=$stmt2->fetch()){

        }
        $cageid=$_REQUEST['cageid'];
        echo "cageid:".$cageid;


        echo'<script language="JavaScript">window.location.href="../view/main.php?longjiaid='.substr($cageid,0,6).'&pos='.substr($cageid,6,8).'";</script>';



    }
}