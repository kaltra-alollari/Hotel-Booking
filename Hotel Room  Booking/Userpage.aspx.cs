using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Tipi"]== null)
            Response.Redirect("Login.aspx");

            userdetails.Text = " " + Session["Tipi"];
            Label1.Text = "Email: " + Session["Email"];

        
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void rezervo_Click(object sender, EventArgs e)
    {
       
        using( Hotel_BookingEntities model= new Hotel_BookingEntities())
        { 

        var dhoma = model.Dhomats.ToList().Where(x => x.Statusi == "1");
         
            if (Convert.ToInt16(rooms.Text) > dhoma.Count())
            {
                Response.Write("Nuk ka kaq dhoma te lira, dhom te lira jane " + dhoma.Count().ToString());
            }
            else
            {
                Rezervimi rezervo = new Rezervimi();

                rezervo.CheckInDate = Convert.ToDateTime(checkin.Text);
                rezervo.CheckOutDate = Convert.ToDateTime(checkout.Text);
                rezervo.NrAdulteve = Convert.ToInt16(adults.Text);
                rezervo.NrFemijeve = Convert.ToInt16(children.Text);
                rezervo.NrDhomave = Convert.ToInt16(rooms.Text);
                rezervo.UserId = Convert.ToInt32(Session["Id"]);

                model.Rezervimis.Add(rezervo);
                model.SaveChanges();
                var a =model.Rezervimis.OrderByDescending(x=>x.Id).FirstOrDefault();
             foreach (var item in dhoma.Take(Convert.ToInt32(rooms.Text)))
                {
                    item.Statusi = "0";
                    Rezervim_Dhome dhome = new Rezervim_Dhome()
                    {
                        Id_Rezervimi = a.Id,
                        idRoom = item.IdRoom
                    };
                    model.Rezervim_Dhome.Add(dhome);                  
                }
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Rezervim i suksesshem');", true);
            }

            model.SaveChanges();
        }
        
    }
}