<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="排课系统.admin.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.aspx" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.aspx">首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li> <i class="iconfont">&#xe62a;&nbsp;</i></li>
                <li>欢迎您， </li>
                <li> 
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </li>
                <li><a href="../NewLogin.aspx" >退出</a></li>
            </ul>
        </div>
    </div>
</div>
    
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">

            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                <a href="#"><i class=" iconfont">&#xe612;&nbsp;</i>基本操作</a>
                    <ul class="sub-menu">
                        <li><a href="majormana.aspx"><i class="iconfont">&#xe83a;&nbsp;</i>专业管理</a></li>
                        <li><a href="teacherman.aspx"><i class="iconfont">&#xe600;&nbsp;</i>教师管理</a></li>
                        <li><a href="stuman.aspx"><i class="iconfont">&#xe651;&nbsp;</i>学生管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="iconfont">&#xe638;&nbsp;</i>排课操作</a>
                    <ul class="sub-menu">
                        <li><a href="courseplan.aspx"><i class="iconfont">&#xe607;&nbsp;</i>教学计划</a></li>
                        <li><a href="coursetask.aspx"><i class="iconfont">&#xe62b;&nbsp;</i>教学任务</a></li>
                        <li><a href="paikecodition.aspx"><i class="iconfont">&#xe735;&nbsp;</i>排课条件</a></li>
                        <li><a href="paikemana.aspx"><i class="iconfont">&#xe633;&nbsp;</i>排课管理</a></li>
                        <li><a href="coursetablemana.aspx"><i class="iconfont">&#xe655;&nbsp;</i>课表管理</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="iconfont">&#xe68d;&nbsp;</i>系统管理</a>
                    <ul class="sub-menu">
                        <li><a href="modifypwd.aspx"><i class="iconfont">&#xe6c0;&nbsp;</i>个人密码</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="iconfont">&#xe771;&nbsp;</i>反馈管理</a>
                    <ul class="sub-menu">
                        <li><a href="Afeedback.aspx"><i class="iconfont">&#xe727;&nbsp;</i>查看反馈</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
 
    <!--/main-->
</div>
</body>
</html>
