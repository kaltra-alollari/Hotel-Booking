using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

public partial class SingUp : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Btnsingup_Click(object sender, EventArgs e)
    {
        Klienti std = new Klienti();

        using (Hotel_BookingEntities model = new Hotel_BookingEntities())
        {
            var email = Txtusername.Text;
            var userEkzistent = (from p in model.Klientis
                                 where p.Email == email
                                 select p).Count();
            if (userEkzistent > 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Ky email ekziston tashme!');", true);
            }
            else
            {
                string Encryptedpass = FormsAuthentication.HashPasswordForStoringInConfigFile(Txtpassword.Text, "SHA1");
                std.Emer = Txtemri.Text;
                std.Mbiemer = TxtMbiemri.Text;
                std.Mosha = Convert.ToInt16(Txtmosha.Text);
                std.Email = Txtusername.Text;
                std.Pasword = Encryptedpass;

                std.Tipi = TipUser.User.ToString();
                model.Klientis.Add(std);
                model.SaveChanges();
                Response.Redirect("Login.aspx");
            }
        }
        

        
    }

}
