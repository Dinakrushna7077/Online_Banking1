using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_1._1
{
    public partial class Create_New_Account : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DINAKRUSHNA-200;Initial Catalog=MyBank;Integrated Security=True;");
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            //txt_doo.Text = DateTime.Now.ToString().Substring(0,10);
            if(!IsPostBack)
            {
                txt_doo.Text = DateTime.Today.Date.ToString("dd-MM-yyyy");
                SqlDataAdapter adp1 = new SqlDataAdapter("select * from bank_mst", con);
                adp1.Fill(ds);
                drp_bank.DataSource = ds;
                //drp_bank.Items.Insert(0, "-Select Bank-");
                drp_bank.DataTextField = "bank_name";
                drp_bank.DataValueField = "bank_name";
                drp_bank.DataBind();
                drp_bank.Items.Insert(0, new ListItem("-Select Bank-", ""));
            }
        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            string gender=GetGender();
            string status=GetStatus();
            string acc_mode=GetAccountMode();
            string acc_type=GetAccountType();
            string bank=drp_bank.SelectedItem.ToString();
            
            SqlDataAdapter adp = new SqlDataAdapter("insert into account_mst (ifsc,name,fname,adhar,pan,gender,maritual_status,mobile,gmail,dob,address,branch,branch_code,ac_type,ac_mode,photo,sign,dt_open) values ('" + txt_ifsc.Text + "','" + txt_name.Text + "','" + txt_fname.Text + "','" + txt_adhar.Text + "','" + txt_pan.Text + "','" + gender + "','" + status + "','" + txt_mob.Text + "','"+txt_mail.Text+"','" + txt_dob.Text + "','" + txt_address.Text + "','" + txt_branch.Text + "','" + txt_branch_code.Text + "','" + acc_type + "','" + acc_mode + "','" + file_profile.FileName + "','" + file_sign.FileName + "','" + txt_doo.Text + "')", con);
            adp.Fill(ds);
            Response.Redirect("~/Nominee.aspx");

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
        private string GetStatus()
        {
            if (rb_marraid.Checked)
                return rb_marraid.Text;
            else if (rb_unmarried.Checked)
                return rb_unmarried.Text;
            else if (rb_widow.Checked)
                return rb_widow.Text;
            else
                return "";
        }
        private string GetAccountType()
        {
            if (rb_fd.Checked)
                return rb_fd.Text;
            else if (rb_current.Checked)
                return rb_current.Text;
            else if (rb_saving.Checked)
                return rb_saving.Text;
            else
                return "";
        }
        private string GetAccountMode()
        {
            if (rb_single.Checked)
                return rb_single.Text;
            else if (rb_joint.Checked)
                return rb_joint.Text;
            else
                return "";
        }

        protected void drp_bank_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter adp2 = new SqlDataAdapter("select * from bank_mst where bank_name='" + drp_bank.SelectedItem + "'", con);
            adp2.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txt_branch.Text = ds.Tables[0].Rows[0]["branch"].ToString();
                txt_branch_code.Text= ds.Tables[0].Rows[0]["branch_code"].ToString();
                txt_ifsc.Text= ds.Tables[0].Rows[0]["ifsc"].ToString();
            }
        }
    }
}