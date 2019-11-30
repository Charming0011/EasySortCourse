using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace 排课系统.student
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["stuname"] == null)
                {
                    WebMessageBox.Show("请登录", "../NewLogin.aspx");
                }
                Label1.Text = Session["stuname"].ToString();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //添加
            if (TextBox1.Text == "")
            {
                WebMessageBox.Show("请输入反馈标题"); 
                return;
            }
            /*无用代码*/
            //DataTable dt2 = Operation.getDatatable("select DISTINCT type from t_feedback");
            //DropDownList1.DataSource = dt2;//设置数据源
            //DropDownList1.DataTextField = "type";//设置所要读取的数据表里的列名
            //DropDownList1.DataBind();//数据绑定
            if (TextBox2.Text == "")
            {
                WebMessageBox.Show("请输入内容描述"); 
                return;
            }
            Operation.runSql("insert [t_feedback]([table],[type],[content],[TorS]) values('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox2.Text + "','学生')");
            WebMessageBox.Show("提交成功", "feedback.aspx");
        }
    }
}