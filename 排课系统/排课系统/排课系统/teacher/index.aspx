<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="排课系统.teacher.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>教师管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
    <style type="text/css">li:hover #zhanshi{display: block;}#zhanshi{display: none;}</style>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.aspx" class="navbar-brand">教师管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="index.aspx">首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                 <li> <i class="iconfont">&#xe62a;&nbsp;</i></li>
                <li> 
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label> </li>
                 <li><a href="../NewLogin.aspx"><font color="#FF000" >退出</font></a></li>
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
                    <a href="#"><i class="iconfont">&#xe612;&nbsp;</i>排课操作</a>
                    <ul class="sub-menu"><ul id="zhanshi">
                        <li><a href="paikecodition.aspx"><i class="iconfont">&#xe6b5;&nbsp;</i>提交要求</a></li>
                        <li><a href="coursetablemana.aspx"><i class="iconfont">&#xe60a;&nbsp;</i>查看课表</a></li>
                    </ul></ul>
                </li>
                <li>
                    <a href="#"><i class="iconfont">&#xe68d;&nbsp;</i>系统管理</a>
                    <ul class="sub-menu"><ul id="zhanshi">
                        <li><a href="info.aspx"><i class="iconfont">&#xe608;&nbsp;</i>个人信息</a></li>
                        <li><a href="modifypwd.aspx"><i class="iconfont">&#xe6c0;&nbsp;</i>个人密码</a></li>
                    </ul></ul>
                </li>
                <li>
                    <a href="#"><i class="iconfont">&#xe601;&nbsp;</i>反馈系统</a>
                    <ul class="sub-menu"><ul id="zhanshi">
                        <li><a href="Tfeedback.aspx"><i class="iconfont">&#xe767;</i>提交反馈</a></li>
                        </ul></ul>
                </li>
            </ul>
        </div>
    </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            
        </div>
        <div class="result-wrap">
            <div class="result-title">
                <h1>实现功能</h1>
            </div>
            <div class="result-content">
                <p style="font size=3">课程数据来源互联网<br>
                    现阶段实现功能：<br>
                    向教务处提交排课禁忌（不想什么时候上课）<br>
                    查看课表，查看个人信息，修改密码<br>
                    课表管理界面还未完善，后期继续
                </p>
            </div>

        </div>
    </div>
    <!--/main-->
</div>
</body>
</html>
