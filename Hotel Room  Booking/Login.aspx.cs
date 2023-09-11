using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
       
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        bool ekziston=true;
        var user = new Klienti();
        string Encryptedpass = FormsAuthentication.HashPasswordForStoringInConfigFile(txtpassword.Text, "SHA1");
        string email = Txtusername.Text.Trim();



        using (Hotel_BookingEntities model= new Hotel_BookingEntities())
        {
            if (model.Klientis.Where(x => x.Pasword == Encryptedpass && x.Email == email).Any())
            {
                user = model.Klientis.Where(x => x.Pasword == Encryptedpass && x.Email == email).FirstOrDefault();
            }
            else
            {
                ekziston = false;
            }
        }
        if(ekziston)
        {
            Session["email"] = email;
            Session["Tipi"] = user.Tipi;
            Session["Id"] = user.UserId;

            if (user.Tipi == TipUser.Admin.ToString())
                Response.Redirect("Adminpage.aspx");
            Response.Redirect("Userpage.aspx");

        }
        else
        {
            lblMessage.Visible = true;
            lblMessage.Text = "Invalid email and/or password";
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }
    
    }
}