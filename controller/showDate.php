

<?php 
    try {
        $dbh = new PDO('mysql:dbname=db_pet;host=localhost', 'root','root');
    }catch (PDOException $e){
        echo '数据库连接失败：'.$e->getMessage();
        exit;
    }
 
    echo '<table border="1" align="center" width=90%>';
    echo '<caption><h1>联系人信息表</h1></caption>';
    echo '<tr bgcolor="#cccccc">';
    echo '<th>UID</th><th>姓名</th><th>联系地址</th><th>联系电话</th><th>电子邮件</th></tr>';
 
    //使用query方式执行SELECT语句，建议使用prepare()和execute()形式执行语句
    $stmt = $dbh->query("select *from cageapply ");
 
    //以PDO::FETCH_NUM形式获取索引并遍历
    while (list($id,$animalname,$username,$furcolor,$gene)=$stmt->fetch(PDO::FETCH_NUM)){
        echo '<tr>';
        echo '<td>'.$id.'</td>';
        echo '<td>'.$animalname.'</td>';
        echo '<td>'.$username.'</td>';
        echo '<td>'.$furcolor.'</td>';
        echo '<td>'.$gene.'</td>';
        echo '</tr>';
    }
 
    echo '</table>';
?>