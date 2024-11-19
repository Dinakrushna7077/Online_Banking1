using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Banking_1._1
{
    public partial class Continue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home_Page.aspx");
        }

        protected void Btn_circle_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home_Page.aspx");
        }

        
    }
}