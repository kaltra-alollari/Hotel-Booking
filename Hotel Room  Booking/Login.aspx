<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Content/login.css" />
     <style>
        body{
             background: linear-gradient(rgba(0, 0, 0, 0.60), rgba(0, 0, 0, 0.60)), url("/images/banner-img.jpg") center/cover no-repeat;
   
        }
   </style>
</head>
<body>
    <div class="loginbox">
      &nbsp;<form id="form1" runat="server">
     
            <table align="center" style="margin: 10% 0 0 35%; " class="auto-style3">
<tr>
        <td colspan="2"><h2 align="center" class="auto-style1">Log in</h2></td> 

</tr>
            <tr>
        <td><asp:Label ID="username" runat="server" Text="Email" Font-Bold="True" CssClass="auto-style1" ></asp:Label>
        </td> 
          
         <td><asp:TextBox class="textbox" ID="Txtusername" runat="server" placeholder=" Enter Email"></asp:TextBox></td> 
               <td><asp:RequiredFieldValidator ID="RequiredFieldemail"
                   runat="server" ErrorMessage="Duhet plotesuar fusha email!" ControlToValidate="Txtusername" ForeColor="red" CssClass="auto-style5"></asp:RequiredFieldValidator> </td> 
          </tr> 
          <tr>
        <td><asp:Label ID="Label1" runat="server" Text="Password" Font-Bold="True" CssClass="auto-style1" ></asp:Label></td> 
        <td>  <asp:TextBox class="textbox"    ID="txtpassword" runat="server" TextMode="Password" placeholder="Enter Password" ></asp:TextBox>
           </td> 
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldPassword"
        runat="server" ErrorMessage="Duhet plotesuar fusha Password!" ForeColor="red" ControlToValidate="txtpassword" CssClass="auto-style5" ></asp:RequiredFieldValidator> </td>

          </tr>
        <tr>
        <td colspan="3"> <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="Log in" Font-Bold="True" CssClass="auto-style2" Height="37px" Width="263px"  />  
        </td>  </tr> 
   <tr>
  <td colspan="2">
    
      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx" CssClass="auto-style1">Don't have an Account?  Register now</asp:HyperLink>
    
     </td> </tr>   
                <tr>
                  <td colspan="2">
                      <asp:Label ID="lblMessage" runat="server"></asp:Label> </td> </tr>   
</table>


      
    </form>
      <img class="auto-style6" src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-and-shapes-3/177800/129-512.png" /></div>
</body>
</html>
