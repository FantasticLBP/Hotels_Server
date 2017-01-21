
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
error_reporting(0);
  $name = $_POST['name'];
  $password = $_POST['password'];
  $remember = $_POST['remember'];
  if($remember == 1){
  setcookie('name',$name,time()+3600);
  setcookie('password',$password,time()+3600);
  setcookie('remember',$remember,time()+3600);
  }else{
  setcookie('name',$name,time()-3600);
  setcookie('password',$password,time()-3600);
  setcookie('remember',$remember,time()-3600);
  }
  echo $_COOKIE['name'];
  echo '<hr/>';
   echo $_COOKIE['password'];
?>
