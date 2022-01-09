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
    
    public partial class cpanel : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertProduct_Click(object sender, EventArgs e)
        {
            
                Product product = new Product()
                {
                    Name = ProductName.Text,
                    Price = Convert.ToDecimal(ProductPrice.Text),
                    Description = ProductDescription.Text
                };
                fasticcoBusiness.InsertProduct(product);

            ProductName.Text = "";
            ProductPrice.Text = "";
            ProductDescription.Text = "";
            Response.Redirect("cpanel.aspx");

        }
    }
}