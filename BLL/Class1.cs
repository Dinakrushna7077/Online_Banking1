using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
namespace BLL
{
    public class Class1
    {
    }
    public class LoginBLL
    {
        public string IsValid(string uname,string pass)
        {
            LoginDAL lgn = new LoginDAL();
            return lgn.Is_UserValie(uname, pass);
        }
    }
}
