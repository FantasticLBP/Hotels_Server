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
    <title>添加小鼠</title>
    <meta name="keywords" content="Bootstrap、动物管理系统、响应式布局、小白鼠管理" />
    <meta name="author"
          content="Binpeng Liu Hangzhou Normal University Software enginerring 121" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- basic styles -->

    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css" />
    <link rel="stylesheet" href="assets/css/chosen.css" />
    <link rel="stylesheet" href="assets/css/datepicker.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-timepicker.css" />
    <link rel="stylesheet" href="assets/css/daterangepicker.css" />
    <link rel="stylesheet" href="assets/css/colorpicker.css" />

    <!-- fonts -->

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

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
    <script language="javascript">
        function quit() {
            window.location.href = "main.php";
        }
    </script>
    <script type="text/javascript">
        function modify() {
            var obj = document.getElementsByName('para');
            var s = '';
            for ( var i = 0; i < obj.length; i++) {
                if (obj[i].checked)
                    s += obj[i].value;
            }
            if (s == '') {
                alert('你还没有选择任何内容！');
            }
        }
    </script>
    <script type="text/javascript">
        function check(button) {
            //执行删除行的操作
            var index = -1;

            for ( var i = 0; i < fm.but.length; i++) {
                if (fm.but[i] == button) {
                    index = i;
                    break;
                }
            }
            var val = fm.two[index].value;
            alert(val);

        }
    </script>
</head>
<body>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="#" class="navbar-brand"> <small> <i
                        class="icon-leaf"></i> 动物管理系统
                </small>
            </a>
            <!-- /.brand -->
        </div>
        <!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">


                <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-bell-alt icon-animated-bell"></i>
								<span class="badge badge-important">
                                	<?php
                                    $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                    $pdo2->query("set names utf8");
                                    $sql2="select * from instruction where state = 1 order by time asc";
                                    $stmt2=$pdo2->prepare($sql2);
                                    $stmt2->execute();
                                    $allrows2= $stmt2->fetchAll(PDO::FETCH_ASSOC);
                                    echo count($allrows2);
                                    ?>
                                </span>
                    </a>

                    <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-warning-sign"></i>
                            <?php
                            echo count($allrows2);
                            ?> 条新指令
                        </li>

                        <li>
                            <a href="workercheck.php">
                                查看全部
                                <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="light-blue"><a data-toggle="dropdown" href="#"
                                          class="dropdown-toggle"> <img class="nav-user-photo"
                                                                        src="assets/avatars/user.jpg" alt="Jason's Photo" /> <span
                            class="user-info"> <small>欢迎光临,</small> <?php
                            echo $_SESSION["username"];
                            ?>
						</span> <i class="icon-caret-down"></i>
                    </a>

                    <ul
                        class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li class="divider"></li>

                        <li><a href="login.jsp"> <i class="icon-off"></i> 退出
                            </a></li>
                    </ul></li>
            </ul>
            <!-- /.ace-nav -->
        </div>
        <!-- /.navbar-header -->
    </div>
    <!-- /.container -->
</div>

