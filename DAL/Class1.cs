using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class Class1
    {

    }
    public class LoginDAL
    {
        SqlConnection con=new SqlConnection("Data Source=DINAKRUSHNA-200;Initial Catalog=MyBank;Integrated Security=True;");
        DataSet ds = new DataSet();
        public string Is_UserValie(string uid,string pass)
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from Admin_mst where gmail='"+uid+"'", con);
            adp.Fill(ds);
            if (ds.Tables[0].Rows.Count>0)
            {
                if (ds.Tables[0].Rows[0]["pass"].ToString() == pass)
                {
                    return "success";
                }
                else
                {
                    return "pass";
                }
            }
            return "uid";
        }
    }
}
