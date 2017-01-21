<?php
if(!isset($_SESSION)){
	session_id("login");
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
	<link rel="stylesheet" href="assets/css/fontFamily.css" />
	<link rel="stylesheet" href="assets/css/ace.min.css" />
	<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
	<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
	<script src="assets/js/ace-extra.min.js"></script>
	<script type="text/javascript" src="../test/jquery-1.9.1.min.js"></script>
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
						<span class="badge badge-important"><?php
							$username=$_SESSION['username'];
							$pdof=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
							$sqlf="select cageapply.*,cage.cageid as fid from cageapply LEFT JOIN cage on cageapply.cageid=cage.formerid WHERE cageapply.username =".$username." and  status!=0;";
							$stmtf=$pdof->prepare($sqlf);
							$stmtf->execute();
							$allrowf = $stmtf->fetchAll(PDO::FETCH_ASSOC);
							$count=0;
							foreach($allrowf as $rowf){
								$count+=1;
							}
							echo $count;
							?></span>
					</a>

					<ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
						<li class="dropdown-header">
							<i class="icon-warning-sign"></i>
							<?php
							echo $count;
							?>条通知
						</li>

						<li>
							<a href="applyState.php">
								查看全部
								<i class="icon-arrow-right"></i>
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
									echo $_SESSION["username"];
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
					echo '<li class="active">
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
					echo '<li class="active">
							<a href="applycheck.php">
								<i class="icon-text-width"></i>
								<span class="menu-text">笼位审核</span>
							</a>
						</li>';
					echo '<li>
							<a href="MDcheck.php" class="dropdown-toggle">
								<i class="icon-list"></i>
								<span class="menu-text"> 指令校验</span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>';


				}else if($temp=='3'){
					echo  '<li>
							<a href="workercheck.php" class="dropdown-toggle">
								<i class="icon-user"></i>
								<span class="menu-text">工作人员指令 </span>

								<b class="arrow icon-angle-down"></b>
							</a>
						</li>';
					echo '<li><a href="wokercagemanage.php" class="dropdown-toggle"> <i
											class="icon-desktop"></i> <span class="menu-text"> 笼位操作和管理
						</span> <b class="arrow icon-angle-down"></b>
								</a></li>';
					echo '<li ><a href="workernewcage.php"
									class="dropdown-toggle"> <i class="icon-desktop"></i> <span
											class="menu-text"> 安放新笼位 </span> <b
											class="arrow icon-angle-down"></b>
								</a></li>';
				}
				?>
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
					<li class="active">已知笼位查询</li>
				</ul><!-- .breadcrumb -->
			</div>

			<div class="page-content">
				<div class="page-header">
					<h1>
						<small>
							<i class="icon-double-angle-right"></i>
							动物基本信息
						</small>
					</h1>
				</div><!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">
						<!-- PAGE CONTENT BEGINS -->
						<div class="col-xs-12">
							<div class="table-responsive">
								<table id="sample-table-1"
									   class="table table-striped table-bordered table-hover">
									<thead>

									<th class="center">序号</th>
									<th class="center">笼盒编号</th>
									<th class="center">耳标</th>
									<th class="center">动物名称</th>
									<th class="hidden-480 center">背景品系</th>

									<th class="center"><i
												class="icon-time bigger-110 hidden-480"></i> 基因类别</th>
									<th class="center">毛色</th>
									<th class="hidden-480 center">操作记录</th>
									</tr>
									</thead>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /span -->
					</div>
					<!-- /row -->

					<script type="text/javascript">

						var idxx =null;
						function checkm(obj) {
							var request = new XMLHttpRequest();
							request.open("POST", "../controller/mainhand.php");
							var data = "&longid=" + obj.id;
							request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
							request.send(data);
							request.onreadystatechange = function() {
								if (request.readyState === 4) {
									if (request.status === 200) {
										var htmlStr = '';
										var rs = request.responseText;
										var rss = rs.split("++");
										var temp = (rss.length - 2) / 7;
										var i = 1;
										htmlStr += '<tbody id="printmouse">';
										while (temp--) {
											htmlStr += '<tr >' +
													'<td class="center">'
													+ rss[i]
													+ '</td>'
													+ '<td class="center" rowspan="1">'
													+ obj.id
													+ '</td>'
													+ '<td class="center">'
													+ rss[i + 1]
													+ '</td>'
													+ '<td class="center">'
													+ rss[i + 2]
													+ '</td>'
													+ '<td class="center">'
													+ rss[i + 3]
													+ '</td>'
													+ '<td class="hidden-480 center">'
													+ rss[i + 4]
													+ '</td>'
													+ '<td class="center">'
													+ rss[i + 5]
													+ '</td>'
													+ '<td class="hidden-480 center">'
													+ '<a href="#modal-table" role="button" class="green" data-toggle="modal"><button type="button" class="btn btn-info btn btn-default btn-sm" onClick="checkins(this)" name="'
													+ rss[i + 6]
													+ '">查看操作记录</button></a>'
													+ '<a href="addOperation.php?mid='
													+ rss[i + 6]+'&cageid='+obj.id
													+ '" role="button" class="blue" ><button type="button" class="btn btn-warning btn btn-default btn-sm">添加指令</button></a>'
													+ '</td>' + '</tr>';
											i = i + 7;
										}
										htmlStr += '</tbody>';
										$("#printmouse").remove();
										$("#sample-table-1").append(htmlStr);
									} else {
										alert("发生错误：" + request.status);
									}
								}
							}
							if(idxx != obj.id) {
								if(idxx!=null)document.getElementById(idxx).src="assets/images/gallery/changebefore.jpg";
								document.getElementById(obj.id).src="assets/images/gallery/changeafter.jpg";
								idxx=obj.id;
							}
							else{
								document.getElementById(obj.id).src="assets/images/gallery/changeafter.jpg";
							}
						}
					</script>
					<?php
					$longjiaid=$_REQUEST['longjiaid'];
					$pos=$_REQUEST['pos'];
					if($pos!="")
					{
						?>
						<input id="posid" value=<?php echo $longjiaaid.$pos; ?> hidden="hidden" />
						<script type="text/javascript">

							function myfun() {
								var p = document.getElementById("posid").value;

								checkm(document.getElementById(p));
							}
							window.onload = myfun;

						</script>
						<?php
					}
					?>



					<div class="row">
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-3">
									<div class="widget-main">
										<div>
											<label for="form-field-select-1">房间</label> <select
													class="form-control" id="form1">
												<?php
												if($longjiaid !=""){
													echo '<option value="" hidden="hidden">';
													echo substr($longjiaid,0,4);
													echo '</option>';
												}else{
													echo '<option value="">&nbsp;</option>';
												}
												?>
												<option value="1">0201</option>
												<option value="2">0202</option>
												<option value="3">0203</option>
												<option value="4">0204</option>
												<option value="5">0205</option>
											</select>
										</div>
									</div>
									<!-- /span -->

								</div>
								<!-- /row -->


								<div class="col-xs-3">
									<div class="widget-main">
										<div>
											<label for="form-field-select-1">笼架</label> <select
													class="form-control" id="form2">
												<?php
												if($longjiaid !=""){
													echo '<option value="" hidden="hidden">';
													echo substr($longjiaid,4,6);
													echo '</option>';
												}else{
													echo '<option value="">&nbsp;</option>';
												}
												?>

												<option value="AL">0A</option>
												<option value="AK">0B</option>
												<option value="AZ">0C</option>
												<option value="AR">0D</option>
											</select>
										</div>
									</div>

									<!-- /span -->
								</div>


								<!-- /row -->
								<div class="col-xs-3">
									<div class="widget-main">
										<div style="margin-top: 30px">
											<button type="button" onClick="search()">搜索</button>
										</div>
									</div>
									<!-- /span -->

								</div>
							</div>
							<?php

							$pdoFirst=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
									if($temp=="1"){
										$sql1="select * from cage  where  cageid like '".$longjiaid."%' and assert=1 and username in( select username from projector where projectername = (select projectername from projector where username = '".$_SESSION['username']."')) order by cageid  asc";
										$stmt1=$pdoFirst->prepare($sql1);
										$stmt1->execute();
										$row1=$stmt1->fetch();



									}else{
										$sql1="select * from cage  where  cageid like '".$longjiaid."%'and assert = 1 order by cageid  asc";
										$stmt1=$pdoFirst->prepare($sql1);
										$stmt1->execute();
										$row1=$stmt1->fetch();

									}
									$k=0;

							if($row1)
								$k=$row1['number'];

							else
								$k=80;
							if($longjiaid!="") {
								?>
									<?php  } ?>

							<div class="row">
								<div class="hr hr-18 dotted"></div>
			<?php
		for($i=1;$i<=72;$i++){
			$d=chr(((($i-1) / 9) + 65));
			$bh="".$d.(($i-1) % 9 + 1);

			if ($i == $k) {
				?>
				<div class="col-xs-1  col-md-1 ">
										<img src="assets/images/gallery/changebefore.jpg" alt="小鼠"
											 width="120%" class="img-rounded" onClick="checkm(this)"
											 name="cagebutton" id="<?php echo $row1['cageid']; ?>">

									<span style="font-size:2vw;font-family: TimesNewRoman, 'Times New Roman', Times, Baskerville, Georgia, serif;text-align:center;position:absolute; top: -5px; left: 20px; color:black;"
										  id="<?php echo $row1['cageid']; ?>"
										  onClick="checkm(this)"><?php echo $bh; ?></span>
									<span style="font-size:3vw;font-family: TimesNewRoman, 'Times New Roman', Times, Baskerville, Georgia, serif; text-align:center;position: absolute;  right:2px; bottom:-5px;color:black"
										  id="<?php echo $row1['cageid']; ?>"
										  onClick="checkm(this)"><?php echo $row1['animalsum']; ?></span>
									</div>
									<?php
									if ($row1)
										$k = intval($row1['number']);
									else
										$k = 80;
								}
								else{


									?>
									<div class="col-xs-1  col-md-1">
										<img src="assets/images/gallery/mouse.jpg" alt="..."
											 onClick="deform(this)" name="<?php echo $i; ?>" width="120%"
											 class="img-rounded">
										<span style="font-size:3vw;font-family: TimesNewRoman, 'Times New Roman', Times, Baskerville, Georgia, serif;text-align:center;position: absolute; top: 0; left: 0; right:0; bottom:0;color:black"><?php echo $bh; ?></span>

									</div>
									<?php
								}
								if (($i % 9) == 0){
								?>
							</div>
							<div class="hr hr-18 dotted"></div>
							<div class="row">

								<?php
								}
								}
								?>
							</div>


							<div id="modal-table" class="modal fade" tabindex="-1">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header no-padding">
											<div class="table-header">
												<button type="button" class="close" data-dismiss="modal"
														aria-hidden="true">
													<span class="white">&times;</span>
												</button>
												该小鼠的历史操作记录
											</div>
										</div>

										<div class="modal-body no-padding">
											<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top" id="inscheck">
												<thead>
												<tr>
													<th>具体指令</th>

													<th><i class="icon-time bigger-110"></i> 时间</th>
													<th>完成情况</th>
												</tr>
												</thead>
											</table>
										</div>

										<div class="modal-footer no-margin-top">
											<button class="btn btn-sm btn-danger pull-left"
													data-dismiss="modal">
												<i class="icon-remove"></i> Close
											</button>


											<ul class="pagination pull-right no-margin">
												<li class="prev disabled"><a href="#"> <i
																class="icon-double-angle-left"></i>
													</a></li>

												<li class="active"><a href="#">1</a></li>

												<li><a href="#">2</a></li>

												<li><a href="#">3</a></li>

												<li class="next"><a href="#"> <i
																class="icon-double-angle-right"></i>
													</a></li>
											</ul>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- PAGE CONTENT ENDS -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
			<!-- /.main-content -->
			<script type="text/javascript">
				function checkins(obj) {

					var request = new XMLHttpRequest();
					request.open("POST", "../controller/inscheck.php");
					var data = "&mid=" + obj.name;
					request.setRequestHeader("Content-type",
							"application/x-www-form-urlencoded");
					request.send(data);
					request.onreadystatechange = function() {
						if (request.readyState === 4) {
							if (request.status === 200) {

								var htmlStr = '';
								var rs = request.responseText;

								var rss = rs.split("++");

								var temp = (rss.length - 2) / 3;
								var i = 1;
								htmlStr += '<tbody id="insform">';
								while (temp--) {

									var a = "错误";
									if (rss[i + 2] == 0) {
										a = "正在申请";
									} else if (rss[i + 2] == 1) {
										a = "正在操作";
									} else if (rss[i + 2] == 2) {
										a = "申请驳回";
									} else if (rss[i + 2] == 3) {
										a = "";
									} else if (rss[i + 2] == 4) {
										a = "操作完成";
									}

									htmlStr += '<tr >' + '<th>'
											+ rss[i] + '</th>' +

											'<th><i class="icon-time bigger-110"></i>'
											+ rss[i + 1] + '</th>'
											+ '<th>' + a + '</th>'
											+ '</tr>';

									i = i + 3;

								}
								htmlStr += '</tbody>';
								$("#insform").remove();
								$("#inscheck").append(htmlStr);

							} else {
								alert("发生错误：" + request.status);
							}
						}
					}

				}
			</script>



			<div id="modal-table" class="modal fade" tabindex="-1">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header no-padding">
							<div class="table-header">
								<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">
									<span class="white">&times;</span>
								</button>
								审核结果
							</div>
						</div>


						<script>
							function search() {
								var val;
								var temp1 = document
										.getElementById("form1");
								val = temp1.options[temp1.selectedIndex].text;

								var vall;
								var temp2 = document
										.getElementById("form2");
								vall = temp2.options[temp2.selectedIndex].text;
								window.location = "main.php?longjiaid="
										+ val + vall;
							}
						</script>
