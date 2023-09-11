<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Userpage.aspx.cs" Inherits="Userpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link rel="stylesheet" href="main.css"/>
    <link rel="stylesheet" href="Content/userpage.css" />
      <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
        <div>
      
             <header class="header" id="header">
        <div class="head-top">
            <div class="site-name">
                <span>Kristal</span>
            </div>
            <div class="site-nav">
                <span id="nav-btn"> MENU <i class="fas fa-bars"></i></span>
            </div>
        </div>
          </header>

 <!-- menuja -->
        <div class = "sidenav" id = "sidenav">
            <span class = "auto-style11" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>
           <div class = "navbar">
                <asp:Label ID="userdetails" runat="server" Text=" "></asp:Label> <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
           </div>
              <asp:Button ID="logout" class = "btn sign-up"  runat="server" OnClick="logout_Click" Text="Logout" />
        </div>
        <!-- fundi menuse -->
       <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->
             <div class="bookingstyle">
            <table class="auto-style7">
                  <tr >
             <td class="auto-style9" colspan="2">
            <asp:Label ID="label4" runat="server" Text="Make Room Reservations" ForeColor="limegreen" Font-Size="XX-Large"></asp:Label>
         </td>
       </tr>
      <tr>
       <td>
         <asp:Label ID="label3" runat="server" Text="Check In Date" ForeColor="white" ></asp:Label>
          </td>
                       
          <td>
              <asp:TextBox ID="checkin" runat="server" TextMode="Date" class="txtbox"></asp:TextBox>
          </td>
           <td>
            <asp:RequiredFieldValidator ID="RequiredFieldCheckin"
                   runat="server" ErrorMessage="Choose check in date !" ControlToValidate="checkin" ForeColor="red" CssClass="auto-style14" ></asp:RequiredFieldValidator> </td>
            
             </tr>
           <tr >
             <td >
          <asp:Label ID="label2" runat="server" Text="Check Out Date" ForeColor="white"></asp:Label>
             </td>
               <td >
            <asp:TextBox ID="checkout" runat="server" TextMode="Date" class="txtbox">></asp:TextBox>
              </td>
                <td>
            <asp:RequiredFieldValidator ID="RequiredFieldCheckout"
                   runat="server" ErrorMessage="Choose Check Out date !" ControlToValidate="checkout" ForeColor="red" CssClass="auto-style14" ></asp:RequiredFieldValidator>
                  </td>
         </tr>
         <tr >
            <td>
         <asp:Label ID="teRritur" runat="server" Text="Adults" ForeColor="white"></asp:Label>
            </td>
      <td class="auto-style12">
          <asp:TextBox ID="adults" runat="server" TextMode="Number" class="txtbox" ></asp:TextBox>
           </td>
               <td>
            <asp:RequiredFieldValidator ID="RequiredFieldAdults"
                   runat="server" ErrorMessage=" Enter adults number!" ControlToValidate="adults" ForeColor="red" CssClass="auto-style14" ></asp:RequiredFieldValidator> </td>
           
           </tr>
        <tr >
           <td >
            <asp:Label ID="femije" runat="server" Text="Children" ForeColor="white"></asp:Label>
                  </td>
           <td >
            <asp:TextBox ID="children" runat="server" TextMode="Number" class="txtbox"></asp:TextBox>
           </td>
             <td>
            <asp:RequiredFieldValidator ID="RequiredFieldChildren"
                   runat="server" ErrorMessage=" Enter childrens number!" ControlToValidate="children" ForeColor="red" CssClass="auto-style14" ></asp:RequiredFieldValidator> </td>
         
          </tr>
         <tr >
        <td >
          <asp:Label ID="dhomat" runat="server" Text="Rooms" ForeColor="white"></asp:Label>
          </td>
           <td >
           <asp:TextBox ID="rooms" runat="server" TextMode="Number" class="txtbox"></asp:TextBox>     
         </td>
             <td>
             <asp:RequiredFieldValidator ID="RequiredFieldRooms"
                   runat="server" ErrorMessage=" Enter rooms number!" ControlToValidate="rooms" ForeColor="red" CssClass="auto-style14" ></asp:RequiredFieldValidator> </td>
     
      </tr>
       <tr>
          <td  colspan="3">
           <asp:Button ID="rezervo" runat="server" Text="Book Now" CssClass="auto-style6" OnClick="rezervo_Click" />
         </td>
     </tr>
 </table>
   </div>
 </div>
    </form>
          <script src="script/script.js"></script>
</body>
</html>
