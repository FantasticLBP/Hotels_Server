<?php
if(!isset($_SESSION)){
  session_id("login");

  session_start();
}
header('content-type:text/html;charset:utf8');
if(empty($_SESSION['username'])&&empty($_SESSION['password'])){
  echo "<script>alert('禁止非法从地址栏访问!');window.location.href='../view/login.php';</script>";
  exit;
}
?>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<title>记住密码，自动登陆</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="check_remember.php">
<table width="300" border="1" align="center" cellpadding="0" cellspacing="0">
<thead>
  <tr> 
  <td colspan="2" align="center"><b>记住用户名和密码</b></td> 
  </tr>
</thead>  
  <tr align="center">
  <td>用 户 名：</td>
  <td><input type="text" value="<?php  error_reporting(0); echo $_COOKIE['name'];?>" name="name"></td>
  </tr>
  <tr align="center">
  <td>密码：</td>
  <td><input type="password" name="password" value="<?php echo $_COOKIE['password']?>"></td>
  </tr>
  <tr align="center">
  <td>记住用户名和密码</td>
  <td><?php if($_COOKIE['remember'] == 1){?><input type="checkbox" name="remember" value="1" checked><?php }else{($_COOKIE['remember'] == "")?><input type="checkbox" name="remember" value="1"><?php }?></td>
  </tr>
  <tr align="center">
  <td colspan="2"><input type="submit" name="Submit" value="提交" /></td>
  </tr>
</table>
</form>
</body>
</html>