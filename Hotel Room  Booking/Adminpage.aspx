<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminpage.aspx.cs" Inherits="Adminpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous" />
   
    <title></title>
  <link rel="stylesheet" href="Content/Adminpage.css" />
     
</head>
<body>
               

    <form id="form1" runat="server">
       <div class="header">
                <asp:Label ID="Label6" runat="server" Text="Kristal Hotel" ForeColor="white" CssClass="logo"></asp:Label> 
                 <img src="images/logo.jpeg" algin="left" height="60px" width="60px" />
         <div class="header-right">

         <asp:Label ID="Label1" runat="server" Text=" Hello Admin" ForeColor="white" ></asp:Label> 
             &nbsp;&nbsp; 
             <asp:Button ID="logout" runat="server" Text="Logout"  OnClick="logout_Click" class="btn btn-dark" />
              </div>
         &nbsp;</div>
         
        &nbsp;<hr />
        <div> 
            <asp:Label ID="Label3" runat="server" Text="Klientet"   class="font" ></asp:Label> <br />
            <asp:GridView ID="GridViewKlientet" runat="server" CellPadding="4" GridLines="None"  class="table table-success table-striped">
                <AlternatingRowStyle BackColor="transparent" ForeColor="black" />
                <EditRowStyle  />
                <FooterStyle   Font-Bold="True" ForeColor="black" />
                <HeaderStyle  Font-Bold="True" ForeColor="black" />
                <PagerStyle  HorizontalAlign="Center" />
                <RowStyle   />
                <SelectedRowStyle Font-Bold="True" ForeColor="black"  />
                <SortedAscendingCellStyle  />
                <SortedAscendingHeaderStyle />
                <SortedDescendingCellStyle />
                <SortedDescendingHeaderStyle  />
            </asp:GridView>
            <br />
        </div>
        <hr />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Rooms" class="font" ></asp:Label>
        
           <table class="table table-success table-striped"> 
                <tr>
                    <td>Numri</td>
                    <td> 
                        <asp:TextBox ID="txtnumri" runat="server" BackColor="Transparent"></asp:TextBox>
                    </td>
                    <td> <asp:RequiredFieldValidator ID="validateEmri" 
                        runat="server" ErrorMessage="Fusha duhet plotesuar" ForeColor="Red" ControlToValidate="txtnumri"></asp:RequiredFieldValidator></td>
               <td>   <asp:DropDownList ID="DropDownList1" runat="server"  Height="32px" Width="186px" DataSourceID="SqlDataSource1" DataTextField="Numri" DataValueField="IdRoom"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-J287DJ3\SQLEXPRESS;Initial Catalog=&quot;Hotel Booking&quot;;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [IdRoom], [Numri] FROM [Dhomat]"></asp:SqlDataSource>
                    </td>
                </tr>
              <tr>
                    <td>Statusi</td>
                    <td> 
                        <asp:TextBox ID="txtstatusi" runat="server" TextMode="Number" BackColor="Transparent"></asp:TextBox>
                    </td>
                    <td> <asp:RequiredFieldValidator ID="validatePershkrimi"
                        runat="server" ErrorMessage="Fusha duhet plotesuar" ForeColor="Red" ControlToValidate="txtstatusi"  ></asp:RequiredFieldValidator></td>
                </tr>
                 <tr>
                    <td>Tipi</td>
                    <td> 
                        <asp:TextBox ID="TextTipi" runat="server" BackColor="Transparent" ></asp:TextBox>
                    </td>
                    <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage="Fusha duhet plotesuar" ForeColor="Red" ControlToValidate="TextTipi"  ></asp:RequiredFieldValidator></td>
                </tr>
                <tr  >
                    <td > 
                        <asp:Button ID="Insert" runat="server"  Text="Insert"  class="btn btn-dark" OnClick="Insert_Click"  />
                    </td>
                    
             
         
                    <td> 
                        <asp:Button ID="update" runat="server" Text="Update"  class="btn btn-dark"  OnClick="update_Click"  />
                    </td>
                    
          
              
                    <td> 
                        <asp:Button ID="delete" runat="server" Text="Delete"   class="btn btn-dark" OnClick="delete_Click"    />
                    </td>
                   
                </tr>
            </table>
           

        </div>
        <br />
        <div>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="black" GridLines="None"  class="table table-success table-striped"> 
           <AlternatingRowStyle BackColor="transparent" ForeColor="black" />
            <EditRowStyle  />
            <FooterStyle  Font-Bold="True" ForeColor="black" />
            <HeaderStyle  Font-Bold="True" ForeColor="black" />
            <PagerStyle   HorizontalAlign="Center" />
            <RowStyle  />
            <SelectedRowStyle Font-Bold="True" ForeColor="black" />
            <SortedAscendingCellStyle  />
            <SortedAscendingHeaderStyle  />
            <SortedDescendingCellStyle />
            <SortedDescendingHeaderStyle  />
           </asp:GridView>
           </div>
</form>
</body>
</html>