</div>
<!-- /.main-content -->
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

<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
<script src="assets/js/chosen.jquery.min.js"></script>
<script src="assets/js/fuelux/fuelux.spinner.min.js"></script>
<script src="assets/js/date-time/bootstrap-datepicker.min.js"></script>
<script src="assets/js/date-time/bootstrap-timepicker.min.js"></script>
<script src="assets/js/date-time/moment.min.js"></script>
<script src="assets/js/date-time/daterangepicker.min.js"></script>
<script src="assets/js/bootstrap-colorpicker.min.js"></script>
<script src="assets/js/jquery.knob.min.js"></script>
<script src="assets/js/jquery.autosize.min.js"></script>
<script src="assets/js/jquery.inputlimiter.1.3.1.min.js"></script>
<script src="assets/js/jquery.maskedinput.min.js"></script>
<script src="assets/js/bootstrap-tag.min.js"></script>

<!-- ace scripts -->

<script src="assets/js/ace-elements.min.js"></script>
<script src="assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->

<script type="text/javascript">
	jQuery(function($) {
		$('#id-disable-check').on('click', function() {
			var inp = $('#form-input-readonly').get(0);
			if(inp.hasAttribute('disabled')) {
				inp.setAttribute('readonly' , 'true');
				inp.removeAttribute('disabled');
				inp.value="This text field is readonly!";
			}
			else {
				inp.setAttribute('disabled' , 'disabled');
				inp.removeAttribute('readonly');
				inp.value="This text field is disabled!";
			}
		});


		$(".chosen-select").chosen();
		$('#chosen-multiple-style').on('click', function(e){
			var target = $(e.target).find('input[type=radio]');
			var which = parseInt(target.val());
			if(which == 2) $('#form-field-select-4').addClass('tag-input-style');
			else $('#form-field-select-4').removeClass('tag-input-style');
		});


		$('[data-rel=tooltip]').tooltip({container:'body'});
		$('[data-rel=popover]').popover({container:'body'});

		$('textarea[class*=autosize]').autosize({append: "\n"});
		$('textarea.limited').inputlimiter({
			remText: '%n character%s remaining...',
			limitText: 'max allowed : %n.'
		});

		$.mask.definitions['~']='[+-]';
		$('.input-mask-date').mask('99/99/9999');
		$('.input-mask-phone').mask('(999) 999-9999');
		$('.input-mask-eyescript').mask('~9.99 ~9.99 999');
		$(".input-mask-product").mask("a*-999-a999",{placeholder:" ",completed:function(){alert("You typed the following: "+this.val());}});



		$( "#input-size-slider" ).css('width','200px').slider({
			value:1,
			range: "min",
			min: 1,
			max: 8,
			step: 1,
			slide: function( event, ui ) {
				var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
				var val = parseInt(ui.value);
				$('#form-field-4').attr('class', sizing[val]).val('.'+sizing[val]);
			}
		});

		$( "#input-span-slider" ).slider({
			value:1,
			range: "min",
			min: 1,
			max: 12,
			step: 1,
			slide: function( event, ui ) {
				var val = parseInt(ui.value);
				$('#form-field-5').attr('class', 'col-xs-'+val).val('.col-xs-'+val);
			}
		});


		$( "#slider-range" ).css('height','200px').slider({
			orientation: "vertical",
			range: true,
			min: 0,
			max: 100,
			values: [ 17, 67 ],
			slide: function( event, ui ) {
				var val = ui.values[$(ui.handle).index()-1]+"";

				if(! ui.handle.firstChild ) {
					$(ui.handle).append("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
				}
				$(ui.handle.firstChild).show().children().eq(1).text(val);
			}
		}).find('a').on('blur', function(){
			$(this.firstChild).hide();
		});

		$( "#slider-range-max" ).slider({
			range: "max",
			min: 1,
			max: 10,
			value: 2
		});

		$( "#eq > span" ).css({width:'90%', 'float':'left', margin:'15px'}).each(function() {
			// read initial values from markup and remove that
			var value = parseInt( $( this ).text(), 10 );
			$( this ).empty().slider({
				value: value,
				range: "min",
				animate: true

			});
		});


		$('#id-input-file-1 , #id-input-file-2').ace_file_input({
			no_file:'No File ...',
			btn_choose:'Choose',
			btn_change:'Change',
			droppable:false,
			onchange:null,
			thumbnail:false //| true | large
			//whitelist:'gif|png|jpg|jpeg'
			//blacklist:'exe|php'
			//onchange:''
			//
		});

		$('#id-input-file-3').ace_file_input({
			style:'well',
			btn_choose:'Drop files here or click to choose',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			thumbnail:'small'//large | fit
			//,icon_remove:null//set null, to hide remove/reset button
			/**,before_change:function(files, dropped) {
						//Check an example below
						//or examples/file-upload.html
						return true;
					}*/
			/**,before_remove : function() {
						return true;
					}*/
			,
			preview_error : function(filename, error_code) {
				//name of the file that failed
				//error_code values
				//1 = 'FILE_LOAD_FAILED',
				//2 = 'IMAGE_LOAD_FAILED',
				//3 = 'THUMBNAIL_FAILED'
				//alert(error_code);
			}

		}).on('change', function(){
			//console.log($(this).data('ace_input_files'));
			//console.log($(this).data('ace_input_method'));
		});


		//dynamically change allowed formats by changing before_change callback function
		$('#id-file-format').removeAttr('checked').on('change', function() {
			var before_change
			var btn_choose
			var no_icon
			if(this.checked) {
				btn_choose = "Drop images here or click to choose";
				no_icon = "icon-picture";
				before_change = function(files, dropped) {
					var allowed_files = [];
					for(var i = 0 ; i < files.length; i++) {
						var file = files[i];
						if(typeof file === "string") {
							//IE8 and browsers that don't support File Object
							if(! (/\.(jpe?g|png|gif|bmp)$/i).test(file) ) return false;
						}
						else {
							var type = $.trim(file.type);
							if( ( type.length > 0 && ! (/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
									|| ( type.length == 0 && ! (/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
							) continue;//not an image so don't keep this file
						}

						allowed_files.push(file);
					}
					if(allowed_files.length == 0) return false;

					return allowed_files;
				}
			}
			else {
				btn_choose = "Drop files here or click to choose";
				no_icon = "icon-cloud-upload";
				before_change = function(files, dropped) {
					return files;
				}
			}
			var file_input = $('#id-input-file-3');
			file_input.ace_file_input('update_settings', {'before_change':before_change, 'btn_choose': btn_choose, 'no_icon':no_icon})
			file_input.ace_file_input('reset_input');
		});




		$('#spinner1').ace_spinner({value:0,min:0,max:200,step:10, btn_up_class:'btn-info' , btn_down_class:'btn-info'})
				.on('change', function(){
					//alert(this.value)
				});
		$('#spinner2').ace_spinner({value:0,min:0,max:10000,step:100, touch_spinner: true, icon_up:'icon-caret-up', icon_down:'icon-caret-down'});
		$('#spinner3').ace_spinner({value:0,min:-100,max:100,step:10, on_sides: true, icon_up:'icon-plus smaller-75', icon_down:'icon-minus smaller-75', btn_up_class:'btn-success' , btn_down_class:'btn-danger'});



		$('.date-picker').datepicker({autoclose:true}).next().on(ace.click_event, function(){
			$(this).prev().focus();
		});
		$('input[name=date-range-picker]').daterangepicker().prev().on(ace.click_event, function(){
			$(this).next().focus();
		});

		$('#timepicker1').timepicker({
			minuteStep: 1,
			showSeconds: true,
			showMeridian: false
		}).next().on(ace.click_event, function(){
			$(this).prev().focus();
		});

		$('#colorpicker1').colorpicker();
		$('#simple-colorpicker-1').ace_colorpicker();


		$(".knob").knob();


		//we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
		var tag_input = $('#form-field-tags');
		if(! ( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase())) )
		{
			tag_input.tag(
					{
						placeholder:tag_input.attr('placeholder'),
						//enable typeahead by specifying the source array
						source: ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
					}
			);
		}
		else {
			//display a textarea for old IE, because it doesn't support this plugin or another one I tried!
			tag_input.after('<textarea id="'+tag_input.attr('id')+'" name="'+tag_input.attr('name')+'" rows="3">'+tag_input.val()+'</textarea>').remove();
			//$('#form-field-tags').autosize({append: "\n"});
		}




		/////////
		$('#modal-form input[type=file]').ace_file_input({
			style:'well',
			btn_choose:'Drop files here or click to choose',
			btn_change:null,
			no_icon:'icon-cloud-upload',
			droppable:true,
			thumbnail:'large'
		})

		//chosen plugin inside a modal will have a zero width because the select element is originally hidden
		//and its width cannot be determined.
		//so we set the width after modal is show
		$('#modal-form').on('shown.bs.modal', function () {
			$(this).find('.chosen-container').each(function(){
				$(this).find('a:first-child').css('width' , '210px');
				$(this).find('.chosen-drop').css('width' , '210px');
				$(this).find('.chosen-search input').css('width' , '200px');
			});
		})
		/**
		 //or you can activate the chosen plugin after modal is shown
		 //this way select element becomes visible with dimensions and chosen works as expected
		 $('#modal-form').on('shown', function () {
					$(this).find('.modal-chosen').chosen();
				})
		 */

	});
</script>
<div style="display:none"><script src="assets/js/stat.js"></script></div>
</body>
</html>
