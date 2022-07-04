<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inspector.aspx.cs" Inherits="POE_CLOUD_VERSION1.Inspector" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>

        .grid{display: grid;}
        /*Lables*/
        .Title{ grid-area: Title;}
        .lblInspectorNum{grid-area : lblInspectorNum;
                          margin : 0px 0px 20px 0px;
        }
        .lblinspectorFname{grid-area : lblinspectorFname;
                            margin : 0px 0px 20px 0px;
        }
        .lblInspectorSurname{grid-area : lblInspectorSurname;
                              margin : 0px 0px 20px 0px;
        }
        .lblInspectorEmail{grid-area : lblInspectorEmail;
                            margin : 0px 0px 20px 0px;
        }
        .lblInspectorMobile{grid-area  : lblInspectorMobile;
                             margin : 0px 0px 20px 0px;
        }
            /*Buttons*/
        .btnRead{grid-area : btnRead;}
        .btnCreate{grid-area : btnCreate;}
        .btnUpdate{grid-area : btnUpdate;}
        .btnDelete{grid-area : btnDelete;}
        .btnBack{grid-area : btnBack;}
        .btnClear{grid-area : btnClear;}
        .btnViewAll{grid-area : btnViewAll;}
        /*Error*/
        .lblError {
            grid-area: lblError;
            color: red;
        }

    </style>
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
