<?php
//设置页面内容是html编码格式是utf-8
error_reporting(0);
header("Content-Type: text/html;charset=utf-8");
require_once '../swiftmailer-master/lib/swift_required.php';
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';

require_once '../model/pwd.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	update();
}
update();
function update(){
//	$username = $_POST["username"];
//	if (!isset($_POST["username"]) || empty($_POST["username"])) {
//		echo "参数错误";
//		return;
//	}
	$username = $_GET["username"];
	$table=$_GET["tablename"];
	$pdo=new PdoMySQL();
	$sql="UPDATE {$table} SET status = 1 WHERE username ='{$username}'";

	$stmt=$pdo->query($sql);
	$result='激活失败';
	if($stmt=='1'){

//		$result='成功激活';
//		echo'<script language="JavaScript">window.location.href="../admin/apply.php";</script>';
		echo '<script language="JavaScript">window.alert("激活成功"),location.href="../admin/apply.php";</script>';

	}else{
		echo '<script language="JavaScript">window.alert("激活失败,请重试"),location.href="../admin/apply.php";</script>';
	}

	//echo $result;
		try{
	$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
	$sql="select username from projector where username=".$username;
	$sql1="select email from projector where username=".$username;
	$stmt=$pdo->prepare($sql);
	$stmt1=$pdo->prepare($sql1);
	$stmt->execute();
	$stmt1->execute();

	while($row = $stmt->fetch()){
		$username=$row['username'];

	}
	while($row1 = $stmt1->fetch()){
		$email=$row1['email'];

	}
		//配置邮件服务器，得到传输对象
		$emailPassword='lbpplayboy';
		$transport=Swift_SmtpTransport::newInstance('smtp.qq.com',25);
		//设置登陆帐号和密码
		$transport->setUsername('704568245@qq.com');
		$transport->setPassword($emailPassword);
		//得到发送邮件对象Swift_Mailer对象
		$mailer=Swift_Mailer::newInstance($transport);
		//得到邮件信息对象
		$message=Swift_Message::newInstance();
		//设置管理员的信息
		$message->setFrom(array('704568245@qq.com'=>'动物管理系统'));
		//将邮件发给谁
		$message->setTo(array($email=>'动物管理系统用户'));
		//设置邮件主题
		$message->setSubject('密码找回邮件');
		$str=<<<EOF
		亲爱的用户{$username}您好,您的账户已成功激活，感谢您使用本网站。<br/>
EOF;
		$message->setBody("{$str}",'text/html','utf-8');
		try{
			if($mailer->send($message)){
			echo'<script language="JavaScript">window.location.href="form-wizard.php";</script>';

			}else{
				echo '邮件发送失败';
				echo'<script language="JavaScript">window.location.href="form-wizard.php";</script>';
			}
		}catch(Swift_ConnectionException $e){
			echo '邮件发送错误'.$e->getMessage();
		}
	}
	catch(PDOException $e){
	echo $e->getMessage();
	}
}


