using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 排课系统.teacher
{
    public partial class Tfeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["teachid"] == null)
                {
                    WebMessageBox.Show("请登录", "../NewLogin.aspx");
                }
                Label1.Text = Session["teachname"].ToString();
            }

        }
        protected void AntiHtml()
        {
            this.TextBox1.Text = this.TextBox1.Text.Replace("<", "");
            this.TextBox1.Text = this.TextBox1.Text.Replace(">", "");
            this.TextBox2.Text = this.TextBox2.Text.Replace("<", "");
            this.TextBox2.Text = this.TextBox2.Text.Replace(">", "");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            AntiHtml();
            //添加
            if (TextBox1.Text == "")
            {
                WebMessageBox.Show("请输入反馈标题");
                return;
            }
            //DataTable dt2 = Operation.getDatatable("select DISTINCT type from t_feedback");
            //DropDownList1.DataSource = dt2;//设置数据源
            //DropDownList1.DataTextField = "type";//设置所要读取的数据表里的列名
            //DropDownList1.DataBind();//数据绑定
            if (TextBox2.Text == "")
            {
                WebMessageBox.Show("请输入内容描述");
                return;
            }
            Operation.runSql("insert [t_feedback]([table],[type],[content],[TorS]) values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text.ToString() + "','" + TextBox2.Text + "','教师')");
            WebMessageBox.Show("提交成功", "Tfeedback.aspx");
        }
    }
}