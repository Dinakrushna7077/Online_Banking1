using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.ComponentModel.DataAnnotations;

namespace Online_Banking_1._1
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DINAKRUSHNA-200;Initial Catalog=MyBank;Integrated Security=True;");
        DataSet ds= new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from Admin_mst where gmail='" + txt_admin.Text + "'", con);
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string pas = ds.Tables[0].Rows[0]["pass"].ToString();
                if (pas == txt_pass.Text)
                {
                    Response.Redirect("~/Continue.aspx");
                }
                else
                {
                    lbl_msg2.Text = "Invalid Password...";
                    lbl_msg2.Style["display"] = "block";
                }
            }
            else
            {
                lbl_msg1.Text = "Invalid Admin ID...";
                lbl_msg1.Style["display"] = "block";
            }
            
        }
    }
}