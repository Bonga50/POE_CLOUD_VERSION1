<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OptionsForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.OptionsForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
        <style>

div {text-align: center;
     margin-top: 0px;
        }
</style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblWelcomeTitle" runat="server" Font-Names="Segoe UI" Font-Bold="true" Font-Size="Larger" > Welcome</asp:Label>
        </div>
        <br />
        <!-- Car button -->
        <div>
            <asp:Label ID="lblClickCar" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for car</asp:Label> 
            <asp:Button ID="btnCar" runat="server" Font-Names="Segoe UI" Text="Car"  Width="90px" OnClick="btnCar_Click" />
        </div>
        <br />
        <!-- Driver button -->
        <div>
            <asp:Label ID="lblClickDriver" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for Driver</asp:Label> 

            <asp:Button ID="btnDriver" runat="server" Font-Names="Segoe UI" Text="Driver"  Width="90px" OnClick="btnCar_Click" />
        </div>
           <br />  
        <!-- Inspector button -->
        <div>
            <asp:Label ID="lblClickInspector" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for Inspector</asp:Label> 

            <asp:Button ID="btnInspectors" runat="server" Font-Names="Segoe UI" Text="Inspector"  Width="90px" OnClick="btnCar_Click" />
        </div>
         <br />  
        <!-- Rental button -->
        <div>
            <asp:Label ID="lblClickRental" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for Rental</asp:Label> 

            <asp:Button ID="btnRental" runat="server" Font-Names="Segoe UI" Text="Rental"  Width="90px" OnClick="btnCar_Click" />
        </div>
          <br />  
        <!-- Return button -->
        <div>
            <asp:Label ID="lblClickReturn" runat="server" Width="200" Font-Names="Segoe UI"  > Click here for Return</asp:Label> 

            <asp:Button ID="btnReturn" runat="server" Font-Names="Segoe UI" Text="Return"  Width="90px" OnClick="btnCar_Click" />
        </div>
         <!-- back button -->
        <br /> 
        <br />  
        <div>
            
            <asp:Button ID="btnBack" runat="server" Font-Names="Segoe UI" Text="Back"  Width="90px" OnClick="btnCar_Click" />
        </div>
    </form>
</body>
</html>
