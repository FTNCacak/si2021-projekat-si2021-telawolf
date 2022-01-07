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
    public partial class Orders : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
            string orderId = Request.QueryString["OrderId"];
            if (Convert.ToInt32(orderId)>0)
            {
                fasticcoBusiness.OrderStatus(orderId, "1");
                Response.Write("<script>console.log(" + orderId + ");</script>");
                Response.Redirect("Orders.aspx");
            }
            }
        }
}