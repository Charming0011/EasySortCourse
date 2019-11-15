using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 排课系统.teacher
{
    public partial class modifypwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["teachid"] == null)
                {
                    WebMessageBox.Show("请登录", "../NewLogin.aspx");
                }
                Label1.Text = "欢迎您," + Session["teachname"].ToString();
                
            }
        }

        public void Button1_Click(object sender, EventArgs e)
        {
            //添加
            if (TextBox1.Text == "")
            {
                WebMessageBox.Show("请输入新密码"); return;
            }
            if (TextBox2.Text == "")
            {
                WebMessageBox.Show("请确认新密码"); return;
            }
            if (TextBox1.Text != TextBox2.Text)
            {
                WebMessageBox.Show("两次输入密码不一致"); return;
            }
            ChangeSql(TextBox1.Text);
            WebMessageBox.Show("修改完成");
        }
        public void ChangeSql(String Pw1)
        {
            Operation.runSql("update t_teacher set pwd='" + Pw1 + "' where teachid='" + Session["teachid"].ToString() + "'");
        }
    }
}