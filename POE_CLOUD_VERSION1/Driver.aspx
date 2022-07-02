<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="POE_CLOUD_VERSION1.Driver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="grid">
        <div class="Title" >
            <asp:Label  ID="lblDriverTitle" runat="server" Font-Names="Segoe UI"  Font-Bold="true" Font-Size="Larger"  > Driver</asp:Label>
        </div>
            <br />
            <!-- Driver num lable and text box -->
        <div class="QuestionDriverNo">  
            
            <asp:Label  ID="lblDriverNo" runat="server"  Font-Names="Segoe UI" Width="150" >Driver ID</asp:Label>
            <asp:TextBox ID="txtDriverID" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />
             <!-- Driver name lable and text box -->
         <div class="QuestionDriverName">  
            <asp:Label  ID="lblDriverName" runat="server"  Font-Names="Segoe UI" Width="150" >Driver name</asp:Label>
           <asp:TextBox ID="txtDrivername" runat="server" Height="14"></asp:TextBox>
        </div>
            <br />
            <!-- Driver surnmae -->
            <div class="DriverSurname">
             <asp:Label  ID="lblDriverSurname" runat="server"  Font-Names="Segoe UI" Width="150" >Driver Surname</asp:Label>
           <asp:TextBox ID="txtDriverSurname" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!--Driver email -->
            <div class="DriverEmail">
                  <asp:Label  ID="lblDriverEmail" runat="server"  Font-Names="Segoe UI" Width="150" >Email</asp:Label>
                   <asp:TextBox ID="txtDriverEmail" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
                 <!--Driver Mobile -->
            <div class="DriverMobile">
                  <asp:Label  ID="lblDriverMobile" runat="server"  Font-Names="Segoe UI" Width="150" >Mobile</asp:Label>
                   <asp:TextBox ID="txtDriverMobile" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!-- Driver addres -->
            <div class="DriverAddresNum">
                <asp:Label  ID="lblAddressNum" runat="server"  Font-Names="Segoe UI" Width="150"  >Address Nr</asp:Label>
              <asp:TextBox ID="txtAddressNum" runat="server" Height="14"></asp:TextBox>
  
            </div>
            <br />
                 <div class="DriverAddresStreet">
                <asp:Label  ID="lblDriverStreet" runat="server"  Font-Names="Segoe UI" Width="150"  >Street And City</asp:Label>
              <asp:TextBox ID="txtDriverStreet" runat="server" Height="14"></asp:TextBox>
  
            </div>
            <br />
                   <div class="DriverState">
                <asp:Label  ID="lblDriverState" runat="server"  Font-Names="Segoe UI" Width="150"  >State</asp:Label>
              <asp:TextBox ID="txtDriverState" runat="server" Height="14"></asp:TextBox>
  
            </div>
                <br />
                   <div class="DriverZip">
                <asp:Label  ID="lblDriverZip" runat="server"  Font-Names="Segoe UI" Width="150"  >Zip-Code</asp:Label>
              <asp:TextBox ID="txtDriverZip" runat="server" Height="14"></asp:TextBox>
  
            </div>
      
            <div class="DataGrid">   

                <asp:GridView ID="carDataGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

            </div>
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
        </div>
    </form>
</body>
</html>
