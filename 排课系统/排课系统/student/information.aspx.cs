using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace 排课系统.student
{
    public partial class info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["stuid"] == null)
                {
                    WebMessageBox.Show("请登录", "../NewLogin.aspx");
                }
                Label1.Text = "欢迎您," + Session["stuname"].ToString();
                string sql = "select * from t_student where stuid='" + Session["stuid"].ToString() + "'";
                DataTable dt = Operation.getDatatable(sql);
                if (dt.Rows.Count > 0)
                {
                    Label2.Text = dt.Rows[0]["stuid"].ToString();
                    Label3.Text = dt.Rows[0]["stuname"].ToString();
                    Label4.Text = dt.Rows[0]["major"].ToString();
                    Label5.Text = dt.Rows[0]["grade"].ToString();

                }
            }
        }
    }
}