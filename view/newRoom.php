<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>住哪儿管理系统 -添加新产品</title>
    <meta name="keywords" content="Bootstrap模版,Bootstrap模版下载,Bootstrap教程,Bootstrap中文"/>
    <meta name="description" content="站长素材提供Bootstrap模版,Bootstrap教程,Bootstrap中文翻译等相关Bootstrap插件下载"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <!-- basic styles -->

    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>

    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css"/>
    <![endif]-->

    <!-- page specific plugin styles -->

    <link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css"/>
    <link rel="stylesheet" href="assets/css/chosen.css"/>
    <link rel="stylesheet" href="assets/css/datepicker.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap-timepicker.css"/>
    <link rel="stylesheet" href="assets/css/daterangepicker.css"/>
    <link rel="stylesheet" href="assets/css/colorpicker.css"/>
    <link href="assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

    <!-- ace styles -->

    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>

    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
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
            <a href="#" class="navbar-brand">
                <small>
                    <i class="icon-leaf"></i>
                    住哪儿管理系统
                </small>
            </a><!-- /.brand -->
        </div><!-- /.navbar-header -->

        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-tasks"></i>
                        <span class="badge badge-grey">4</span>
                    </a>

                    <ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-ok"></i>
                            4 Tasks to complete
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
                                    <span class="pull-left">Software Update</span>
                                    <span class="pull-right">65%</span>
                                </div>

                                <div class="progress progress-mini ">
                                    <div style="width:65%" class="progress-bar "></div>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
                                    <span class="pull-left">Hardware Upgrade</span>
                                    <span class="pull-right">35%</span>
                                </div>

                                <div class="progress progress-mini ">
                                    <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
                                    <span class="pull-left">Unit Testing</span>
                                    <span class="pull-right">15%</span>
                                </div>

                                <div class="progress progress-mini ">
                                    <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
                                    <span class="pull-left">Bug Fixes</span>
                                    <span class="pull-right">90%</span>
                                </div>

                                <div class="progress progress-mini progress-striped active">
                                    <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                See tasks with details
                                <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-bell-alt icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>

                    <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-warning-sign"></i>
                            8 Notifications
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-pink icon-comment"></i>
												New Comments
											</span>
                                    <span class="pull-right badge badge-info">+12</span>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="btn btn-xs btn-primary icon-user"></i>
                                Bob just signed up as an editor ...
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-success icon-shopping-cart"></i>
												New Orders
											</span>
                                    <span class="pull-right badge badge-success">+8</span>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <div class="clearfix">
											<span class="pull-left">
												<i class="btn btn-xs no-hover btn-info icon-twitter"></i>
												Followers
											</span>
                                    <span class="pull-right badge badge-info">+11</span>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                See all notifications
                                <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="green">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>

                    <ul class="pull-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-envelope-alt"></i>
                            5 Messages
                        </li>

                        <li>
                            <a href="#">
                                <img src="assets/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar"/>
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Alex:</span>
												Ciao sociis natoque penatibus et auctor ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>a moment ago</span>
											</span>
										</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <img src="assets/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar"/>
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Susan:</span>
												Vestibulum id ligula porta felis euismod ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>20 minutes ago</span>
											</span>
										</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <img src="assets/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar"/>
										<span class="msg-body">
											<span class="msg-title">
												<span class="blue">Bob:</span>
												Nullam quis risus eget urna mollis ornare ...
											</span>

											<span class="msg-time">
												<i class="icon-time"></i>
												<span>3:15 pm</span>
											</span>
										</span>
                            </a>
                        </li>

                        <li>
                            <a href="inbox.html">
                                See all messages
                                <i class="icon-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo"/>
								<span class="user-info">
									<small>欢迎,</small>
									admin
								</span>

                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="#">
                                <i class="icon-cog"></i>
                                Settings
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <i class="icon-user"></i>
                                Profile
                            </a>
                        </li>

                        <li class="divider"></li>

                        <li>
                            <a href="#">
                                <i class="icon-off"></i>
                                Logout
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
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
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
                    <span class="btn btn-success"></span>

                    <span class="btn btn-info"></span>

                    <span class="btn btn-warning"></span>

                    <span class="btn btn-danger"></span>
                </div>
            </div><!-- #sidebar-shortcuts -->

            <ul class="nav nav-list">
                <li>
                    <a href="index.php">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text"> 控制台 </span>
                    </a>
                </li>

                <li>
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-desktop"></i>
                        <span class="menu-text"> 用户管理</span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="user.php">
                                <i class="icon-double-angle-right"></i>
                                全部用户
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="active">
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-list"></i>
                        <span class="menu-text"> 宾馆管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li class="active">
                            <a href="newHotel.php">
                                <i class="icon-double-angle-right"></i>
                                主题酒店发布
                            </a>
                        </li>

                        <li>
                            <a href="specicalHotel.php">
                                <i class="icon-double-angle-right"></i>
                                特色酒店
                            </a>
                        </li>
                        <li>
                            <a href="cheapHotel.php">
                                <i class="icon-double-angle-right"></i>
                                特惠酒店
                            </a>
                        </li>
                        <li class="active">
                            <a href="hotelList.php">
                                <i class="icon-double-angle-right"></i>
                                酒店列表
                            </a>
                        </li>
                    </ul>
                </li>

                <li >
                    <a href="#" class="dropdown-toggle">
                        <i class="icon-edit"></i>
                        <span class="menu-text"> 订单管理 </span>

                        <b class="arrow icon-angle-down"></b>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="unpayedOrder.php">
                                <i class="icon-double-angle-right"></i>
                                待付款
                            </a>
                        </li>

                        <li>
                            <a href="unVisitedOrder.php">
                                <i class="icon-double-angle-right"></i>
                                未出行
                            </a>
                        </li>

                        <li>
                            <a href="unEvaluatedOrder.php">
                                <i class="icon-double-angle-right"></i>
                                待评价
                            </a>
                        </li>

                        <li>
                            <a href="orders.php">
                                <i class="icon-double-angle-right"></i>
                                历史记录
                            </a>
                        </li>
                    </ul>
                </li>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
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
                        <a href="main.php">主页</a>
                    </li>
                    <li class="active">宾馆管理</li>
                </ul><!-- .breadcrumb -->


            </div>

            <div class="page-content">
                <div class="page-header">
                    <h1>
                        <?php
                            echo $_REQUEST["name"];
                        ?>
                        <small>
                            <i class="icon-double-angle-right"></i>
                            房屋发布
                        </small>
                    </h1>
                </div><!-- /.page-header -->
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-horizontal" role="form" action="../controller/publishRoom.php" method="post" enctype="multipart/form-data" onsubmit="return validate()">

                            <div class="form-group hidden" >
                                <label class="col-sm-3 control-label no-padding-right" for="hotelId">酒店名称</label>

                                <div class="col-sm-9">
                                    <?php
                                    echo '<input type="text" id="hotelName" name="hotelName" placeholder="酒店名称" class="col-xs-10 col-sm-5" value="';
                                    echo $_REQUEST['name'];
                                    echo '"/>';
                                    ?>
                                </div>
                            </div>


                            <div class="form-group hidden" >
                                <label class="col-sm-3 control-label no-padding-right" for="hotelId">酒店id</label>

                                <div class="col-sm-9">
                                    <?php
                                        echo '<input type="text" id="hotelId" name="hotelId" placeholder="酒店id" class="col-xs-10 col-sm-5" value="';
                                        echo $_REQUEST['id'];
                                        echo '"/>';
                                    ?>
                                </div>
                            </div>


                            <div class="form-group hidden" >
                                <label class="col-sm-3 control-label no-padding-right" for="hasWifi">wifi</label>

                                <div class="col-sm-9">
                                    <?php
                                        echo '<input type="text" id="hasWifi" name="hasWifi" placeholder="wifi情况" class="col-xs-10 col-sm-5" value="';
                                        echo $_REQUEST['wifi'];
                                        echo '"/>';
                                    ?>
                                </div>
                            </div>


                            <div class="form-group hidden" >
                                <label class="col-sm-3 control-label no-padding-right" for="equipmentCondtion">配套设施情况</label>

                                <div class="col-sm-9">
                                    <?php
                                        echo '<input type="text" id="equipmentCondtion" name="equipmentCondtion" placeholder="配套设施情况" class="col-xs-10 col-sm-5" value="';
                                        echo $_REQUEST['equipment'];
                                        echo ' "/>';
                                    ?>

                                </div>
                            </div>

                            <div class="form-group" >
                                <label class="col-sm-3 control-label no-padding-right" for="type">房屋类型</label>

                                <div class="col-sm-9">
                                    <input type="text" id="type" name="type" placeholder="豪华大床房" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>

                            <div class="form-group hidden" id="typeError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="znecancelPrice">住哪儿可取消价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="znecancelPrice" name="znecancelPrice" placeholder="住哪儿可取消价格" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="znecancelPriceError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="znePrice">住哪儿不可取消价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="znePrice" name="znePrice" placeholder="住哪儿不可取消价格" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="znePriceError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="delegatecancelPrice">代理可取消价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="delegatecancelPrice" name="delegatecancelPrice" placeholder="代理可取消价格" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="delegatecancelPriceError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="delegatePrice">代理不可取消价格</label>

                                <div class="col-sm-9">
                                    <input type="text" id="delegatePrice" name="delegatePrice" placeholder="代理不可取消价格" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="delegatePriceError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>



                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="hasWindow">有无窗户</label>

                                <div class="col-sm-9">
                                    <select class="col-xs-10 col-sm-5" id="hasWindow" name="hasWindow" data-placeholder="请选择窗户情况">
                                        <option value="0">请选择窗户情况</option>
                                        <option value="1">有</option>
                                        <option value="2">无</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group hidden" id="hasWindowError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="floor">房屋楼层</label>

                                <div class="col-sm-9">
                                    <input type="text" id="floor" name="floor" placeholder="房屋楼层" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="floorError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="square">房屋面积</label>

                                <div class="col-sm-9">
                                    <input type="text" id="square" name="square" placeholder="房屋面积" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="squareError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="bedScale">床位大小</label>

                                <div class="col-sm-9">
                                    <input type="text" id="bedScale" name="bedScale" placeholder="床位大小" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="bedScaleError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="availablePerson">可入住人数</label>

                                <div class="col-sm-9">
                                    <input type="text" id="availablePerson" name="availablePerson" placeholder="可入住人数" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="availablePersonError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="count">房间数目</label>

                                <div class="col-sm-9">
                                    <input type="text" id="count" name="count" placeholder="房间总数" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>
                            <div class="form-group hidden" id="countError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="otherInfo">其他信息</label>

                                <div class="col-sm-9">
                                    <input type="text" id="otherInfo" name="otherInfo" placeholder="到店送果盘哦" class="col-xs-10 col-sm-5"/>
                                </div>
                            </div>


                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="marketingTime">主图1</label>

                                <div class="col-sm-9">
                                    <input type="file" name="myFile1" id="id-input-file-1" class="col-xs-10 col-sm-5"/>

                                </div>
                            </div>
                            <div class="form-group hidden" id="imageError">
                                <label class="col-sm-3 control-label no-padding-right"></label>
                                <div class="col-sm-9 error"></div>
                            </div>

                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="marketingTime">主图2</label>

                                <div class="col-sm-9">
                                    <input type="file" name="myFile2"  id="id-input-file-2" class="col-xs-10 col-sm-5"/>

                                </div>
                            </div>

                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="marketingTime">主图3</label>

                                <div class="col-sm-9">
                                    <input type="file" name="myFile3"  id="id-input-file-1" class="col-xs-10 col-sm-5"/>

                                </div>
                            </div>

                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="marketingTime">主图4</label>

                                <div class="col-sm-9">
                                    <input type="file" name="myFile4"  id="id-input-file-2" class="col-xs-10 col-sm-5"/>

                                </div>
                            </div>

                            <div class="space-4"></div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="marketingTime">主图5</label>

                                <div class="col-sm-9">
                                    <input type="file" name="myFile5"  id="id-input-file-1" class="col-xs-10 col-sm-5"/>

                                </div>
                            </div>


                            <div class="clearfix ">
                                <div class="col-md-offset-3 col-md-9">
                                    <input type="submit" value="提交" class="btn btn-info"/>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
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
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar"/>
                        <label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar"/>
                        <label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs"/>
                        <label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl"/>
                        <label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
                    </div>

                    <div>
                        <input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container"/>
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

    <script src="http://cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script><![endif]-->
    <![endif]-->

    <!--[if !IE]> -->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>

    <!-- <![endif]-->

    <!--[if IE]>
    <script type="text/javascript">
        window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>" + "<" + "/script>");
    </script>
    <![endif]-->

    <script type="text/javascript">
        if ("ontouchend" in document) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
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
    <script type="text/javascript" src="assets/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="assets/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
    <!-- ace scripts -->

    <script src="assets/js/ace-elements.min.js"></script>
    <script src="assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <script type="text/javascript">
        $("#type").on("blur", function() {
            if ($("#type").val() === "") {
                $("#typeError").removeClass("hidden");
                $("#typeError>div").text("温馨提示：请输入房屋类型");
            } else{
                $("#typeError").addClass("hidden");
            }
        });
        $("#znecancelPrice").on("blur", function() {
            if ($("#znecancelPrice").val() === "") {
                $("#znecancelPriceError").removeClass("hidden");
                $("#znecancelPriceError>div").text("温馨提示：请输入住哪儿可取消价格");
            } else{
                $("#znecancelPriceError").addClass("hidden");
            }
        });
        $("#znePrice").on("blur", function() {
            if ($("#znePrice").val() === "") {
                $("#znePriceError").removeClass("hidden");
                $("#znePriceError>div").text("温馨提示：请输入住哪儿不可取消价格");
            } else{
                $("#znePriceError").addClass("hidden");
            }
        });
        $("#delegatecancelPrice").on("blur", function() {
            if ($("#delegatecancelPrice").val() === "") {
                $("#delegatecancelPriceError").removeClass("hidden");
                $("#delegatecancelPriceError>div").text("温馨提示：请输入代理可取消价格");
            } else{
                $("#delegatecancelPriceError").addClass("hidden");
            }
        });
        $("#delegatePrice").on("blur", function() {
            if ($("#delegatePrice").val() === "") {
                $("#delegatePriceError").removeClass("hidden");
                $("#delegatePriceError>div").text("温馨提示：请输入代理不可取消价格");
            } else{
                $("#delegatePriceError").addClass("hidden");
            }
        });
        $("#hasWindow").on("blur", function() {
            if ($("#hasWindow").val() === "0") {
                $("#hasWindowError").removeClass("hidden");
                $("#hasWindowError>div").text("温馨提示：请选择窗户情况");
            } else{
                $("#hasWindowError").addClass("hidden");
            }
        });
        $("#floor").on("blur", function() {
            if ($("#floor").val() === "") {
                $("#floorError").removeClass("hidden");
                $("#floorError>div").text("温馨提示：请输入房屋楼层");
            } else{
                $("#floorError").addClass("hidden");
            }
        });
        $("#square").on("blur", function() {
            if ($("#square").val() === "") {
                $("#squareError").removeClass("hidden");
                $("#squareError>div").text("温馨提示：请输入房屋面积");
            } else{
                $("#squareError").addClass("hidden");
            }
        });

        $("#bedScale").on("blur", function() {
            if ($("#bedScale").val() === "") {
                $("#bedScaleError").removeClass("hidden");
                $("#bedScaleError>div").text("温馨提示：请输入床位大小");
            } else{
                $("#bedScaleError").addClass("hidden");
            }
        });

        $("#availablePerson").on("blur", function() {
            if ($("#availablePerson").val() === "") {
                $("#availablePersonError").removeClass("hidden");
                $("#availablePersonError>div").text("温馨提示：请输入该类房屋数可以入住的人数");
            } else{
                $("#availablePersonError").addClass("hidden");
            }
        });
        $("#count").on("blur", function() {
            if ($("#count").val() === "") {
                $("#countError").removeClass("hidden");
                $("#countError>div").text("温馨提示：请输入该类房屋数量");
            } else{
                $("#countError").addClass("hidden");
            }
        });

        function validate(){
            if($("#id-input-file-1").val() === ""){
                $("#imageError").removeClass("hidden");
                $("#imageError>div").text("温馨提示：请选择上传酒店图片");
                return false;
            }else {
                $("#imageError").addClass("hidden");
                return true;
            }
        }

    </script>
    <script type="text/javascript">
        jQuery(function ($) {
            $('#id-disable-check').on('click', function () {
                var inp = $('#form-input-readonly').get(0);
                if (inp.hasAttribute('disabled')) {
                    inp.setAttribute('readonly', 'true');
                    inp.removeAttribute('disabled');
                    inp.value = "This text field is readonly!";
                }
                else {
                    inp.setAttribute('disabled', 'disabled');
                    inp.removeAttribute('readonly');
                    inp.value = "This text field is disabled!";
                }
            });


            $(".chosen-select").chosen();
            $('#chosen-multiple-style').on('click', function (e) {
                var target = $(e.target).find('input[type=radio]');
                var which = parseInt(target.val());
                if (which == 2) $('#form-field-select-4').addClass('tag-input-style');
                else $('#form-field-select-4').removeClass('tag-input-style');
            });


            $('[data-rel=tooltip]').tooltip({container: 'body'});
            $('[data-rel=popover]').popover({container: 'body'});

            $('textarea[class*=autosize]').autosize({append: "\n"});
            $('textarea.limited').inputlimiter({
                remText: '%n character%s remaining...',
                limitText: 'max allowed : %n.'
            });

            $.mask.definitions['~'] = '[+-]';
            $('.input-mask-date').mask('99/99/9999');
            $('.input-mask-phone').mask('(999) 999-9999');
            $('.input-mask-eyescript').mask('~9.99 ~9.99 999');
            $(".input-mask-product").mask("a*-999-a999", {
                placeholder: " ", completed: function () {
                    alert("You typed the following: " + this.val());
                }
            });


            $("#input-size-slider").css('width', '200px').slider({
                value: 1,
                range: "min",
                min: 1,
                max: 8,
                step: 1,
                slide: function (event, ui) {
                    var sizing = ['', 'input-sm', 'input-lg', 'input-mini', 'input-small', 'input-medium', 'input-large', 'input-xlarge', 'input-xxlarge'];
                    var val = parseInt(ui.value);
                    $('#form-field-4').attr('class', sizing[val]).val('.' + sizing[val]);
                }
            });

            $("#input-span-slider").slider({
                value: 1,
                range: "min",
                min: 1,
                max: 12,
                step: 1,
                slide: function (event, ui) {
                    var val = parseInt(ui.value);
                    $('#form-field-5').attr('class', 'col-xs-' + val).val('.col-xs-' + val);
                }
            });


            $("#slider-range").css('height', '200px').slider({
                orientation: "vertical",
                range: true,
                min: 0,
                max: 100,
                values: [17, 67],
                slide: function (event, ui) {
                    var val = ui.values[$(ui.handle).index() - 1] + "";

                    if (!ui.handle.firstChild) {
                        $(ui.handle).append("<div class='tooltip right in' style='display:none;left:16px;top:-6px;'><div class='tooltip-arrow'></div><div class='tooltip-inner'></div></div>");
                    }
                    $(ui.handle.firstChild).show().children().eq(1).text(val);
                }
            }).find('a').on('blur', function () {
                $(this.firstChild).hide();
            });

            $("#slider-range-max").slider({
                range: "max",
                min: 1,
                max: 10,
                value: 2
            });

            $("#eq > span").css({width: '90%', 'float': 'left', margin: '15px'}).each(function () {
                // read initial values from markup and remove that
                var value = parseInt($(this).text(), 10);
                $(this).empty().slider({
                    value: value,
                    range: "min",
                    animate: true

                });
            });


            $('#id-input-file-1 , #id-input-file-2').ace_file_input({
                no_file: '没有文件 ...',
                btn_choose: '选取文件',
                btn_change: '重新选取',
                droppable: false,
                onchange: null,
                thumbnail: false //| true | large
                //whitelist:'gif|png|jpg|jpeg'
                //blacklist:'exe|php'
                //onchange:''
                //
            });

            $('#id-input-file-3').ace_file_input({
                style: 'well',
                btn_choose: 'Drop files here or click to choose',
                btn_change: null,
                no_icon: 'icon-cloud-upload',
                droppable: true,
                thumbnail: 'small'//large | fit
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
                preview_error: function (filename, error_code) {
                    //name of the file that failed
                    //error_code values
                    //1 = 'FILE_LOAD_FAILED',
                    //2 = 'IMAGE_LOAD_FAILED',
                    //3 = 'THUMBNAIL_FAILED'
                    //alert(error_code);
                }

            }).on('change', function () {
                //console.log($(this).data('ace_input_files'));
                //console.log($(this).data('ace_input_method'));
            });


            //dynamically change allowed formats by changing before_change callback function
            $('#id-file-format').removeAttr('checked').on('change', function () {
                var before_change
                var btn_choose
                var no_icon
                if (this.checked) {
                    btn_choose = "Drop images here or click to choose";
                    no_icon = "icon-picture";
                    before_change = function (files, dropped) {
                        var allowed_files = [];
                        for (var i = 0; i < files.length; i++) {
                            var file = files[i];
                            if (typeof file === "string") {
                                //IE8 and browsers that don't support File Object
                                if (!(/\.(jpe?g|png|gif|bmp)$/i).test(file)) return false;
                            }
                            else {
                                var type = $.trim(file.type);
                                if (( type.length > 0 && !(/^image\/(jpe?g|png|gif|bmp)$/i).test(type) )
                                    || ( type.length == 0 && !(/\.(jpe?g|png|gif|bmp)$/i).test(file.name) )//for android's default browser which gives an empty string for file.type
                                ) continue;//not an image so don't keep this file
                            }

                            allowed_files.push(file);
                        }
                        if (allowed_files.length == 0) return false;

                        return allowed_files;
                    }
                }
                else {
                    btn_choose = "Drop files here or click to choose";
                    no_icon = "icon-cloud-upload";
                    before_change = function (files, dropped) {
                        return files;
                    }
                }
                var file_input = $('#id-input-file-3');
                file_input.ace_file_input('update_settings', {
                    'before_change': before_change,
                    'btn_choose': btn_choose,
                    'no_icon': no_icon
                })
                file_input.ace_file_input('reset_input');
            });


            $('#spinner1').ace_spinner({
                    value: 0,
                    min: 0,
                    max: 200,
                    step: 10,
                    btn_up_class: 'btn-info',
                    btn_down_class: 'btn-info'
                })
                .on('change', function () {
                    //alert(this.value)
                });
            $('#spinner2').ace_spinner({
                value: 0,
                min: 0,
                max: 10000,
                step: 100,
                touch_spinner: true,
                icon_up: 'icon-caret-up',
                icon_down: 'icon-caret-down'
            });
            $('#spinner3').ace_spinner({
                value: 0,
                min: -100,
                max: 100,
                step: 10,
                on_sides: true,
                icon_up: 'icon-plus smaller-75',
                icon_down: 'icon-minus smaller-75',
                btn_up_class: 'btn-success',
                btn_down_class: 'btn-danger'
            });


            $('.date-picker').datepicker({autoclose: true}).next().on(ace.click_event, function () {
                $(this).prev().focus();
            });
            $('input[name=date-range-picker]').daterangepicker().prev().on(ace.click_event, function () {
                $(this).next().focus();
            });

            $('#timepicker1').timepicker({
                minuteStep: 1,
                showSeconds: true,
                showMeridian: false
            }).next().on(ace.click_event, function () {
                $(this).prev().focus();
            });

            $('#colorpicker1').colorpicker();
            $('#simple-colorpicker-1').ace_colorpicker();


            $(".knob").knob();


            //we could just set the data-provide="tag" of the element inside HTML, but IE8 fails!
            var tag_input = $('#form-field-tags');
            if (!( /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()))) {
                tag_input.tag(
                    {
                        placeholder: tag_input.attr('placeholder'),
                        //enable typeahead by specifying the source array
                        source: ace.variable_US_STATES,//defined in ace.js >> ace.enable_search_ahead
                    }
                );
            }
            else {
                //display a textarea for old IE, because it doesn't support this plugin or another one I tried!
                tag_input.after('<textarea id="' + tag_input.attr('id') + '" name="' + tag_input.attr('name') + '" rows="3">' + tag_input.val() + '</textarea>').remove();
                //$('#form-field-tags').autosize({append: "\n"});
            }


            /////////
            $('#modal-form input[type=file]').ace_file_input({
                style: 'well',
                btn_choose: 'Drop files here or click to choose',
                btn_change: null,
                no_icon: 'icon-cloud-upload',
                droppable: true,
                thumbnail: 'large'
            })

            //chosen plugin inside a modal will have a zero width because the select element is originally hidden
            //and its width cannot be determined.
            //so we set the width after modal is show
            $('#modal-form').on('shown.bs.modal', function () {
                $(this).find('.chosen-container').each(function () {
                    $(this).find('a:first-child').css('width', '210px');
                    $(this).find('.chosen-drop').css('width', '210px');
                    $(this).find('.chosen-search input').css('width', '200px');
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
    <div style="display:none">
        <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
                charset='gb2312'></script>
    </div>
</body>
</html>
