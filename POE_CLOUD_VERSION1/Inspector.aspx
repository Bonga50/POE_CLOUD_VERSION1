<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inspector.aspx.cs" Inherits="POE_CLOUD_VERSION1.Inspector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            <div class="Title" >
            <asp:Label  ID="lblInspectorTitle" runat="server" Font-Names="Segoe UI"  Font-Bold="true" Font-Size="Larger"  >Inspector</asp:Label>
        </div>
            <br />
            <!--Inspector ID lable and text box -->
        <div class="lblInspectorNum">  
            
            <asp:Label  ID="lblInspectorNo" runat="server"  Font-Names="Segoe UI" Width="150" >Inspector number</asp:Label>
            <asp:TextBox ID="txtInspectorNum" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />
             <!-- Inspector First name lable and text box -->
         <div class="lblinspectorFname">  
            <asp:Label  ID="lblinspectorFname" runat="server"  Font-Names="Segoe UI" Width="150" >First Name</asp:Label>
           <asp:TextBox ID="txtinspectorFname" runat="server" Height="14"></asp:TextBox>
        </div>
            <br />
            <!-- Inspector Surname -->
            <div class="lblInspectorSurname">
             <asp:Label  ID="lblInspectorSurname" runat="server"  Font-Names="Segoe UI" Width="150" >Surname</asp:Label>
           <asp:TextBox ID="txtInspectorSurname" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!-- Inspector Email -->
            <div class="lblInspectorEmail">
                  <asp:Label  ID="lblInspectorEmail" runat="server"  Font-Names="Segoe UI" Width="150" >Email</asp:Label>
                   <asp:TextBox ID="txtInspectorEmail" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!--Inspector Mobile -->
          <div class="lblInspectorMobile">
                  <asp:Label  ID="lblInspectorMobile" runat="server"  Font-Names="Segoe UI" Width="150" >Mobile</asp:Label>
                   <asp:TextBox ID="txtInspectorMobile" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />

            <!--Buttons-->
            <div class="btnRead">
                <asp:Button ID="btnRead" Text="Read" runat="server" Width="75" OnClick="btnRead_Click"/>
            </div>
             <div class="btnCreate">
                <asp:Button ID="btnCreate" Text="Create" runat="server" Width="75" OnClick="btnCreate_Click" />
            </div>
             <div class="btnUpdate">
                <asp:Button ID="btnUpdate" Text="Update" runat="server" Width="75" OnClick="btnUpdate_Click" />
            </div>
             <div class="btnDelete">
                <asp:Button ID="btnDelete" Text="Delete" runat="server" Width="75" OnClick="btnDelete_Click"/>
            </div>
             <div class="btnBack">
                <asp:Button ID="btnBack" Text="Back" runat="server" Width="75" OnClick="btnBack_Click"/>
            </div>
             <div class="btnClear">
                <asp:Button ID="btnClear" Text="Clear" runat="server"  Width="75" OnClick="btnClear_Click"/>
            </div>
             <div class="btnViewAll">
                <asp:Button ID="btnViewAll" Text="View All" runat="server"  Width="75" OnClick="btnViewAll_Click"/>
            </div>
             <!--Error lable-->
            <div class="lblError">
            <asp:Label  ID="lblError" runat="server"  Font-Names="Segoe UI" Width="150"  >Error</asp:Label>
          </div>

        </div>
    </form>
</body>
</html>
