<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewLogin.aspx.cs" Inherits="排课系统.NewLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="css/style1.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>
</head>
<body>
    <div class="signupform">
	<div class="container">
		<!-- main content -->
		<div class="agile_info">
			<div class="w3l_form">
				<div class="left_grid_info">
					<h1>易奇排排课系统</h1>
					<p>排你所想，排你所愿。</p>
					<img src="images/image.jpg" alt="" />
				</div>
			</div>
			<div class="w3_info">
				<h2>登录到你的账户</h2>
				<%--<p>Enter your details to login.</p>--%>
				<form runat="server">
                    <%--<div>
                        <asp:DropDownList runat="server" ID="DropDownList1">
                        <asp:ListItem Text="管理员" value="admin" Selected="true" />
                        <asp:ListItem Text="教师" value="teacher"  />
                        <asp:ListItem Text="学生" Value="stu" /> 
                         </asp:DropDownList>
                    </div>--%>
                    <div class="login_password">
                        <span>账号类型：</span>
                        <asp:RadioButton id="RadioButton1" runat="server" 
                            Text="教师" GroupName="type" Checked="True"/>
                            &nbsp;&nbsp;
                            <asp:RadioButton id="RadioButton2" runat="server" Text="管理员" 
                                GroupName="type" />
                        <asp:RadioButton id="RadioButton3" runat="server" 
                            Text="学生" GroupName="type"/>
                    </div>
					<label>用户名</label>
					<div class="login_password">
						<span class="fa fa-user" aria-hidden="true"></span>
						<asp:textbox id="username" runat="server"  Type="text" class="userlogin"></asp:textbox> 
					</div>
					<label>密码</label>
					<div class="login_password">
						<span class="fa fa-lock" aria-hidden="true"></span>
						<asp:textbox  id="password" runat="server"  TextMode="Password" class="userpwd"></asp:textbox>
					</div> 
					<div class="login-button">						
						<asp:button  runat="server" id="submit" class="btn btn-danger btn-block" onclick="submit_login" Text="Login"/>&nbsp;&nbsp;
                        </div>
				</form>
				</div>
			</div>
		</div>
		<!-- //main content -->
	</div>
	<!-- footer -->
	<div class="footer">
		<p></p>
	</div>
	<!-- footer -->
</body>
</html>
