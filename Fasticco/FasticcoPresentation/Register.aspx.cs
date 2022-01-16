using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FasticcoData.Models;
using FasticcoData;
using FasticcoBusiness;
using System.Text;
using System.Text.RegularExpressions;

namespace FasticcoPresentation
{
    public partial class Register : System.Web.UI.Page
    {
        readonly FasticcoProductBusiness fasticcoBusiness = new FasticcoProductBusiness();
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void RegisterBtn_Click(object sender, EventArgs e)
        {
      

            if (Username.Text == "" ||
                Name.Text == "" ||
                LastName.Text == "" ||
                Email.Text == "" ||
                Phone.Text == "" ||
                Address.Text == "" ||
                Password.Text == "" ||
                PasswordConf.Text=="")
            {
                Response.Write("<script>alert('Molimo Vas da popunite sva polja.')</script>");
            }
            else if(Password.Text != PasswordConf.Text)
            {
                Response.Write("<script>alert('Šifre se ne podudaraju.')</script>");
            }
            else if (!Regex.Match(Name.Text, "^[A-Z][a-z]*$").Success)
            {
                Response.Write("<script>alert('Ime nije pravilno uneto.')</script>");
            }
            else if (!Regex.Match(LastName.Text, "^[A-Z][a-z]*$").Success)
            {
                Response.Write("<script>alert('Prezime nije pravilno uneto.')</script>");
            }
            else if (!Regex.Match(Phone.Text, "^[0-9]*$").Success)
            {
                Response.Write("<script>alert('Telefon nije pravilno unet.')</script>");
            }
            else if (Password.Text.Length<6)
            {
                Response.Write("<script>alert('Šifra mora da sadrži najmanje 6 karaktera.')</script>");
            }
            else if (fasticcoBusiness.CheckUser(Username.Text))
            {
                Response.Write("<script>alert('Zauzeto korisničko ime.')</script>");
            }
            else
            {
                User user = new User()
                {
                    Username = Username.Text,
                    Name = Name.Text,
                    LastName = LastName.Text,
                    Email = Email.Text,
                    Phone = Phone.Text,
                    Address = Address.Text,
                    Password = Password.Text
                };
                fasticcoBusiness.InsertUser(user);
                Response.Redirect("Default.aspx");
            }

        }
    }
}