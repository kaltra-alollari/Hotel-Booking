using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Tipi"] == null)
        {
            Response.Redirect("login.aspx");
           
        }
        FillGridKlient();
        FillGrid1();

    }

    public void FillGridKlient()
    {
        using (Hotel_BookingEntities entitet = new Hotel_BookingEntities())
        {
            var klient1 = entitet.Klientis.Select(x => new
            {
                x.Emer,
                x.Mbiemer,
                x.Rezervimis,
                x.Rezervimis.FirstOrDefault().NrDhomave
            });


            GridViewKlientet.DataSource = klient1.ToList();
            GridViewKlientet.DataBind();
        }

    }

    public void FillGrid1()
    {
        using (Hotel_BookingEntities entiteti = new Hotel_BookingEntities())
        {
            var afishim = from k in entiteti.Dhomats
                          select k;


            GridView1.DataSource = afishim.ToList();
            GridView1.DataBind();
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon(); 
        Response.Redirect("Login.aspx");
    }

    protected void Insert_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            using (Hotel_BookingEntities entitet = new Hotel_BookingEntities())
            {
                Dhomat std = new Dhomat();
                std.Numri = txtnumri.Text;
                std.Statusi = txtstatusi.Text;
                std.Tipi = TextTipi.Text;
                entitet.Dhomats.Add(std);
                entitet.SaveChanges();
                FillGrid1();
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Shtimi u realizua me sukses');", true);
               
            }
        }
    }


    protected void update_Click(object sender, EventArgs e)
    {
        var id =Convert.ToInt16( DropDownList1.SelectedValue);
        
        using (Hotel_BookingEntities entitete = new Hotel_BookingEntities())
        {
            var dhome = (from d in entitete.Dhomats
                         where d.IdRoom == id
                         select d).SingleOrDefault();
            dhome.Statusi = txtstatusi.Text;
            entitete.SaveChanges();
            FillGrid1();
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Modifikimi u realizua me sukses');", true);
            
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        var id = Convert.ToInt16(DropDownList1.SelectedValue);
        using (Hotel_BookingEntities entitete = new Hotel_BookingEntities())
        {
       var objektedhome = from o in entitete.Dhomats.Include("Rezervim_Dhome")
                         where o.IdRoom == id 
                          select o;

            entitete.Dhomats.RemoveRange(objektedhome.ToList());
           entitete.SaveChanges();
           ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Fshirja u realizua me sukses');", true);
           FillGrid1();
        }
    }
}