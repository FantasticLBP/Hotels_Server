<?php
header("Content-Type: text/html;charset=utf-8");
if ($_SERVER["REQUEST_METHOD"] == "GET"){
    autofp();
}
//创建笼位申请信息
function autofp()
{
    $username = "";
    $cageid = $_REQUEST['cageid'];
    $pdof = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
    $sqlf = "select * from cageapply where cageid = '" . $cageid . "'";
    $stmtf = $pdof->prepare($sqlf);
    $stmtf->execute();
    $allrowf = $stmtf->fetchAll(PDO::FETCH_ASSOC);
    foreach ($allrowf as $rowf) {
        $username = $rowf['username'];
    }

    $flag = 0;
    $longjia = "";
    $bh = "";
    $num = 0;
    $pdos = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
    $sqls = "select * from cage where username =' " . $username . "' order by cageid asc";
    $stmts = $pdos->prepare($sqls);
    $stmts->execute();
    $allrows = $stmts->fetchAll(PDO::FETCH_ASSOC);
    foreach ($allrows as $rows) {
        if (substr($rows["cageid"], 0, 5) == $longjia) continue;
        else $longjia = substr($rows["cageid"], 0, 6);
        for($i=1;$i<=72;$i++){
            $d=chr(((($i-1) / 9) + 65));
            $bh=$longjia.$d.($i % 9 );

            $pdou = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
            $sqlu = "select * from cage where cageid = '" . $bh . "'";
            $stmtu = $pdou->prepare($sqlu);
            $stmtu->execute();
            $allrowu = $stmtu->fetchAll(PDO::FETCH_ASSOC);
            if(count($allrowu)==0){
                $numberP=$i;
                $flag=1;
                break;
            }
        }

        if ($flag == 1) break;
    }

    if ($flag == 1) {

        ?>
        <input type="text" hidden="true" id="cageid" name="" value="<?php echo $bh; ?>" />

        <?php
        $pdot = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
        $sqlt = "select * from cageapply where cageid = '" . $cageid . "'";
        $stmtt = $pdot->prepare($sqlt);
        $stmtt->execute();
        $allrowt = $stmtt->fetchAll(PDO::FETCH_ASSOC);
        $usernameP = "";
        $animalsum = "";
        foreach ($allrowt as $rowt) {
            $usernameP = $rowt['username'];
            $animalsum = $rowt['number'];
        }


        $pdo1 = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
        $sql1 = "insert into cage (cageid,username,number,animalsum,formerid) values('$bh','$usernameP','$num','$animalsum','$cageid')";
        $stmt1 = $pdo1->prepare($sql1);
        $stmt1->execute();
        $allrow1 = $stmt1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($allrow1 as $row1) {

        }

        $pdo2 = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
        $sql2 = "update cageapply set status = 1  where cageid = '" . $cageid . "';";
        $stmt2 = $pdo2->prepare($sql2);
        $stmt2->execute();
        $allrow2 = $stmt2->fetchAll(PDO::FETCH_ASSOC);
        foreach ($allrow2 as $row2) {

        }
        ?>
        <input type="text" hidden="true" id="cageid" name=""
               value="<?php echo $bh; ?>" />
        <script
            language="JavaScript">window.alert("自动分配成功,分配在" + document.getElementById("cageid").value), location.href = "../view/applycheck.php";</script>
        <?php

    } else {
        ?>
        <script
            language="JavaScript">window.alert("自动分配失效"), location.href = "../view/doctorcheck.php?cageid=" + <?php echo $cageid; ?>;</script>


        <?php
    }
}
?>