using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_1._1
{
    public partial class Create_New_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txt_doo.Text = DateTime.Now.ToString().Substring(0,10);
            
        }

        protected void btn_create_Click(object sender, EventArgs e)
        {
            
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
    }
}