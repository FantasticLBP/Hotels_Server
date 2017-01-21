<?php
if(!isset($_SESSION)){
	session_id("login");

	session_start();
}
header('content-type:text/html;charset:utf8');
if(!isset($_SESSION["username"])&&!isset($_SESSION["password"])){
	echo "<script>alert('禁止非法从地址栏访问!');window.location.href='../view/login.php';</script>";
	exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>用户信息页面</title>
	<meta name="keywords" content="Bootstrap、动物管理系统、响应式布局、小白鼠管理" />
	<meta name="author" content="Binpeng Liu Hangzhou Normal University Software enginerring 121"  />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />

	<!-- basic styles -->

	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="assets/css/font-awesome.min.css" />

	<!--[if IE 7]>
	<link rel="stylesheet" href="assets/css/fontFamily.css" />

	<link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
	<![endif]-->

	<!-- page specific plugin styles -->

	<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
	<link rel="stylesheet" href="assets/css/jquery.gritter.css" />
	<link rel="stylesheet" href="assets/css/select2.css" />
	<link rel="stylesheet" href="assets/css/bootstrap-editable.css" />
	<!-- ace styles -->

	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />

	<!--[if lte IE 8]>
	<link rel="stylesheet" href="assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->

	<script src="assets/js/ace-extra.min.js"></script>

	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

	<!--[if lt IE 9]>
	<script src="assets/js/html5shiv.js"></script>
	<script src="assets/js/respond.min.js"></script>
	<script src="http://cdn.bootcss.com/jquery/2.2.1/jquery.js"></script>


	<![endif]-->
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
						<span class="badge badge-important">
                                	<?php
									if($_SESSION['usertype']==1){
										$username=$_SESSION['username'];
										$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
									$sql1="select cageapply.*,cage.cageid as fid from cageapply LEFT JOIN cage on cageapply.cageid=cage.formerid WHERE cageapply.username =".$username." and  status!=0;";
										$stmt1=$pdo->prepare($sql1);
										$stmt1->execute();
										$allrow1=$stmt1->fetchAll(PDO::FETCH_ASSOC);
										$count=0;
									foreach($allrow1 as $row1){
										$count+=1;
									}
									echo $count;
									}else if($_SESSION['usertype']==3){
										$pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
										$pdo2->query("set names utf8");
										$sql2="select * from instruction where state = 1 order by time asc";
										$stmt2=$pdo2->prepare($sql2);
										$stmt2->execute();
										$allrows2= $stmt2->fetchAll(PDO::FETCH_ASSOC);
										echo count($allrows2);
									}else if($_SESSION['usertype']==2){
										$pdou=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
										$pdou->query("set names utf8");
										$sqlu="select *from cageapply  where  ispost = 1 and status = 0 order by time  asc";
										$stmtu=$pdou->prepare($sqlu);
										$stmtu->execute();
										$allrowsu= $stmtu->fetchAll(PDO::FETCH_ASSOC);
										echo count($allrowsu);
									}

									?>
                                </span>
					</a>

					<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="icon-warning-sign"></i>
							<?php
							if($_SESSION['usertype']==1){
								echo $count."条申请结果";
							}else if($_SESSION['usertype']==3){
								echo count($allrows2)."条新指令";
							}else if($_SESSION['usertype']==2){
								echo count($allrowsu)."条新笼位申请";
							}
							?>
						</li>

						<li>
							<?php
								if($_SESSION['usertype']==1){
									echo '<a href="applyState.php">';
								}else if($_SESSION['usertype']==3){
									echo '<a href="workercheck.php">';
								}else if($_SESSION['usertype']==2){
									echo '<a href="applycheck.php">';
								}
							?>

								查看全部
								<i class="icon-arrow-right"></i>
							</a>
						</li>
					</ul>
				</li>

				<li class="light-blue">
					<a data-toggle="dropdown" class="dropdown-toggle" href="#">
						<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									<?php
									echo $_SESSION['username'];
									?>
								</span>

						<i class="icon-caret-down"></i>
					</a>

					<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
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

			<?php
			$username=$_SESSION['username'];
			$temp=$_SESSION['usertype'];
			if($temp=='1'){
				$dataTab='projector';
			}else if($temp=='2'){
				$dataTab='doctor';
			}else if($temp=='3'){
				$dataTab='worker';
			}
			?>
			<ul class="nav nav-list">
				<?php
				if($temp=='1') {
					echo '<li>
									<a href="cageApply.php">
										<i class="icon-edit"></i>
										<span class="menu-text"> 新笼位申请 </span>
									</a>
								</li>';
					echo '<li >
							<a href="main.php">
								<i class="icon-search"></i>
								<span class="menu-text">已启用笼位查询 </span>
							</a>
						</li>';
					echo '<li>
							<a href="applyState.php" class="dropdown-toggle">
								<i class="icon-tasks"></i>
								<span class="menu-text"> 申请状态笼位查询 </span>

								<b class="arrow icon-angle-down"></b>
							</a>

						</li>';

				}else if($temp=='2') {
					echo '<li >
							<a href="applycheck.php">
								<i class="icon-eye-open"></i>
								<span class="menu-text">笼位审核</span>
							</a>
						</li>';
					echo '<li>
							<a href="MDcheck.php" class="dropdown-toggle">
								<i class="icon-edit"></i>
								<span class="menu-text"> 指令校验</span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>';


				}else if($temp=='3'){
					echo  '<li>
							<a href="workercheck.php" class="dropdown-toggle">
								<i class=" icon-bullhorn"></i>
								<span class="menu-text">工作人员指令 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>';
					echo '<li><a href="wokercagemanage.php" class="dropdown-toggle">
<i class="icon-cog"></i> <span class="menu-text"> 笼位操作和管理
						</span> <b class="arrow icon-angle-down"></b>
								</a></li>';
//					echo '<li ><a href="workernewcage.php"
//									class="dropdown-toggle"> <i class="icon-desktop"></i> <span
//											class="menu-text"> 安放新笼位 </span> <b
//											class="arrow icon-angle-down"></b>
//								</a></li>';
				}
				?>
				<li class="active">
					<a href="profile.php" class="dropdown-toggle">
						<i class="icon-user"></i>
						<span class="menu-text">个人资料 </span>

						<b class="arrow icon-angle-down"></b>
					</a>
				</li>

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
					<li class="active">个人资料</li>
				</ul><!-- .breadcrumb -->
			</div>

			<div class="page-content">


				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->

						<div class="clearfix">
							<div class="pull-left alert alert-success no-margin">
								<button type="button" class="close" data-dismiss="alert">
									<i class="icon-remove"></i>
								</button>

								<i class="icon-umbrella bigger-120 blue"></i>
								点击右边文字修改个人资料...
							</div>


						</div>

						<div class="hr dotted"></div>

						<div>
							<div id="user-profile-1" class="user-profile row">
								<div class="col-xs-12 col-sm-3 center">
									<div>
												<span class="profile-picture">
													<img id="avatar" class="editable img-responsive" alt="Alex's Avatar" src="assets/avatars/profile-pic.jpg" />
												</span>

										<div class="space-4"></div>

										<div class="width-80 label label-info label-xlg arrowed-in arrowed-in-right">
											<div class="inline position-relative">
												<a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">
													<i class="icon-circle light-green middle"></i>
													&nbsp;
													<span class="white">
														<?php
														echo $_SESSION['username'];
														?>

													</span>
												</a>

												<ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
													<li class="dropdown-header"> Change Status </li>

													<li>
														<a href="#">
															<i class="icon-circle green"></i>
															&nbsp;
															<span class="green">Available</span>
														</a>
													</li>

													<li>
														<a href="#">
															<i class="icon-circle red"></i>
															&nbsp;
															<span class="red">Busy</span>
														</a>
													</li>

													<li>
														<a href="#">
															<i class="icon-circle grey"></i>
															&nbsp;
															<span class="grey">Invisible</span>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>

									<div class="space-6"></div>

									<div class="profile-contact-info">


										<div class="space-6"></div>

										<div class="profile-social-links center">
											<?php
											if($_SESSION['usertype']==1) {
												echo '<a href="applyState.php" class="tooltip-info" title="" data-original-title="查看笼位申请结果">
												<i class="middle   icon-search icon-2x blue"></i>
											</a>';
												echo '<a href="main.php" class="tooltip-error" title="" data-original-title="查看笼架">
												<i class="middle icon-align-justify icon-2x red"></i>
											</a>';
											}else if($_SESSION['usertype']==2){
												//doctor
												echo '<a href="applycheck.php" class="tooltip-info" title="" data-original-title="查看笼位申请">
												<i class="middle   icon-search icon-2x blue"></i>
											</a>';
												echo '<a href="MDcheck.php" class="tooltip-error" title="" data-original-title="查看指令申请">
												<i class="middle icon-align-justify icon-2x red"></i>
											</a>';

											}else if($_SESSION['usertype']==3){
												//worker
												echo '<a href="workercheck.php" class="tooltip-info" title="" data-original-title="查看待执行指令">
												<i class="middle   icon-search icon-2x blue"></i>
											</a>';
												echo '<a href="wokercagemanage.php" class="tooltip-error" title="" data-original-title="笼位管理">
												<i class="middle icon-align-justify icon-2x red"></i>
											</a>';
											}
											?>
										</div>
									</div>

									<div class="hr hr12 dotted"></div>

									<div class="clearfix">
										<div class="grid2">
											<span class="bigger-175 blue">
												<?php
												if($_SESSION['usertype']==1) {
													$username = $_SESSION['username'];
													$pdof = new PDO('mysql:host=localhost;dbname=db_pet', 'root', 'root');
													$sqlf = "select cageapply.*,cage.cageid as fid from cageapply LEFT JOIN cage on cageapply.cageid=cage.formerid WHERE cageapply.username =" . $username . ";";
													$stmtf = $pdof->prepare($sqlf);
													$stmtf->execute();
													$allrowf = $stmtf->fetchAll(PDO::FETCH_ASSOC);
													$count = 0;
													foreach ($allrowf as $rowf) {
														$count += 1;
													}
													echo $count;
												}else if($_SESSION['usertype']==2) {
													$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
													$sql1="select COUNT(*) from cageapply  where  ispost = 1 and status = 0 order by time  asc";
													$stmt1=$pdo->prepare($sql1);
													$stmt1->execute();
													$row1=$stmt1->fetch();
													echo $row1[0];

												}else if($_SESSION['usertype']==3) {
													$pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
													$pdo2->query("set names utf8");
													$sql2="select * from instruction where state = 1 order by time asc";
													$stmt2=$pdo2->prepare($sql2);
													$stmt2->execute();
													$allrows2= $stmt2->fetchAll(PDO::FETCH_ASSOC);
													echo count($allrows2);
												}
												?>


											</span>

											<br />
											<?php
											if($_SESSION['usertype']==1) {
												echo '笼盒申请中';
											}else if($_SESSION['usertype']==2) {
												echo '条新笼位申请';
											}else if($_SESSION['usertype']==3) {
												echo '条待办指令';
											}
											?>
										</div>

										<div class="grid2">
											<span class="bigger-175 blue">
												<?php
												if($_SESSION['usertype']==1) {
													$username=$_SESSION['username'];
													$pdof=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
													$sqlf="select cageapply.*,cage.cageid as fid from cageapply LEFT JOIN cage on cageapply.cageid=cage.formerid WHERE cageapply.username =".$username." and  status=1;";
													$stmtf=$pdof->prepare($sqlf);
													$stmtf->execute();
													$rowf=$stmtf->fetch();
													echo count($rowf);
												}else if($_SESSION['usertype']==2) {
													$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
													$sql1="select COUNT(*) from instruction where state = 0 order by time asc"; //1
													$stmt1=$pdo->prepare($sql1);
													$stmt1->execute();
													$row1=$stmt1->fetch();
													echo $row1[0];
												}else if($_SESSION['usertype']==3) {
													if($_SESSION['finishNum']==''){
														echo 0;
													}else{
														echo  $_SESSION['finishNum'];
													}
												}
												?></span>

											<br />
											<?php
											if($_SESSION['usertype']==1) {
												echo '笼盒已通过';
											}else if($_SESSION['usertype']==2) {
												echo '条新指令';
											}else if($_SESSION['usertype']==3) {
												echo '条今日完成';
											}
											?>
										</div>
									</div>

									<div class="hr hr16 dotted"></div>
								</div>

								<div class="col-xs-12 col-sm-9">
									<div class="center">
									</div>

									<div class="space-12"></div>

									<div class="profile-user-info profile-user-info-striped">
										<div class="profile-info-row">
											<div class="profile-info-name"> 用户名 </div>

											<div class="profile-info-value">
														<span class="editable" name="username" id="username"><?php echo $_SESSION['username']; ?></span>
											</div>
										</div>
										<span  hidden="hidden" id="currentUsername"><?php  echo $_SESSION['username']; ?> </span>
										<div class="profile-info-row">
											<div class="profile-info-name">密码 </div>

											<div class="profile-info-value">
												<span class="editable" id="password" name="password"><?php
													error_reporting(0);
													require_once('../model/PdoMySQL.class.php');
													require_once('../model/config.php');
													header("Content-Type: text/html;charset=utf-8");

													$pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
													$pdo->query("set names utf8");
													$temp=$_SESSION['usertype'];
													if($temp=='1'){
														$dataTab='projector';
													}else if($temp=='2'){
														$dataTab='doctor';
													}else if($temp=='3'){
														$dataTab='worker';
													}
													$sql="select * from ".$dataTab." where username='".$_SESSION['username']."'";
													$stmt=$pdo->prepare($sql);
													$stmt->execute();
													$allrows = $stmt->fetchAll(PDO::FETCH_ASSOC);
													$usernamePass;
													foreach($allrows as $row) {

													}

													if($row['usertype']==1){
														$usertype='科研人员';
													}else if($row['usertype']==2){
														$usertype='兽医';
													}else{
														$usertype='工作人员';
													}
													echo base64_decode($row['password']);
													$id=$row['id'];

													?></span>
											</div>
										</div>

										<span  id="tablename" name="tablename" hidden="hidden"><?php  echo $dataTab;  ?></span>

										<div class="profile-info-row">
											<div class="profile-info-name">身份</div>

											<div class="profile-info-value">
												<span ><?php  echo $usertype; ?></span>
												<?php echo'<input type="text" hidden="true" id="id" name="id"   value="'.$id.'"/>'; ?>
											</div>
										</div>

										<div class="profile-info-row">
											<div class="profile-info-name">邮箱</div>

											<div class="profile-info-value">
												<span class="editable" id="email"><?php echo $row['email']; ?></span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name">手机 </div>

											<div class="profile-info-value">
												<span class="editable" id="mobilephone"><?php  echo $row['mobilephone']; ?></span>
											</div>
										</div>
										<div class="profile-info-row">
											<div class="profile-info-name">课题负责人姓名 </div>

											<div class="profile-info-value">
												<span class="editable" id="projecterHandler" name="projecterHandler"><?php  echo $row['projectername']; ?></span>
											</div>
										</div>

									</div>
									<div class="space-20"></div>
									<div class="center">
										<button class="btn btn-sm btn-primary" type="button" id="modify">
											<span class="bigger-110">提交</span>
											<i class="icon-ok"></i>
										</button>
									</div>


									<div class="widget-box transparent">
										<div class="widget-header widget-header-small">
											<h4 class="blue smaller">
												<i class="icon-rss orange"></i>
												最新动态
											</h4>

											<div class="widget-toolbar action-buttons">
												<a href="#" data-action="reload">
													<i class="icon-refresh blue"></i>
												</a>

												&nbsp;
												<a href="#" class="pink">
													<i class="icon-trash"></i>
												</a>
											</div>
										</div>

										<div class="widget-body">
											<div class="widget-main padding-8">
												<div id="profile-feed-1" class="profile-feed">
													<div class="profile-activity clearfix">
														<div>
															<img class="pull-left" alt="用户头像" src="assets/avatars/avatar5.png" />
															<a class="user" href="#"> 您 </a>
															申请的笼位有了最新的反馈.
															<div class="time">
																<i class="icon-time bigger-110"></i>
																2天前
															</div>
														</div>
													</div>



												</div>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!-- PAGE CONTENT ENDS -->
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content -->
		</div><!-- /.main-content -->

		<script>
			document.getElementById("modify").onclick=function(){
				var request=new XMLHttpRequest();
				request.open("POST","../controller/modifyProfile.php");
				var data="username="+document.getElementById("username").innerHTML
						+"&password="+document.getElementById("password").innerHTML
						+"&email="+document.getElementById("email").innerHTML
						+"&projecterHandler="+document.getElementById("projecterHandler").innerHTML
						+"&currentUsername="+document.getElementById("currentUsername").innerHTML
						+"&tablename="+document.getElementById("tablename").innerHTML;
				request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
				request.send(data);
				request.onreadystatechange=function(){
					if (request.readyState===4){
						if (request.status===200){
							alert(request.response);
							window.location.reload();
						}else {
							alert("发生错误：" + request.status);
						}
					}
				}

			}
		</script>

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


<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>

<script src="http://cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>

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
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<!--[if lte IE 8]>

<script src="assets/js/excanvas.min.js"></script>

<![endif]-->

<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/jquery.gritter.min.js"></script>
<script src="assets/js/bootbox.min.js"></script>
<script src="assets/js/jquery.slimscroll.min.js"></script>
<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
<script src="assets/js/jquery.hotkeys.min.js"></script>
<script src="assets/js/bootstrap-wysiwyg.min.js"></script>
<script src="assets/js/select2.min.js"></script>
<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
<script src="assets/js/x-editable/bootstrap-editable.min.js"></script>
<script src="assets/js/x-editable/ace-editable.min.js"></script>
<script src="assets/js/jquery.maskedinput.min.js"></script>

<!-- ace scripts -->

<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
	jQuery(function($) {
		//editables on first profile page


		$.fn.editable.defaults.mode = 'inline';
		$.fn.editableform.loading = "<div class='editableform-loading'><i class='light-blue icon-2x icon-spinner icon-spin'></i></div>";
		$.fn.editableform.buttons = '<button type="submit" class="btn btn-info editable-submit"><i class="icon-ok icon-white"></i></button>'+
				'<button type="button" class="btn editable-cancel"><i class="icon-remove"></i></button>';

		$('#username').editable({
			mode: 'inline',
			type: 'wysiwyg',
			name : 'username',
			wysiwyg : {
				//css : {'max-width':'300px'}


			},
			success: function(response, newValue) {
			}
		});

		$('#password').editable({
			mode: 'inline',
			type: 'wysiwyg',
			name : 'password',
			wysiwyg : {
				//css : {'max-width':'300px'}


			},
			success: function(response, newValue) {
			}
		});

		$('#projecterHandler').editable({
			mode: 'inline',
			type: 'wysiwyg',
			name : 'projecterHandler',
			wysiwyg : {
				//css : {'max-width':'300px'}


			},
			success: function(response, newValue) {
			}
		});

		$('#email').editable({
			mode: 'inline',
			type: 'wysiwyg',
			name : 'email',
			wysiwyg : {
				//css : {'max-width':'300px'}


			},
			success: function(response, newValue) {
			}
		});


		// *** editable avatar *** //


		try {//ie8 throws some harmless exception, so let's catch it


			//it seems that editable plugin calls appendChild, and as Image doesn't have it, it causes errors on IE at unpredicted points


			//so let's have a fake appendChild for it!


			if( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ) Image.prototype.appendChild = function(el){}

			var last_gritter
			$('#avatar').editable({
				type: 'image',
				name: 'avatar',
				value: null,
				image: {
					//specify ace file input plugin's options here


					btn_choose: '上传头像',
					droppable: true,
					/**

					 //this will override the default before_change that only accepts image files

					 before_change: function(files, dropped) {

								return true;

							},

					 */

					//and a few extra ones here


					name: 'avatar',//put the field name here as well, will be used inside the custom plugin

					max_size: 110000,//~100Kb

					on_error : function(code) {//on_error function will be called when the selected file has a problem

						if(last_gritter) $.gritter.remove(last_gritter);
						if(code == 1) {//file format error

							last_gritter = $.gritter.add({
								title: 'File is not an image!',
								text: 'Please choose a jpg|gif|png image!',
								class_name: 'gritter-error gritter-center'
							});
						} else if(code == 2) {//file size rror

							last_gritter = $.gritter.add({
								title: '图片太大了!',
								text: '图片文件大小不能超过100Kb!',
								class_name: 'gritter-error gritter-center'
							});
						}
						else {//other error

						}
					},
					on_success : function() {
						$.gritter.removeAll();
					}
				},
				url: function(params) {
					// ***UPDATE AVATAR HERE*** //


					//You can replace the contents of this function with examples/profile-avatar-update.js for actual upload






					var deferred = new $.Deferred

					//if value is empty, means no valid files were selected


					//but it may still be submitted by the plugin, because "" (empty string) is different from previous non-empty value whatever it was


					//so we return just here to prevent problems


					var value = $('#avatar').next().find('input[type=hidden]:eq(0)').val();
					if(!value || value.length == 0) {
						deferred.resolve();
						return deferred.promise();
					}


					//dummy upload


					setTimeout(function(){
						if("FileReader" in window) {
							//for browsers that have a thumbnail of selected image


							var thumb = $('#avatar').next().find('img').data('thumb');
							if(thumb) $('#avatar').get(0).src = thumb;
						}

						deferred.resolve({'status':'OK'});

						if(last_gritter) $.gritter.remove(last_gritter);
						last_gritter = $.gritter.add({
							title: '头像更换成功!',
							text: '更换头像,让您的帐号独具特色',
							class_name: 'gritter-info gritter-center'
						});

					} , parseInt(Math.random() * 800 + 800))

					return deferred.promise();
				},

				success: function(response, newValue) {
				}
			})
		}catch(e) {}



		//////////////////////////////


		$('#profile-feed-1').slimScroll({
			height: '250px',
			alwaysVisible : true
		});

		$('.profile-social-links > a').tooltip();

		$('.easy-pie-chart.percentage').each(function(){
			var barColor = $(this).data('color') || '#555';
			var trackColor = '#E2E2E2';
			var size = parseInt($(this).data('size')) || 72;
			$(this).easyPieChart({
				barColor: barColor,
				trackColor: trackColor,
				scaleColor: false,
				lineCap: 'butt',
				lineWidth: parseInt(size/10),
				animate:false,
				size: size
			}).css('color', barColor);
		});

		$('.input-mask-phone').mask('(999) 999-9999');

		////////////////////


		//change profile


		$('[data-toggle="buttons"] .btn').on('click', function(e){
			var target = $(this).find('input[type=radio]');
			var which = parseInt(target.val());
			$('.user-profile').parent().addClass('hide');
			$('#user-profile-'+which).parent().removeClass('hide');
		});
	});
</script>
<div style="display:none"><script src="assets/js/stat.js"></script></div>
</body>
</html>