<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptionsForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.OptionsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>

</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblWelcomeTitle" runat="server" Font-Names="Segoe UI" Font-Bold="true" Font-Size="Larger" > Welcome</asp:Label>
        </div>
        <br />
        <div>
            <asp:Label ID="lblClickCar" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for car</asp:Label> 
            <asp:Button ID="btnCar" runat="server" Font-Names="Segoe UI" Text="Car"  Width="90px" OnClick="btnCar_Click" />
        </div>
        <br />  
        <div>
            <asp:Label ID="lblClickDriver" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for Driver</asp:Label> 

            <asp:Button ID="btnDriver" runat="server" Font-Names="Segoe UI" Text="Car"  Width="90px" OnClick="btnCar_Click" />
        </div>
    </form>
</body>
</html>
