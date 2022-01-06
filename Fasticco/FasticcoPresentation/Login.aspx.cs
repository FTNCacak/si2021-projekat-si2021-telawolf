using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FasticcoData.Models;
using FasticcoData;
using FasticcoBusiness;

namespace FasticcoPresentation
{
    public partial class Login : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            LoginBtn_Click(sender, e, Session);
        }

        protected void LoginBtn_Click(object sender, EventArgs e, System.Web.SessionState.HttpSessionState session)
        {
          if(fasticcoBusiness.LoginUser(Username.Text, Password.Text)){
                Session["UserName"] = Username.Text;
                Response.Redirect("Default.aspx");
          }
            else
            {
                Response.Write("<script>alert('Korisničko ime i lozinka se ne podudaraju.')</script>");
            }

        }
    }
}