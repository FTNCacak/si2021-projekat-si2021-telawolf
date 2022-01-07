using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FasticcoPresentation;
using FasticcoData.Models;
using FasticcoData;
using FasticcoBusiness;


namespace FasticcoPresentation
{
    public partial class Cart : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        private readonly Random r = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

      

        protected void sendOrder_Click1(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.Session["UserName"] == null)
            {
                Response.Write("<script>alert('Morate biti ulogovani da bi naručili.')</script>");
            }
            else if (Address.Text == "" || UserPhone.Text == "")
            {
                Response.Write("<script>alert('Molimo Vas da popunite sva polja.')</script>");
            }
            else
            {
                DateTime localDate = DateTime.Now;
                string cultureNames = "en-GB";
                Order order = new Order()
                {
                    OrderText = TextBox1.Text,
                    Username = Session["UserName"].ToString(),
                    OrderId = r.Next(1000, 9999),
                    TotalPrice = Convert.ToInt32(TotalPrice.Text),
                    Address = Address.Text,
                    Phone = UserPhone.Text,
                    OrderTime = localDate.ToString(),
                    Status = "0"
                };
                fasticcoBusiness.InsertOrder(order);

                Response.Cookies["ProductName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["TotalPrice"].Expires = DateTime.Now.AddDays(-1);
                Address.Text = "";
                UserPhone.Text = "";
                Response.Write("<script>alert('Uspešna porudzbina!')</script>");
            }
        }
    }
}