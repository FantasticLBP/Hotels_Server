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
    <SCRIPT LANGUAGE=javascript>
        function p_del() {
            var msg = "您真的确定要删除吗？\n\n请确认！";
            if (confirm(msg)==true){
                return true;
            }else{
                return false;
            }
        }
    </SCRIPT>
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
                                    $sql1="select count(*) from  worker where status='0'"; //1
                                    $sql2="select count(*) from  doctor where status='0'"; //1
                                    $sql3="select count(*) from  projector where status='0'";  //23
                                    $stmt1=$pdo->prepare($sql1);
                                    $stmt2=$pdo->prepare($sql2);
                                    $stmt3=$pdo->prepare($sql3);
                                    $stmt1->execute();
                                    $stmt2->execute();
                                    $stmt3->execute();
                                    //echo $username.'<hr/>'.$password;

                                    $row1=$stmt1->fetch();

                                    $row2=$stmt2->fetch();
                                    $row3=$stmt3->fetch();
                                    echo $row1[0]+$row2[0]+$row3[0];


                                    ?>

                                </span>
                    </a>

                    <ul class="pull-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="icon-warning-sign"></i>
                            <?php
                            echo $row1[0]+$row2[0]+$row3[0];
                            ?> 条申请
                        </li>

                        <li>
                            <a href="apply.php">
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
                <li >
                    <a href="apply.php">
                        <i class="icon-signin"></i>
                        <span class="menu-text"> 账户申请审核 </span>
                    </a>
                </li>

                <li class="active">
                    <a href="account.php">
                        <i class="icon-user"></i>
                        <span class="menu-text"> 用户管理 </span>
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
                        <a href="account.php">主页</a>
                    </li>

                    <li class="active">
                        <a href="account.php">用户管理</a>
                    </li>
                </ul><!-- .breadcrumb -->
            </div>

            <div class="page-content">


                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->



                        <div class="row">
                            <div class="col-xs-12">
                                <h3 class="header smaller lighter blue">账号申请表</h3>
                                <div class="table-header">
                                    账号申请表
                                </div>

                                <div class="table-responsive">
                                    <table id="sample-table-2" class="table table-striped table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th class="center">
                                                <label>
                                                    <input type="checkbox" class="ace" />
                                                    <span class="lbl"></span>
                                                </label>
                                            </th>
                                            <th class="center">用户名</th>
                                            <th class="hidden-480 center">密码</th>
                                            <th class="center">
                                                <i class="icon-time bigger-110 hidden-480"></i>
                                                用户类别
                                            </th>
                                            <th class="hidden-480 center">手机号码</th>
                                            <th class="center hidden-480">课题负责人姓名</th>
                                            <th class="  center">操作</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <?php
                                        $pdo=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                        $pdo->query("set names utf8");
                                        $sql="select * from projector";
                                        $stmt=$pdo->prepare($sql);
                                        $stmt->execute();
                                        $allrows = $stmt->fetchAll(PDO::FETCH_ASSOC);

                                        foreach($allrows as $row){
                                            $temp=$row['usertype'];
                                            $pwd=base64_decode($row['password']);
                                            if($temp==1){
                                                $usertype="课题组及实验委托方";
                                            }else if($temp==2){
                                                $usertype="兽医";

                                            }else if($temp==3){
                                                $usertype="工作人员";
                                            }else{
                                                $usertype="管理者";
                                            }
                                            echo '<tr>';
                                            echo  '<td class="center">';
                                            echo '<label>';
                                            echo '<input type="checkbox" class="ace" />';
                                            echo '<span class="lbl"></span>';
                                            echo '</label>';
                                            echo '</td>';

                                            echo '<td class="center">'.$row['username'].'</td>';
                                            echo '<td class="hidden-480 center">'.$pwd.'</td>';
                                            echo '<td class=" center">'.$usertype.'</td>';
                                            echo '<td class="hidden-480 center">'.$row['mobilephone'].'</td>';
                                            echo '<td class=" hidden-480 center">'.$row['projectername'].'</td>';
                                            echo '<td class="center">';
                                            echo '<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">';


                                            echo '<a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username='.$row['username'].'&tablename=projector" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删 除</i></a>';
                                            echo '<a  class="btn btn-xs btn-info"  role="button" href="edit.php?username='.$row['username'].'&tablename=projector" ><i class="icon-edit bigger-120">编辑</i></a>';

                                            echo '</div>';
                                            echo '<div class="visible-xs visible-sm hidden-md hidden-lg ">';
                                            echo '<div class="inline position-relative center">';
                                            echo '<button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">';
                                            echo '<i class="icon-cog icon-only bigger-110"></i>';
                                            echo '</button>';
                                            echo '<ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">';
                                            echo '<li>';
                                            echo '<a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username='.$row['username'].'&tablename=projector" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删</i></a>';

                                            echo '</li>';
                                            echo '<li>';
                                            echo '<a  class="btn btn-xs btn-info"  role="button" href="edit.php?username='.$row['username'].'&tablename=projector" ><i class="icon-edit bigger-120">编</i></a>';

                                            echo '</li>';
                                            echo '</ul>';
                                            echo '</div>';
                                            echo '</div>';
                                            echo '</td>';
                                            echo '</tr>';
                                        }
                                        ?>


                                        <?php
                                        $pdo2=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                        $pdo2->query("set names utf8");
                                        $sql2="select * from doctor";
                                        $stmt2=$pdo2->prepare($sql2);
                                        $stmt2->execute();
                                        $allrows2= $stmt2->fetchAll(PDO::FETCH_ASSOC);

                                        foreach($allrows2 as $row2):

                                            ?>

                                            <tr><td class="center">
                                                    <label>
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>

                                                <td class="center"><?php echo $row2['username']; ?></td>
                                                <td class="hidden-480 center"><?php  echo base64_decode($row2["password"]); ?></td>
                                                <td class=" center"><?php
                                                    $temp=$row2['usertype'];
                                                    if($temp==1){
                                                        $usertype="课题组及实验委托方";
                                                    }else if($temp==2){
                                                        $usertype="兽医";

                                                    }else if($temp==3){
                                                        $usertype="工作人员";
                                                    }else{
                                                        $usertype="管理者";
                                                    }
                                                    echo $usertype;
                                                    ?></td>
                                                <td class="center hidden-480"><?php echo  $row2['mobilephone']; ?></td>
                                                <td class="center hidden-480"><?php echo $row['projectername']; ?></td>
                                                <td class="center">
                                                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">

                                                        <a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username=<?php echo $row2['username']; ?>&tablename=doctor" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删 除</i></a>
                                                        <a  class="btn btn-xs btn-info"  role="button" href="edit.php?username=<?php echo $row2['username']; ?>&tablename=doctor" ><i class="icon-edit bigger-120">编辑</i></a>

                                                    </div>
                                                    <div class="visible-xs visible-sm hidden-md hidden-lg ">
                                                        <div class="inline position-relative center">
                                                            <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                <i class="icon-cog icon-only bigger-110"></i>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username=<?php echo $row2['username']; ?>&tablename=doctor" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删</i></a>

                                                                </li>
                                                                <li>
                                                                    <a  class="btn btn-xs btn-info"  role="button" href="edit.php?username=<?php echo $row2['username']; ?>&tablename=doctor" ><i class="icon-edit bigger-120">编</i></a>

                                                                </li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php
                                        endforeach;
                                        ?>


                                        <?php
                                        $pdo3=new PDO('mysql:host=localhost;dbname=db_pet','root','root');
                                        $pdo3->query("set names utf8");
                                        $sql3="select * from worker";
                                        $stmt3=$pdo3->prepare($sql3);
                                        $stmt3->execute();
                                        $allrows3= $stmt3->fetchAll(PDO::FETCH_ASSOC);

                                        foreach($allrows3 as $row3):

                                            ?>

                                            <tr><td class="center">
                                                    <label>
                                                        <input type="checkbox" class="ace" />
                                                        <span class="lbl"></span>
                                                    </label>
                                                </td>

                                                <td class="center"><?php echo $row3['username']; ?></td>
                                                <td class="hidden-480 center"><?php  echo base64_decode($row3["password"]); ?></td>
                                                <td class=" center"><?php
                                                    $temp=$row3['usertype'];
                                                    if($temp==1){
                                                        $usertype="课题组及实验委托方";
                                                    }else if($temp==2){
                                                        $usertype="兽医";

                                                    }else if($temp==3){
                                                        $usertype="工作人员";
                                                    }else{
                                                        $usertype="管理者";
                                                    }
                                                    echo $usertype;
                                                    ?></td>
                                                <td class="center hidden-480"><?php echo  $row3['mobilephone']; ?></td>
                                                <td class="center hidden-480"><?php echo $row3['projectername']; ?></td>
                                                <td class="center">
                                                    <div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">

                                                        <a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username=<?php echo $row3['username']; ?>&tablename=worker" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删 除</i></a>
                                                        <a  class="btn btn-xs btn-info"  role="button" href="edit.php?username=<?php echo $row3['username']; ?>&tablename=worker" ><i class="icon-edit bigger-120">编辑</i></a>

                                                    </div>
                                                    <div class="visible-xs visible-sm hidden-md hidden-lg ">
                                                        <div class="inline position-relative center">
                                                            <button class="btn btn-minier btn-primary dropdown-toggle" data-toggle="dropdown">
                                                                <i class="icon-cog icon-only bigger-110"></i>
                                                            </button>
                                                            <ul class="dropdown-menu dropdown-only-icon dropdown-yellow pull-right dropdown-caret dropdown-close">
                                                                <li>
                                                                    <a  class="btn btn-xs btn-info"  role="button" href="../controller/delete.php?username=<?php echo $row3['username']; ?>&tablename=worker" onclick="javascript:return p_del()"><i class="icon-remove bigger-120">删</i></a>

                                                                </li>
                                                                <li>
                                                                    <a  class="btn btn-xs btn-info"  role="button" href="edit.php?username=<?php echo $row3['username']; ?>&tablename=worker" ><i class="icon-edit bigger-120">编</i></a>

                                                                </li>

                                                            </ul>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php
                                        endforeach;
                                        ?>



                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <script>
                            document.getElementById("delete").onclick = function() {
                                var request = new XMLHttpRequest();
                                request.open("GET", "../controller/delete.php?id="+document.getElementById("order").value);
                                request.send();
                                request.onreadystatechange = function() {
                                    if (request.readyState===4) {
                                        if (request.status===200) {
                                            document.getElementById("updateResult").innerHTML = request.responseText;
                                        } else {
                                            alert("发生错误：" + request.status);
                                        }
                                    }
                                }
                            }
                        </script>
                        <div id="modal-table" class="modal fade" tabindex="-1">

                        </div><!-- PAGE CONTENT ENDS -->
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