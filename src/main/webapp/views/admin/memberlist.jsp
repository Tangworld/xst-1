<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>校视通</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!--<link href='http://fonts.useso.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'>-->
    <link rel="stylesheet" href="css/app.min.css"/>
    <link rel="stylesheet" href="css/admin_manage.css"/>

    <script type="text/javascript"src="//cdn.bootcss.com/jquery/2.2.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>


<!--------------------
        header
--------------------->
<div class="main">
    <div class="admin">
        <div class="navbar" role="navigation">
            <div class="navbar-header">
                <a class="" href="index.html">
            <span class="navbar-brand">
                <span class="fa fa-book"></span> 校视通
            </span>
                </a>
            </div>

            <div class="navbar-user" style="height: 1px;">
                <ul id="main-menu" class="nav navbar-nav navbar-right">
                    <li class="dropdown hidden-xs">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="fa fa-user padding-right-small" style="position:relative;top: 3px;"></span> xuzhao***.com
                            <i class="fa fa-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a href="./">个人中心</a></li>
                            <li class="divider"></li>
                            <li><a href="./">账号设置</a></li>
                            <li><a href="./">意见反馈</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1" href="sign-in.html">登出</a></li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>

        <!--------------------
               nav
        --------------------->
        <div class="sidebar-nav">
            <ul>
                <li>
                    <a href="#" data-target="userManage" class="nav-header">
                        <i class="fa fa-user"></i> 用户管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="userManage nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="memberlist.jsp"><span class="fa fa-caret-right"></span> 用户列表</a></li>
                        <li><a href="membercheck.jsp"><span class="fa fa-caret-right"></span> 注册审核</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#" data-target="resourceManage" class="nav-header">
                        <i class="fa fa-folder"></i> 资源管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="resourceManage nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="web-latest.html"><span class="fa fa-caret-right"></span> 资源1</a></li>
                        <li><a href="web-parameter.html"><span class="fa fa-caret-right"></span> 资源2</a></li>
                        <li><a href="web-bug.html"><span class="fa fa-caret-right"></span> 资源3</a></li>
                        <li><a href="web-courselist.html"><span class="fa fa-caret-right"></span> 课程列表</a></li>
                        <li><a href="web-courseadd.html"><span class="fa fa-caret-right"></span> 课程添加</a></li>
                    </ul>
                </li>

                <li>
                    <a href="#" data-target="dashboard-menu3" class="nav-header">
                        <i class="fa fa-fw fa-group"></i>&nbsp;&nbsp;小组管理<i class="fa fa-collapse"></i>
                    </a>
                </li>
                <li>
                    <ul class="dashboard-menu3 nav nav-list" style="display: none;border-bottom: 1px solid #ccc;">
                        <li><a href="users-change.html"><span class="fa fa-caret-right"></span>小组1</a></li>
                    </ul>
                </li>

                <li><a href="#" data-target="dashboard-menu4" class="nav-header"><i
                        class="fa fa-fw fa-volume-up"></i>&nbsp;&nbsp;资讯管理</a></li>
                <li>


            </ul>
        </div>


        <!--于此分左右层次-->
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div>
                        <table class="table" width="100%">
                            <thead>
                            <tr>
                                <th width="16%">
                                    用户名
                                </th>
                                <th width="22%">
                                    邮箱
                                </th>
                                <th width="18%">
                                    注册日期
                                </th>
                                <th width="26%">
                                    单位
                                </th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    xxxx
                                </td>
                                <td>
                                    xxxxxxxx@xx.com
                                </td>
                                <td>
                                    xxxx-xx-xx
                                </td>
                                <td>
                                    xxxxxxxxxxxxxxxx
                                </td>
                            </tr>

                            </tbody>
                        </table>

                        <nav>
                            <ul class="pagination">
                                <li><a href="#">上一页</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li>
                                    <a href="#">下一页</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

      </div>
   </div>



        <script>
            $(document).ready(function () {
                $(".sidebar-nav a").click(function(){
                    var tree="."+$(this).attr("data-target");
                    $(tree).slideToggle(300);
                    if($(this).hasClass("collapsed")){
                        $(this).removeClass("collapsed");
                    }else{
                        $(this).addClass("collapsed");
                    }
                })
            });
        </script>

        <link rel="stylesheet" href="//cdn.bootcss.com/iCheck/1.0.2/skins/square/blue.css"/>

        <script src="//cdn.bootcss.com/iCheck/1.0.2/icheck.min.js"></script>
        <!--icheck-->
        <script>
            $(document).ready(function(){
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>


</body>
</html>
