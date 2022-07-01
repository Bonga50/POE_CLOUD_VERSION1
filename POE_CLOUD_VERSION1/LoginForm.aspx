<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.LoginFrom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport"  content="width=device-width, initial-scale=0.1" />
    <style>
h1 {text-align: center;}
p {text-align: center;}
div {text-align: center;
     margin-top: 0px;}
</style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="lblTitle" runat="server" Font-Names="Segoe UI" Font-Size="Larger" >Welcome to Ride you Rent</asp:Label>

        </div>
        <br /> 
        <div > 
            <asp:Label Height="80" ID="lblLoginTitle" runat="server"  Font-Names="Segoe UI"> Please Login</asp:Label>
        </div>
        <br />  
         <div> 
            <asp:Label ID="lblLogin" runat="server"  Font-Names="Segoe UI"> Inspector ID&nbsp;&nbsp;&nbsp;&nbsp; </asp:Label>
             <asp:TextBox ID="txtLogin" runat="server" Height="14"></asp:TextBox>
             <br /> 
             <br />
             <asp:Label ID="lblPassword" runat="server"  Font-Names="Segoe UI"> Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </asp:Label>
             <asp:TextBox ID="txtPassword" runat="server" Height="14"></asp:TextBox>
        </div>
        <br />
        <div>
            <asp:Button ID="btnLogin" runat="server" Height="25" Width="150" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
