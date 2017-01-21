<?php
header("Content-Type: text/html;charset=utf-8");
require_once '../swiftmailer-master/lib/swift_required.php';
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';

require_once '../model/pwd.php';
refuse();
function refuse(){
    $cageid=$_REQUEST["cageid"];
    $re=$_REQUEST["re"];
    $message=$_REQUEST["message"];

    if (!isset($_REQUEST["cageid"]) || empty($_REQUEST["cageid"])
        || !isset($_REQUEST["re"]) || empty($_REQUEST["re"]))
    {
        echo "参数错误";
        exit;
    }
        if($re=="1"){
            $username="";
            $number="";
           $longjiaid=$_REQUEST['longid'];
            $num=$_REQUEST['num'];
            $temp=intval($num);
            $d=chr(((($temp-1) / 9) + 65));
            $bh=$longjiaid  .$d.(($temp-1) % 9 + 1);
            $pdo1=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
            $pdo1->query("set names utf8");
            $sql1="select * from cageapply  where  cageid =".$cageid."";
            $stmt1=$pdo1->prepare($sql1);
            $stmt1->execute();
            $row1=$stmt1->fetch();
            if($row1){
                $username=$row1['username'];
                $number=$row1['number'];
            }
            $pdof=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
            $sqlf="insert into cage (cageid,username,number,animalsum,formerid) values('".$bh."','".$username."','".$num."','".$number."','".$cageid."')";
           $pdof->query("set names utf8");
            $stmtf=$pdof->prepare($sqlf);
            $stmtf->execute();
            $rowf=$stmtf->fetch();


            $pdos=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
            $sqls="update cageapply set status = 1  where cageid = '{$cageid}';";
            $pdos->query("set names utf8");
            $stmts=$pdos->query($sqls);
            if($stmts==1) {
                echo '<script language="JavaScript">window.location.href="../view/applycheck.php";</script>';
            }
            }else if($re=="2"){
            $pdot=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
            $message=trim($_REQUEST['message']);
            $sqlt="update cageapply set status = 2 , message =  '{$message}'where cageid =  '{$cageid}'";
            $pdot->query("set names utf8");
            $stmtt=$pdot->query($sqlt);
            if($stmtt=='1'){
               echo "驳回成功!";
                // echo'<script language="JavaScript">window.alert("驳回成功!"),location.href="../view/applycheck.php";</script>';
            }
        }

}

?>
