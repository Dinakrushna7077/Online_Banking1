using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Online_Banking_1._1
{
    public partial class Nominee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DINAKRUSHNA-200;Initial Catalog=MyBank;Integrated Security=True;");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                SqlDataAdapter adp = new SqlDataAdapter("select account_no from account_mst order by account_no desc", con);
                adp.Fill(ds);
                txt_account.Text = ds.Tables[0].Rows[0]["account_no"].ToString();
            }
        }

        protected void Btn_create_Click(object sender, EventArgs e)
        {
            string gener=GetGender();
            SqlDataAdapter adp = new SqlDataAdapter("insert into nominee_mst (account_no,nominee_name,relation,n_dob,gender,mobile,adhar,admin) values('"+txt_account.Text+"','"+txt_nname.Text+"','"+txt_Relation.Text+"','"+txt_nDob.Text+"','"+gener+"','"+txt_Mobile.Text+"','"+txt_Adhar.Text+"','"+txt_Admin.Text+"')",con);
            adp.Fill(ds);
            lbl_Msg.Text = "Account Created Successfully";
            lbl_Msg.Style["display"] = "block";
        }
        private string GetGender()
        {
            if (rb_male.Checked)
                return rb_male.Text;
            else if (rbfemale.Checked)
                return rbfemale.Text;
            else if (rb_other.Checked)
                return rb_other.Text;
            else
                return "";
        }
    }
}