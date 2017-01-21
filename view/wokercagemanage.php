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

    <!-- fonts -->

    <link rel="stylesheet"
          href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

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
    <![endif]-->


    <style type="text/css">
        *{padding:0;margin:0}
        p{line-height:28px}

        .go{width:47px;height:78px;background-color:#FFF;position:fixed;_position:absolute;_top:expression(eval(document.documentElement.scrollTop+document.documentElement.clientHeight-this.offsetHeight-(parseInt(this.currentStyle.marginTop,10)||200)-(parseInt(this.currentStyle.marginBottom,10)||0)));right:12px;bottom:25%;border-radius:5px;box-shadow:0 0 2px #6E6E6E}
        .go a{background:url(../images/a.png) no-repeat;display:block;text-indent:999em;width:37px;margin:5px;border:0;overflow:hidden;float:left}
        .go .top{background-position:0 -33px;height:22px}
        .go .feedback{background-position:0 -54px;height:32px}
        .go .bottom{background-position:0 -88px;height:22px}
        .go .top:hover{background-position:-38px -33px}
        .go .feedback:hover{background-position:-38px -54px}
        .go .bottom:hover{background-position:-38px -88px}
    </style>

</head>

<body>

<a name="gotop">&nbsp;</a>
<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
        <div class="navbar-header pull-left">
            <a href="account.php" class="navbar-brand">
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




                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src="../view/assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎,</small>
                                    <?php
                                    echo $_SESSION["username"];
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
                    <li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
                    <li class="active">笼位操作和管理</li>
                </ul>
                <!-- .breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <small> <i class="icon-double-angle-right"></i> 动物基本信息
                    </small>
                </div>
                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <div class="row">
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


                        <div class="page-content">
                            <div class="page-header">
                                <small> <i class="icon-double-angle-right"></i> 待完成指令
                                </small>
                            </div>
                            <!-- /.page-header -->

                            <div class="table-responsive">
                                <table id="sample-table-3"
                                       class="table table-striped table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th class="center"><label> <input
                                                    type="checkbox" class="ace" /> <span class="lbl"></span>
                                            </label></th class="center">
                                        <th class="center">笼盒编号</th>
                                        <th class="center">耳标</th>
                                        <th class="hidden-480 center">指令内容</th>

                                        <th class="center"><i
                                                class="icon-time bigger-110 hidden-480"></i> 时间</th>
                                        <th class="hidden-480 center">操作</th>
                                    </tr>
                                    </thead>
                                </table>
                            </div>

                            <script type="text/javascript">

                                var idxx =null;
                                function checkm(obj) {

                                    var request = new XMLHttpRequest();
                                    request
                                        .open("POST",
                                            "../controller/workercagemhand.php");
                                    var data = "&longid=" + obj.id;

                                    request
                                        .setRequestHeader(
                                            "Content-type",
                                            "application/x-www-form-urlencoded");
                                    request.send(data);
                                    request.onreadystatechange = function() {
                                        if (request.readyState === 4) {
                                            if (request.status === 200) {

                                                var htmlStr = '';
                                                var rs = request.responseText;

                                                var rsx = rs
                                                    .split("thisistheline");

                                                var rss = rsx[0]
                                                    .split("++");

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
                                                        + '">查看操作记录</button></a>&nbsp'
                                                        +'<a href="#modal-table" role="button" class="green" data-toggle="modal"><button type="button" class="btn btn-info btn btn-default btn-sm" onClick="checkins(this)" name="'
                                                        + rss[i + 6]
                                                        + '">死亡</button></a>'
                                                        + '</td>'
                                                        + '</tr>';

                                                    i = i + 7;

                                                }
                                                htmlStr = htmlStr
                                                    + ' <tr >'
                                                    + '<td class="center" colspan="4"><a href="../view/addmouse.php?cageid='
                                                    + obj.id
                                                    + '" role="button" class="green" data-toggle="modal"><button type="button" class="btn btn-info btn btn-default btn-sm">添加小鼠</button></a></td>'
                                                    + '<td class="center" colspan="4"><a href="../controller/clearcage.php?cageid='
                                                    + obj.id
                                                    + '" role="button" class="green" data-toggle="modal"><button type="button" class="btn btn-info btn btn-default btn-sm">清空笼盒</button></a></td>'
                                                    + '</tr>';
                                                htmlStr += '</tbody>';

                                                $("#printmouse").remove();
                                                $("#sample-table-1")
                                                    .append(htmlStr);

                                                var htmlStr1 = '';
                                                var rst = rsx[1]
                                                    .split("++");
                                                var temp1 = (rst.length - 2) / 4;
                                                i = 1;
                                                htmlStr1 += '<tbody id="printins">';
                                                while (temp1--) {
                                                    htmlStr1 += '<tr>'
                                                        + '<td class="center"><label> <inputtype="checkbox" class="ace" /> <span class="lbl"></span></label></td>'

                                                        + '<td class="center">'
                                                        + obj.id
                                                        + '</td>'
                                                        + '<td class="center">'
                                                        + rst[i + 1]
                                                        + '</td>'
                                                        + '<td class="hidden-480 center">'
                                                        + rst[i + 2]
                                                        + '</td>'
                                                        + '<td class="hidden-480 center">'
                                                        + rst[i + 3]
                                                        + '</td>'

                                                        + '<td class="center">'
                                                        + '<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">'
                                                        + '<button type="button" class="btn btn-info btn btn-default btn-sm" onclick="insok(this)" name='
                                                        + rst[i]
                                                        + '>完成</button>'

                                                        + '</div>';
                                                    i = i + 4;

                                                }

                                                htmlStr1 += '</tbody>';

                                                $("#printins").remove();
                                                $("#sample-table-3")
                                                    .append(htmlStr1);

                                            } else {
                                                alert("发生错误："
                                                    + request.status);
                                            }
                                        }
                                    }

                                    if(idxx != obj.id)
                                    {
                                        if(idxx!=null)document.getElementById(idxx).src="assets/images/gallery/changebefore.jpg";
                                        document.getElementById(obj.id).src="assets/images/gallery/changeafter.jpg";
                                        idxx=obj.id;
                                    }
                                    else{
                                        document.getElementById(obj.id).src="assets/images/gallery/changeafter.jpg";
                                    }

                                }
                            </script>

                            <script type="text/javascript">
                                function insok(obj) {

                                    obj.disabled = true;

                                    var request = new XMLHttpRequest();
                                    request.open("POST",
                                        "../controller/insok.php");
                                    var data = "&insid=" + obj.name;

                                    request
                                        .setRequestHeader(
                                            "Content-type",
                                            "application/x-www-form-urlencoded");
                                    request.send(data);

                                }
                            </script>
                            <?php
                            $longjiaid=$_REQUEST['longjiaid'];
                            ?>



                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="widget-main">
                                                <div>
                                                    <label for="form-field-select-1">房间</label> <select
                                                        class="form-control" id="form1" text="1111">
                                                        <?php
                                                        if($longjiaid!=""){
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
                                                        if($longjiaid!=""){
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
                                        </div>


                                        <div class="col-xs-1">
                                                <div style="margin-top: 45px"">
                                                <button type="button" onClick="search()">搜索</button>
                                                </div>
                                        </div>

                                        <div class="col-xs-2">
                                            <div style="margin-top: 35px; color: brown; font-size: 14px">
                                            笼盒数量:12<br/>小鼠数量:12
                                            </div>
                                        </div>




                                    </div>
                                </div>
                            </div>

                                <a name="gobottom">&nbsp;</a>

                                <div class="go">
                                    <a title="向上" class="top" href="#gotop"></a>
                                    <a title="向下" class="bottom" href="#gobottom"></a>
                                </div>





                                <?php
                                $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                $sql2="select * from cage  where  cageid like '".$longjiaid."%' order by cageid asc";
                                $stmt2=$pdo2->prepare($sql2);
                                $stmt2->execute();
                                $row2=$stmt2->fetch();
                                $k=0;
                                if($row2)
                                    $k=$row2['number'];

                                else
                                    $k=80;

                                ?>
                                <div class="row">
                                    <div class="hr hr-18 dotted"></div>
                                    <?php
                                    for($i=1;$i<=72;$i++){
                                    $d=chr(((($i-1) / 9) + 65));
                                    $bh="".$d.(($i-1) % 9 + 1);
                                    if($i==$k) {
                                    ?>
                                        <div class="col-xs-1  col-md-1 ">
                                            <img src="assets/images/gallery/changebefore.jpg" alt="小鼠"
                                                 width="120%" class="img-rounded" onClick="checkm(this)"
                                                 name="<?php echo $row2['cageid']; ?>" id="<?php echo $row2['cageid']; ?>" >
                                            <span style="font-size:40px;text-align:center;position: absolute; top: 0; left: 0; right:0; bottom:0;color:red" id="<?php echo $row2['cageid']; ?>" onClick="checkm(this)"><?php echo $bh; ?></span>

                                        </div>


                                        <?php
                                        if ($row2)
                                            $k = $row2['number'];

                                         else
                                            $k = 80;

                                    }
                                    else{

                                    ?>
                                        <div class="col-xs-1  col-md-1">
                                            <img src="assets/images/gallery/mouse.jpg" alt="..."
                                                 onClick="deform(this)" name="<?php  echo $i; ?>" width="120%"
                                                 class="img-rounded">
                                            <span style="font-size:40px;text-align:center;position: absolute; top: 0; left: 0; right:0; bottom:0;color:red"><?php echo $bh; ?></span>

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
                                                <table
                                                    class="table table-striped table-bordered table-hover no-margin-bottom no-border-top"
                                                    id="inscheck">
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
                                                    <i class="icon-remove"></i> 关闭
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
                        request.open("POST",
                            "../controller/inscheck.php");
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
                                    window.location = "wokercagemanage.php?longjiaid="
                                        + val + vall;

                                }
                            </script>

                            <div class="ace-settings-container" id="ace-settings-container">
                                <div class="btn btn-app btn-xs btn-warning ace-settings-btn"
                                     id="ace-settings-btn">
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
                                        <input type="checkbox" class="ace ace-checkbox-2"
                                               id="ace-settings-navbar" /> <label class="lbl"
                                                                                  for="ace-settings-navbar"> Fixed Navbar</label>
                                    </div>

                                    <div>
                                        <input type="checkbox" class="ace ace-checkbox-2"
                                               id="ace-settings-sidebar" /> <label class="lbl"
                                                                                   for="ace-settings-sidebar"> Fixed Sidebar</label>
                                    </div>

                                    <div>
                                        <input type="checkbox" class="ace ace-checkbox-2"
                                               id="ace-settings-breadcrumbs" /> <label class="lbl"
                                                                                       for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
                                    </div>

                                    <div>
                                        <input type="checkbox" class="ace ace-checkbox-2"
                                               id="ace-settings-rtl" /> <label class="lbl"
                                                                               for="ace-settings-rtl"> Right To Left (rtl)</label>
                                    </div>

                                    <div>
                                        <input type="checkbox" class="ace ace-checkbox-2"
                                               id="ace-settings-add-container" /> <label class="lbl"
                                                                                         for="ace-settings-add-container"> Inside <b>.container</b>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- /#ace-settings-container -->
                        </div>
                        <!-- /.main-container-inner -->

                        <a href="#" id="btn-scroll-up"
                           class="btn-scroll-up btn btn-sm btn-inverse"> <i
                                class="icon-double-angle-up icon-only bigger-110"></i>
                        </a>
                    </div>
                    <!-- /.main-container -->

                    <!-- basic scripts -->

                    <!--[if !IE]> -->


                    <script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

                    <!-- <![endif]-->

                    <!--[if IE]>
                    <script src="http://cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>
                    <![endif]-->

                    <!--[if !IE]> -->

                    <script type="text/javascript">
                        window.jQuery
                        || document
                            .write("<script src='assets/js/jquery-2.0.3.min.js'>"
                                + "<"+"/script>");
                    </script>

                    <!-- <![endif]-->

                    <!--[if IE]>
                    <script type="text/javascript">
                        window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");
                    </script>
                    <![endif]-->

                    <script type="text/javascript">
                        if ("ontouchend" in document)
                            document
                                .write("<script src='assets/js/jquery.mobile.custom.min.js'>"
                                    + "<"+"/script>");
                    </script>
                    <script src="assets/js/bootstrap.min.js"></script>
                    <script src="assets/js/typeahead-bs2.min.js"></script>

                    <!-- page specific plugin scripts -->

                    <script src="assets/js/jquery.dataTables.min.js"></script>
                    <script src="assets/js/jquery.dataTables.bootstrap.js"></script>

                    <!-- ace scripts -->

                    <script src="assets/js/ace-elements.min.js"></script>
                    <script src="assets/js/ace.min.js"></script>

                    <!-- inline scripts related to this page -->

                    <script type="text/javascript">
                        jQuery(function($) {
                            var oTable1 = $('#sample-table-2').dataTable( {
                                "aoColumns": [
                                    { "bSortable": false },
                                    null, null,null, null, null,
                                    { "bSortable": false }
                                ] } );


                            $('table th input:checkbox').on('click' , function(){
                                var that = this;
                                $(this).closest('table').find('tr > td:first-child input:checkbox')
                                    .each(function(){
                                        this.checked = that.checked;
                                        $(this).closest('tr').toggleClass('selected');
                                    });

                            });


                            $('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
                            function tooltip_placement(context, source) {
                                var $source = $(source);
                                var $parent = $source.closest('table')
                                var off1 = $parent.offset();
                                var w1 = $parent.width();

                                var off2 = $source.offset();
                                var w2 = $source.width();

                                if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
                                return 'left';
                            }
                        })
                    </script>
                    <div style="display:none"><script src="../view/assets/js/stat.js"></script></div>
</html>