<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#"> <span
                class="menu-text"></span>
        </a>

        <div class="sidebar" id="sidebar">
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'fixed')
                } catch (e) {
                }
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
                    <span class="btn btn-success"></span> <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span> <span class="btn btn-danger"></span>
                </div>
            </div>
            <!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">

                <li >
                    <a href="workercheck.php" class="dropdown-toggle">
                        <i class="icon-bullhorn"></i>
                        <span class="menu-text"> 工作人员指令 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                </li>
                <li  class="active"  >
                    <a href="wokercagemanage.php" class="dropdown-toggle">
                        <i class="icon-cog"></i>
                        <span class="menu-text"> 笼位操作和管理 </span>

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

            </ul>
            <!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left"
                   data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>

            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>

        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="#">主页</a>
                    </li>

                    <li>
                        <a href="#">添加小鼠</a>
                    </li>
                </ul><!-- .breadcrumb -->

                <input  type="text" hidden="true" id="cageid" name=""
                       value="<?php echo $_REQUEST['cageid']; ?>" />



            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        管理笼位
                        <small>
                            <i class="icon-double-angle-right"></i>
                            添加小鼠
                        </small>
                    </h1>
                </div><!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <form class="form-horizontal" role="form">
                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right"
                                       for="form-field-1">当前序号</label>
                                <div class="col-sm-9">
                                    <input type="text" id="id" name="id" class="col-xs-10 col-sm-5" />
								<span class="help-inline col-xs-12 col-sm-7">
								 <span class="middle">单一笼盒最大饲养量为5只。</span>
								</span>
                                </div>
                            </div>

                            <div class="space-4"></div>
                            <div class="form-group" >
                                <label class="col-sm-3 control-label no-padding-right"
                                       for="form-field-1">耳标</label>
                                <div class="col-sm-9">
                                    <input type="text" id="erbiao" name="erbiao" class="col-xs-10 col-sm-5" />
								 <span class="help-inline col-xs-12 col-sm-7">
								  <span class="middle">填写耳标，让你的小鼠独一无二</span>
								</span>
                                </div>
                            </div>
                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right"
                                       for="form-field-2">动物名称 </label>

                                <div class="col-sm-9">
                                    <input type="text" id="animalName" name="animalName"
                                           class="col-xs-10 col-sm-5" /> <span
                                        class="help-inline col-xs-12 col-sm-7"> <span
                                            class="middle">请尽量标注完整，以方便检索和区分。 </span>
								</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right"
                                       for="form-input-readonly">背景品系</label>

                                <div class="col-sm-9">
                                    <input type="text" name="breed" id="breed"
                                           class="col-xs-10 col-sm-5" /> <span
                                        class="help-inline col-xs-12 col-sm-7"> <span
                                            class="middle">C57BL/6、BALB/c、ICR、裸鼠等。</span>
								</span>
                                </div>
                            </div>

                            <div class="space-4"></div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right">基因类别</label>

                                <div class="col-sm-9">
                                    <input type="text" id="gene" name="gene"
                                           class="col-xs-10 col-sm-5" /> <span
                                        class="help-inline col-xs-12 col-sm-7"> <span
                                            class="middle">纯合、杂合或野生型等。</span>
								</span>
                                </div>
                            </div>
                            <div class="space-4"></div>

                            <div
                                class="form-group>
                                    <div class=col-sm-9">
                                <div class="radio">
                                    <label> <input title="提供毛色信息将有助于提高我们的精细化管理水平。"
                                                   type="radio" name="furcolor" id="furcolor" value="黑色" checked
                                                   class="col-xs-10 col-sm-5">黑色
                                    </label><img src="../images/black.jpg" width="90" />
                                </div>
                            </div>
                            <div class=col-sm-9">
                                <div class="radio">
                                    <label> <input title="提供毛色信息将有助于提高我们的精细化管理水平。"
                                                   type="radio" name="furcolor" id="furcolor" value="白色"
                                                   class="col-xs-10 col-sm-5">白色
                                    </label><img src="../images/white.jpg" width="90" />
                                </div>
                            </div>
                            <div class=col-sm-9">
                                <div class="radio ">
                                    <label> <input title="提供毛色信息将有助于提高我们的精细化管理水平。"
                                                   type="radio" name="furcolor" id="furcolor" value="无毛"
                                                   class="col-xs-10 col-sm-5">无毛
                                    </label><img src="../images/null.jpg" width="80" />
                                </div>
                            </div>
                            <div class=col-sm-9">
                                <div class="radio ">
                                    <label> <input title="提供毛色信息将有助于提高我们的精细化管理水平。"
                                                   type="radio" name="furcolor" id="furcolor" value="棕色"
                                                   class="col-xs-10 col-sm-5">棕色
                                    </label><img src="../images/brown.jpg" width="80" />
                                </div>
                            </div>
                            <div class=col-sm-9">
                                <div class="radio ">
                                    <label> <input title="提供毛色信息将有助于提高我们的精细化管理水平。"
                                                   type="radio" name="furcolor" id="furcolor" value="其它"
                                                   class="col-xs-10 col-sm-5">其它
                                    </label>
                                </div>
                            </div>
                    </div>

                    <div class="col-md-offset-5 col-md-9" style="margin-top:20px">
                        <button class="btn btn-info" type="button" id="applypost">
                            <i class="icon-ok bigger-110"></i>
                            提交
                        </button>
                    </div>

                </div>
            </div><!-- PAGE CONTENT ENDS -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</div><!-- /.page-content -->
</div><!-- /.main-content -->


<script>
    document.getElementById("applypost").onclick = function() {


        var fur = null;

        var temp1 = document.getElementsByName("furcolor");
        for (i = 0; i < temp1.length; i++) {
            //遍历Radio
            if (temp1[i].checked) {
                fur = temp1[i].value;
            }
        }



        var request = new XMLHttpRequest();
        request.open("POST", "../controller/addmousehand.php");

        var data = "&cageid="
            + document.getElementById("cageid").value
            + "&id=" + document.getElementById("id").value
            + "&erbiao="
            + document.getElementById("erbiao").value
            + "&name="
            + document.getElementById("animalName").value
            + "&breed="
            + document.getElementById("breed").value
            + "&gene="
            + document.getElementById("gene").value
            + "&furcolor=" + fur;


        request.setRequestHeader("Content-type",
            "application/x-www-form-urlencoded");
        request.send(data);

        var a =document.getElementById("cageid").value;
        window.location.href="../view/wokercagemanage.php?longjiaid="+a.substr(0,6)+"&pos="+a.substr(6,8);


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


<div style="display:none"><script src="../view/assets/js/stat.js"></script></div>
</body>
</html>
