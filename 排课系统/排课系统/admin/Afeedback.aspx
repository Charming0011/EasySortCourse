<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Afeedback.aspx.cs" Inherits="排课系统.admin.Afeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../Scripts/modernizr.min.js"></script>
</head>
<body>
   <form id="form1" runat="server">
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
                <li>欢迎你， </li>
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

    
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="iconfont">&#xe602;&nbsp;</i><a href="index.aspx">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">查看反馈</span></div>
        </div>
        
        <div class="result-wrap">
                
                <div class="result-content">
                     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                          GridLines="None"  AllowPaging="True"  CssClass="result-tab" 
                         DataKeyNames="id" Width="100%" 
                         onpageindexchanging="GridView1_PageIndexChanging"
                         onrowdeleting="GridView1_RowDeleting">
                        
                         <Columns> 
                            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" />
                            <asp:BoundField DataField="table" HeaderText="标题" />
                            <asp:BoundField DataField="type" HeaderText="反馈类型" />
                            <asp:BoundField DataField="content" HeaderText="内容" />
                             <asp:BoundField DataField="TorS" HeaderText="用户类型" />
                             <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                         <%--<asp:CommandField HeaderText="查看详细内容" />   --%>
                             <%--<asp:button  runat="server" id="submit" class="btn btn-danger btn-block" onclick="submit_login" Text="Login"/> --%>    
                        </Columns>
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="Black" />

                   </asp:GridView>
                </div>

        </div>
    </div>
    </div>

</form>
</body>
</html>
