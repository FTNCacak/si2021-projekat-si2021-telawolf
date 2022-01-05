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
            DateTime localDate = DateTime.Now;
            string cultureNames = "en-GB";
            Order order = new Order()
            {
                OrderText = TextBox1.Text,
                Username = UserName.Text,
                OrderId = r.Next(1000, 9999),
                TotalPrice = 454,
                Address = Address.Text,
                Phone = UserPhone.Text,
                OrderTime = localDate.ToString()
            };
            fasticcoBusiness.InsertOrder(order);
        }
    }
}