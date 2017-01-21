<?php
	//开启session
	session_id("login");
	session_start();
	date_default_timezone_set('PRC');
	header('content-type:text/html;charset=utf-8');

	//1.包含所需文件
	error_reporting(0);
	require_once '../swiftmailer-master/lib/swift_required.php';
	require_once '../model/PdoMySQL.class.php';
	require_once '../model/config.php';
	require_once '../model/pwd.php';


//对输入的转义
if(!function_exists(get_magic_quotes_gpc) || !get_magic_quotes_gpc() ) {
	foreach(array('_COOKIE', '_POST', '_GET') as $v) {
		foreach($$v as $kk => $vv) {
			$kk{0} != '_' && $$v[$kk] = addslashes($vv);
		}
	}
}

	//2.接收信息
	$act=$_GET['act'];
	$username=addslashes($_POST['username']);
	$password=base64_encode($_POST['password']);
	$status='0';
	$rememberUser=$_POST["rememberUser"];
//$rememberUser=='on'用户选择了记住密码


	$table1='user';

	//3.得到连接对象
	$PdoMySQL=new PdoMySQL();
	if($act==='login'){
		$_SESSION["username"]=$username;
		$_SESSION["password"]=$password;
		//记住密码,自动登录

	//session开始，存储用户信息
	if($username==""){
		echo'<script language="JavaScript">window.alert("请输入用户名"),location.href="../view/login.php?viewFlag=login-box";</script>';
	}else if($password==""){
		echo'<script language="JavaScript">window.alert("请输入密码"),location.href="../view/login.php?viewFlag=login-box";</script>';
	}
		$pdo=new PDO('mysql:host=localhost;dbname=db_Hotel','root','root');
		$sql="select * from ".$table1." where username=? and password=?";
		$stmt=$pdo->prepare($sql);
		$stmt->execute(array($username,$password));
		$row1=$stmt->fetch();
		if($row1['status']==1){
			echo '<script>window.location.href="../admin/account.php";</script>';

		}else{
			echo'<script language="JavaScript">window.alert("账号或密码错误"),location.href="../view/login.php";</script>';
		}

	}elseif($act==='seek'){
		if($email==""){
			echo'<script language="JavaScript">window.alert("请注册时的邮箱便于您找回密码"),location.href="../view/login.php?viewFlag=forgot-box";</script>';
		}
		try{
			echo'<script language="JavaScript">window.alert("try1");</script>';
			$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
			$sql="select * from projector where email=?";
			$stmt=$pdo->prepare($sql);
			$stmt->execute(array($email));
			echo'<script language="JavaScript">window.alert("try2");</script>';

		while($row = $stmt->fetch()){
			$username1=$row['username'];
			$password=base64_decode($row['password']);
		}
			echo'<script language="JavaScript">window.alert("try3");</script>';
			echo'<script language="JavaScript">window.alert($username1);</script>';
			echo'<script language="JavaScript">window.alert($password);</script>';
			//发送邮件，以QQ邮箱为例
			//配置邮件服务器，得到传输对象
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
			$message->setTo(array($email=>'email'));
			//设置邮件主题
			$message->setSubject('密码找回邮件');
			$str=<<<EOF
			亲爱的用户{$username1}您好！感谢您使用我们网站<br/>
			这是你的密码：{$password}，请妥善保管！<br/>
EOF;
		echo'<script language="JavaScript">window.alert("try4");</script>';
		$message->setBody("{$str}",'text/html','utf-8');
		try{
			echo'<script language="JavaScript">window.alert("try5");</script>';
			if($mailer->send($message)){
				echo'<script language="JavaScript">window.alert("try6");</script>';
				echo'<script language="JavaScript">window.alert("恭喜您密码找回成功，请到邮箱获取密码"),location.href="../view/login.php?viewFlag=forgot-box";</script>';
				//echo '<meta http-equiv="refresh" content="3;url=login.php"/>';
			}else{
				echo'<script language="JavaScript">window.alert("try7");</script>';
				echo '此账号未注册';
				echo '<meta http-equiv="refresh" content="3;url=../view/index.php?viewFlag=signup-box"/>';
			}
		}catch(Swift_ConnectionException $e){
			echo'<script language="JavaScript">window.location.href="../view/500.php";</script>';
			echo'<script language="JavaScript">window.alert("try8");</script>';
			//echo '邮件发送错误'.$e->getMessage();
		}
	} catch(PDOException $e){
		echo $e->getMessage();
	}

}
?>