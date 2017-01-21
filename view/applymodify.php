<?php
if(!isset($_SESSION)){
	session_start();
}
header('content-type:text/html;charset:utf8');
if(empty($_SESSION['username'])&&empty($_SESSION['password'])&&empty($_SESSION['usertype'])){
	echo "<script>alert('禁止非法从地址栏访问!');window.location.href='../view/login.php';</script>";
	exit;
}
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>动物管理系统</title>
		<meta name="keywords" content="Bootstrap、动物管理系统、响应式布局、小白鼠管理" />
		<meta name="author" content="Binpeng Liu Hangzhou Normal University Software enginerring 121"  />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />
		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
        <script type="text/javascript" src="../test/jquery-1.9.1.min.js"></script>
        <script language="javascript">
		function quit(){
			window.location.href="main.php";	
		}
		</script>
         <script Language="javascript">  
  function checkedThis(obj){  
      var boxArray = document.getElementsByName('furcolor');  
      for(var i=0;i< boxArray.length; i++){  
          if(boxArray[i].checked){  
              boxArray[i].checked = false;  
          }
      }
      obj.checked = true;  
  }  
  </script>
	</head>

	<body>
		<div class="navbar navbar-default" id="navbar">
			<script type="text/javascript">
				try{ace.settings.check('navbar' , 'fixed')}catch(e){}
			</script>

			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							动物管理系统
						</small>
					</a><!-- /.brand -->
				</div><!-- /.navbar-header -->

				<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						

						<li class="purple">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="icon-warning-sign"></i>
									8条通知
								</li>

								<li>
									<a href="#">
										<div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												新闻评论
											</span>
											<span class="pull-right badge badge-info">+12</span>
										</div>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
								<?php
									echo $_SESSION['loginuser'];
									?>
								</span>

								<i class="icon-caret-down"></i>
							</a>

							<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li class="divider"></li>

								<li>
									<a href="../controller/loginOut.php">
										<i class="icon-off"></i>
										退出
									</a>
								</li>
							</ul>
						</li>
					</ul><!-- /.ace-nav -->
				</div><!-- /.navbar-header -->
			</div><!-- /.container -->
		</div>

		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<div class="main-container-inner">
				<a class="menu-toggler" id="menu-toggler" href="#">
					<span class="menu-text"></span>
				</a>

				<div class="sidebar" id="sidebar">
					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
					</script>

					<div class="sidebar-shortcuts" id="sidebar-shortcuts">
						<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
							<button class="btn btn-success">
								<i class="icon-signal"></i>
							</button>

							<button class="btn btn-info">
								<i class="icon-pencil"></i>
							</button>

							<button class="btn btn-warning">
								<i class="icon-group"></i>
							</button>

							<button class="btn btn-danger">
								<i class="icon-cogs"></i>
							</button>
						</div>

						<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
							<span class="btn btn-success"></span>

							<span class="btn btn-info"></span>

							<span class="btn btn-warning"></span>

							<span class="btn btn-danger"></span>
						</div>
					</div><!-- #sidebar-shortcuts -->

					<ul class="nav nav-list">
						<li class="active">
							<a href="cageApply.php">
								<i class="icon-edit"></i>
								<span class="menu-text"> 新笼位申请 </span>
							</a>
						</li>

						<li>
							<a href="main.php">
								<i class="icon-text-width"></i>
								<span class="menu-text">已启用笼位查询 </span>
							</a>
						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-desktop"></i>
								<span class="menu-text"> 申请状态笼位查询 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

						</li>

						<li>
							<a href="#" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 小鼠信息检索 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>
						<li>
							<a href="profile.php" class="dropdown-toggle">
								<i class="icon-user"></i>
								<span class="menu-text">个人资料 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>	
					</ul><!-- /.nav-list -->

					<div class="sidebar-collapse" id="sidebar-collapse">
						<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
					</div>

					<script type="text/javascript">
						try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
					</script>
				</div>

				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>

						<ul class="breadcrumb">
							<li>
								<i class="icon-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active">新笼位申请</li>
						</ul><!-- .breadcrumb -->
					</div>

					<div class="page-content">
						<div class="page-header">
							<h1>
								新笼位申请
								<small>
									<i class="icon-double-angle-right"></i>
									提交小鼠信息
								</small>
							</h1>
						</div><!-- /.page-header -->


					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<div class="row-fluid">
									<div class="span12">
                                      <?php
									  error_reporting(0);
                                      $erbiao=$_REQUEST['erbiao'];
	$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','playboy');	
	$sql="select * from cageapply where erbiao={$erbiao}";
	$stmt=$pdo->prepare($sql);
	$stmt->execute();
	 $allrows = $stmt->fetchAll(PDO::FETCH_ASSOC); 
	 foreach($allrows as $row){
		   $temp=$row['gene'];
		   $color=$row['furcolor'];
		 if($temp==1){
			 $gene="纯合";
		 }else if($temp==2){
			 $gene="杂交";
			 
		 }else{
			$gene="野生型";
		 }		 
		echo '<form class="form-horizontal" id="validation-form" method="get"  name="form">';
	    echo  '<div class="form-group">';
		echo '<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">当前序号:</label>';
		echo '<div class="col-xs-12 col-sm-9">';
		echo '<div class="clearfix">';
       echo '<input type="text" name="id" id="id"  class="col-xs-12 col-sm-6" disabled value="'.$row['id'].'"/>';
	   echo '</div>';
	   echo '</div>';
		echo '</div>';
		
        echo  '<div class="form-group">';
		echo '<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">耳标:</label>';
		echo '<div class="col-xs-12 col-sm-9">';
		echo '<div class="clearfix">';
       echo '<input type="text" name="erbiao" id="erbiao"  class="col-xs-12 col-sm-6"  value="'.$row['erbiao'].'"/>';
	   echo '</div>';
	   echo '</div>';
		echo '</div>';
		echo '<div class="form-group">';
		echo '<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="email">动物名称:</label>';
		echo '<div class="col-xs-12 col-sm-9">';
		echo '<div class="clearfix">';
		echo '<input type="text"  class="col-xs-12 col-sm-6"  id="animalName" name="animalName" value="'.$row['animalName'].'"/>';
		echo '</div>';
		echo '</div>';
		echo '</div>';
       echo '<div class="form-group">';
		echo '<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="url">背景品系：</label>';
		echo '<div class="col-xs-12 col-sm-9">';
		echo '<div class="clearfix">';
		echo '<input type="text"  id="breed" name="breed" class="col-xs-12 col-sm-6"  value="'.$row['breed'].'"/>';
		echo '</div>';
		echo '</div>';
		echo '</div>';
	echo '<div class="form-group">';
	echo '<label class="control-label col-xs-12 col-sm-3 no-padding-right" for="name">基因类别:</label>';
	echo '<div class="col-xs-12 col-sm-9">';
	echo '<div class="clearfix">';
	echo '<input type="text" id="gene" name="gene" class="col-xs-12 col-sm-6"   value="'.$gene.'"/>';
	echo '</div>'.'</div>'.'</div>';
	
	echo '<div class="space-4"></div>'.' <div class="form-group>'.' <div class=col-sm-9">'.'<div class="radio">'.'<label>';
	 }
	?>
	 

	
 	<input  title="提供毛色信息将有助于提高我们的精细化管理水平。" type="radio" name="furcolor" id="furcolor" value="黑色"'; <?php if($row['furcolor']==1) echo("checked");?> class="col-xs-10 col-sm-5">黑色</label>
	<img src="../images/black.jpg" width="90" />
   
	</div>
    </div>
    <div class=col-sm-9">
    <div class="radio">
    <label><input title="提供毛色信息将有助于提高我们的精细化管理水平。"  type="radio" name="furcolor" id="furcolor" value="白色"<?php if($row['furcolor']==2) echo("checked");?> class="col-xs-10 col-sm-5">白色</label>
	<img src="../images/white.jpg" width="90" />
	</div></div><div class=col-sm-9"><div class="radio "><label>
   <input title="提供毛色信息将有助于提高我们的精细化管理水平。" type="radio" name="furcolor"  id="furcolor" value="无毛"  <?php if($row['furcolor']==3) echo("checked");?> class="col-xs-10 col-sm-5">无毛</label>
	<img src="../images/null.jpg" width="80" />
	</div></div><div class=col-sm-9"><div class="radio "><label>
	<input title="提供毛色信息将有助于提高我们的精细化管理水平。"  type="radio" name="furcolor" id="furcolor"  value="棕色" <?php if($row['furcolor']==4) echo("checked");?> class="col-xs-10 col-sm-5">棕色</label>
	<img src="../images/brown.jpg" width="80" />
	</div></div><div class=col-sm-9"><div class="radio "><label>
	<input title="提供毛色信息将有助于提高我们的精细化管理水平。"  type="radio" name="furcolor" id="furcolor" value="其它" <?php if($row['furcolor']==5) echo("checked");?> class="col-xs-10 col-sm-5">其它</label>
	</div></div></div>
	<div class="form-group">
	<div class="col-xs-12 col-sm-9">
	<div class="clearfix">
	<p id="saveResult" style="color:red; font-family:"Comic Sans MS", cursive;"></p>
	</div></div></div>
	</tr>

    
					<div class="space-8"></div>
				<div class="row-fluid wizard-actions col-xs-12 col-sm-6 no-padding-right">
                  <button class="btn btn-success btn-next" id="save" data-last="Finish ">
				提交<i class="icon-ok icon-on-right"></i></button>
             </div>
	<script>											
   document.getElementById("save").onclick = function() { 
	var request = new XMLHttpRequest();
	request.open("POST", "../controller/applyupdate.php");
	var data = "erbiao="+document.getElementById("erbiao").value
					  +"&animalName=" + document.getElementById("animalName").value 
	                  + "&breed=" + document.getElementById("breed").value 
	                  + "&gene=" + document.getElementById("gene").value 
					  + "&furcolor=" +document.form.furcolor.value;
	request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	request.send(data);
	request.onreadystatechange = function() {
		if (request.readyState===4) {
			if (request.status===200) { 
				document.getElementById("saveResult").innerHTML = request.responseText;
			} else {
				alert("发生错误：" + request.status);
			}
		} 
	}
}
</script>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div>
									</div>
								</div>

							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div><!-- /.main-content -->
	<div class="ace-settings-container" id="ace-settings-container">
					<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
						<i class="icon-cog bigger-150"></i>
					</div>

					<div class="ace-settings-box" id="ace-settings-box">
						<div>
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="default" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<div>
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>
					</div>
				</div><!-- /#ace-settings-container -->
			</div><!-- /.main-container-inner -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->

		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
</script>
<![endif]-->

		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="../view/assets/js/bootstrap.min.js"></script>
		<script src="../view/assets/js/typeahead-bs2.min.js"></script>

		<!-- page specific plugin scripts -->

		<script src="../view/assets/js/fuelux/fuelux.wizard.min.js"></script>
		<script src="../view/assets/js/jquery.validate.min.js"></script>
		<script src="../view/assets/js/additional-methods.min.js"></script>
		<script src="../view/assets/js/bootbox.min.js"></script>
		<script src="../view/assets/js/jquery.maskedinput.min.js"></script>
		<script src="../view/assets/js/select2.min.js"></script>

		<!-- ace scripts -->

		<script src="../view/assets/js/ace-elements.min.js"></script>
		<script src="../view/assets/js/ace.min.js"></script>
	<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
