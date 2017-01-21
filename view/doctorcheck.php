<?php
require_once '../model/PdoMySQL.class.php';
require_once '../model/config.php';
require_once '../model/pwd.php';
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
    <meta name="keywords" content="响应式布局、动物管理系统、跨平台、iphone/ipad/mac..." />
    <meta name="author" content="Binpeng Liu Hangzhou Normal University Software enginerring 121" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- basic styles -->
    <link href="../view/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../view/assets/css/font-awesome.min.css" />

    <!--[if IE 7]>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css" />
    <![endif]-->

    <!-- page specific plugin styles -->

    <!-- fonts -->

    <link rel="stylesheet" href="../view/assets/css/fontFamily.css" />

    <!-- ace styles -->

    <link rel="stylesheet" href="../view/assets/css/ace.min.css" />
    <link rel="stylesheet" href="../view/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="../view/assets/css/ace-skins.min.css" />

    <!--[if lte IE 8]>

    <link rel="stylesheet" href="assets/css/ace-ie.min.css" />

    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->

    <script src="../view/assets/js/ace-extra.min.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->

    <!--[if lt IE 9]>

    <script src="assets/js/html5shiv.js"></script>

    <script src="assets/js/respond.min.js"></script>


    <![endif]-->
    <script >
        function deform(obj) {
            if (confirm("确认分配该笼位？")) {
                var data="?longid="+document.getElementById("longjiaid").value+"&num="+obj.id+"&cageid="+document.getElementById("cageid").value+"&re=1";
               alert(data);
                window.location="../controller/applyreturn.php"+data;
            }
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
                                    $pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                    $sql1="select COUNT(*) from cageapply  where  ispost = 1 and status = 0 order by time  asc";
                                    $stmt1=$pdo->prepare($sql1);
                                    $stmt1->execute();
                                    $row1=$stmt1->fetch();
                                    echo $row1[0];
                                    ?>
                                </span>
                    </a>
                    <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-warning-sign"></i>
                            <?php
                            echo $row1[0];
                            ?> 条新笼位申请
                        </li>
                        <li>
                            <a href="applycheck.php">
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
                    <li class="active"><a href="applycheck.php"> <i
                                class="icon-text-width"></i> <span class="menu-text"> 笼位审核</span>
                        </a></li>
                    <li><a href="MDcheck.php" class="dropdown-toggle"> <i
                                class="icon-desktop"></i> <span class="menu-text"> 指令校验 </span> <b
                                class="arrow icon-angle-down"></b>
                        </a></li>
                    <li>
                        <a href="profile.php" class="dropdown-toggle">
                            <i class="icon-user"></i>
                            <span class="menu-text">个人资料 </span>

                            <b class="arrow icon-angle-down"></b>
                        </a>
                    </li>
            </ul><!-- /.nav-list -->

            <?php
                $longjiaid=$_REQUEST['longjiaid'];
                $cageid=$_REQUEST['cageid'];
            ?>

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
                        <a href="main.php">主页</a>
                    </li>

                    <li class="active">
                        <a href="doctorcheck.php">新笼位审核</a>
                    </li>
                </ul><!-- .breadcrumb -->
            </div>

            <div class="page-content">
                <div class="page-header">
                    <small>
                        <input type="text"  id="cageid" name=""
                               value="<?php echo $cageid; ?>" hidden="hidden" />
                        <input type="text"  id="longjiaid" name=""
                               value="<?php echo $longjiaid; ?>" hidden="hidden" />
                    </small>
                </div>
                <!-- /.page-header -->

                <div class="row">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-3">
                                <div class="widget-main">
                                    <div>
                                        <label for="form-field-select-1">房间</label> <select
                                            class="form-control" id="form1">
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
                        <!-- /row -->

                        <div class="col-xs-3">
                            <div class="widget-main">
                                <div style="margin-top: 30px">
                                <button type="button" onClick="autofp()">自动分配</button>
                            </div>
                        </div>
                        <!-- /span -->

                    </div>
                    <!-- /row -->


                            <script>
                                function search() {



                                    var val;
                                    var temp1 = document.getElementById("form1");
                                    val=temp1.options[temp1.selectedIndex].text;


                                    var vall;
                                    var temp2 = document.getElementById("form2");
                                    vall=temp2.options[temp2.selectedIndex].text;
                                    window.location="doctorcheck.php?longjiaid="+val+vall+"&cageid="+document.getElementById("cageid").value;


                                }
                            </script>

                            <script>
                                function autofp() {
                                    window.location="../controller/autofp.php?cageid="+document.getElementById("cageid").value;
                                }
                            </script>

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
                                <div class="col-xs-1  col-md-1 "><a href="#modal-table" role="button" class="green" data-toggle="modal"><img src="assets/images/gallery/changebefore.jpg" alt="小鼠" width="120%" class="img-rounded"  onClick="check(this)" id="<?php echo $row1['cageid'];  ?>" >
                                        <span style="font-size:40px;text-align:center;position: absolute; top: 0; left: 0; right:0; bottom:0;color:red" id="<?php echo $row2['cageid'];  ?>" onClick="check(this)"><?php  echo $bh; ?></span>
                                    </a>

                                </div>
                                <?php
                                if ($row2)
                                    $k = $row2['number'];

                                 else
                                    $k = 80;

                            }
                    else{

                        ?>
                        <div class="col-xs-1  col-md-1"><img src="assets/images/gallery/mouse.jpg" alt="..." onClick="deform(this)" name="<?php  echo $i; ?>"width="120%" class="img-rounded">
                            <span style="font-size:40px;text-align:center;position: absolute; top: 0; left: 0; right:0; bottom:0;color:red" id="<?php  echo $i; ?>" onClick="deform(this)"><?php  echo $bh; ?></span>

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

                <div class="row">
                    <div class="col-xs-12">
                        <div class="widget-box">
                            <div class="widget-header widget-header-flat">
                                <h4 class="smaller">笼架信息</h4>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
											<pre class="prettyprint linenums">笼位编号：<?php echo $_REQUEST['longjiaid']; ?>
所在房间：
空笼位数：
课题组分布：
</pre>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content -->
        </div>
        <!-- /.main-content -->
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

                    <div class="modal-body no-padding">
                        <table
                            class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                            <thead>
                            <tr>
                                <th>笼位编号</th>
                                <th>申请人</th>
                                <th>数量</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td id="rsid"></td>
                                <td id="rsname"></td>
                                <td id="rsnum"></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <script type="text/javascript">
                        function check(obj) {
                            var request = new XMLHttpRequest();
                            request.open("POST",
                                "../controller/cagehand.php");
                            var data = "&cageid="+obj.id;
                            request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                            request.send(data);
                            request.onreadystatechange = function() {
                                if (request.readyState === 4) {
                                    if (request.status === 200) {

                                        var rs = request.responseText;
                                        var rss= rs.split("++");

                                        document.getElementById("rsid").innerHTML = rss[0];
                                        document.getElementById("rsname").innerHTML = rss[1];
                                        document.getElementById("rsnum").innerHTML = rss[2];

                                    } else {
                                        alert("发生错误：" + request.status);
                                    }
                                }
                            }


                        }
                    </script>

                    <div class="modal-footer no-margin-top">
                        <button class="btn btn-sm btn-danger pull-left"
                                data-dismiss="modal">
                            <i class="icon-remove"></i> 关闭
                        </button>


                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            </div>
            <!-- /.modal-dialog -->

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

<script src="http://cdn.bootcss.com/jquery/2.0.3/jquery.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>

<script src="http://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>

<![endif]-->

<!--[if !IE]> -->

<script type="text/javascript">
    window.jQuery || document.write("<script src='../view/assets/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>

<script type="text/javascript">

    window.jQuery || document.write("<script src='assets/js/jquery-1.10.2.min.js'>"+"<"+"/script>");

</script>

<![endif]-->

<script type="text/javascript">
    if("ontouchend" in document) document.write("<script src='../view/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="../view/assets/js/bootstrap.min.js"></script>
<script src="../view/assets/js/typeahead-bs2.min.js"></script>

<!-- page specific plugin scripts -->

<script src="../view/assets/js/jquery.dataTables.min.js"></script>
<script src="../view/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->

<script src="../view/assets/js/ace-elements.min.js"></script>
<script src="../view/assets/js/ace.min.js"></script>

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
</body>

</html>