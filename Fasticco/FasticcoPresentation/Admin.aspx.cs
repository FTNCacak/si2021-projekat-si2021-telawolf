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

    public partial class Admin : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void adminLogin_Click(object sender, EventArgs e)
        {
            if (fasticcoBusiness.LoginAdmin(AdminName.Text, AdminPassword.Text))
            {
                Session["AdminName"] = AdminName.Text;
                Response.Redirect("cpanel.aspx");
            }
            else
            {
                Response.Write("<script>alert('Korisničko ime i lozinka se ne podudaraju.')</script>");
            }
        }
    }
    
}