using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 排课系统.admin
{
    public partial class stuadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    WebMessageBox.Show("请登录", "../NewLogin.aspx");
                }
                Label1.Text = Session["username"].ToString();

            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            //添加
            if (TextBox1.Text == "")
            {
                WebMessageBox.Show("请输入学生学号"); return;
            }
            if (Operation.getDatatable("select * from t_student where stuid='" + TextBox1.Text + "'").Rows.Count > 0)
            {
                WebMessageBox.Show("此学生学号已经存在"); return;
            }
            if (TextBox2.Text == "")
            {
                WebMessageBox.Show("请输入学生姓名"); return;
            }

            string sql = "insert into t_student(stuid,stuname,major,grade,stupwd) values('" +
                TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox1.Text
                + "')";
            Operation.runSql(sql);
            WebMessageBox.Show("添加完成", "stuman.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("stuman.aspx");
        }
    }
}