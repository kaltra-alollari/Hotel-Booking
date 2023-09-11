<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SingUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Content/singup.css" />
    <style>
        body{
             background: linear-gradient(rgba(0, 0, 0, 0.60), rgba(0, 0, 0, 0.60)), url("/images/banner-img.jpg") center/cover no-repeat;
   
        }
    </style>
   
   
</head>
    <body>
    <form id="form1" runat="server">
        <div class="signupBox">
            <table align="center" style="margin: 10% 0 0 35%;" class="style1">
                <tr >
                    <td colspan="2" align="center">
                        <h2> Rregjistrohu</h2>
                    </td>      
                </tr>
              <tr>
                    <td style="width:50%">Emer</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Txtemri" runat="server" Height="32px" Width="190px" Class="txtbox" placeholder="Vendos Emrin "></asp:TextBox>
                    </td>   
                  <td> 
                    <asp:RequiredFieldValidator ID="RequiredFieldemri" runat="server" ControlToValidate="Txtemri" ErrorMessage="Fusha emri duhet plotesuar" ForeColor="Red" ValidationGroup="validim">*</asp:RequiredFieldValidator>
                 </td>
              </tr> 
                       
                <tr>
                    <td style="width:50%">Mbiemer</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TxtMbiemri" runat="server" Height="32px" Width="190px" Class="txtbox" placeholder="Vendos Mbiemrin "></asp:TextBox>
                    </td>
                    <td> 
                        <asp:RequiredFieldValidator ID="RequiredFieldmbiemri" runat="server" ControlToValidate="txtMbiemri" ErrorMessage="Fusha mbiemri duhet te plotesohet" ForeColor="Red" ValidationGroup="validim">*</asp:RequiredFieldValidator>
                    </td>
                 
                </tr>
                <tr>
                    <td style="width:50%"> Mosha</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Txtmosha" runat="server" Height="32px" Width="190px" TextMode="Number" Class="txtbox" placeholder="Vendos Moshen"></asp:TextBox>
                    </td>
                    <td> 

                        <asp:CompareValidator ID="CompareValidatormosha" runat="server"  ControlToValidate="Txtmosha" ErrorMessage="Mosha minimale 18" Operator="GreaterThanEqual" ValueToCompare="18" ForeColor="Red"></asp:CompareValidator>
                       <br /> 
                        <asp:RequiredFieldValidator ID="RequiredFieldmosha" runat="server" ControlToValidate="Txtmosha" ErrorMessage="Fusha mosha duhet plotesuar" ForeColor="Red" ValidationGroup="validim">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td style="width:50%">Email</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Txtusername" runat="server" Height="32px" Width="190px" TextMode="Email" Class="txtbox" placeholder="Vendos Email "></asp:TextBox>
                    </td>
                    <td>
                        <asp:regularexpressionvalidator runat="server" errormessage="Invalid email" ID="regularExpressionEmail" ControlToValidate="Txtusername" ForeColor="Red" ToolTip="Vendosni Emailin" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:regularexpressionvalidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldemail" runat="server" ControlToValidate="Txtusername" ErrorMessage="Fusha email duhet plotesuar" ForeColor="Red" ValidationGroup="validim">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">Password</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="Txtpassword" runat="server" Height="32px" Width="190px" TextMode="Password" Class="txtbox" placeholder="Vendos Password "></asp:TextBox>
                    </td>
                              
<td>
    <asp:RequiredFieldValidator ID="RequiredFieldPassword"
        runat="server" ErrorMessage="Duhet plotesuar fusha Password" ForeColor="Red" ControlToValidate="Txtpassword" ValidationGroup="validim">*</asp:RequiredFieldValidator> </td>

                </tr>
                 <tr>
                    <td colspan="2" align="center"> 
                     
                        <asp:Button ID="Btnsingup" runat="server" Height="38px" Text="Sign up" Width="194px" Font-Bold="True" ValidationGroup="validim" OnClick="Btnsingup_Click" BackColor="#FF9900" class="style3"/>
                     </td>
                </tr>
                   <tr>
                    <td colspan="2" class="auto-style1"> 
                        <asp:validationsummary runat="server" ID="summaryvalidation" ForeColor="Red" ValidationGroup="validim" ></asp:validationsummary>
                        <%--<asp:Label ID="Label1" runat="server" Text=" "></asp:Label>--%>
                      </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
