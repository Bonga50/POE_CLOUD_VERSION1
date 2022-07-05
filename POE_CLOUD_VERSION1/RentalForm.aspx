<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RentalForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.RentalForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .grid{display : grid;
               grid-template-columns :  350px 100px auto;
               grid-template-rows : auto auto auto auto auto auto auto auto auto ;
               grid-template-areas :
                   "Title Title Title"
                   "lblRentalID btnRead DataGrid"
                   "lblCarID btnCreate DataGrid"
                   "lblInspectorID btnViewAll DataGrid"
                   "lblRentalFee lblError DataGrid"
                   "lblRentalstartdate lblError DataGrid"
                   "lblRentalEnddate lblError DataGrid"
                   "btnBack btnClear DataGrid";

        }

        .DataGrid {grid-area : DataGrid;
                   
        }
        /*Lables*/
        .Title{ grid-area : Title;
                margin : 0px 0px 20px 0px;   
        }
        .lblRentalID{grid-area: lblRentalID;
                     margin : 0px 0px 20px 0px;   
        }
        .lblCarID{grid-area : lblCarID;
                  margin : 0px 0px 20px 0px;   
        }
        .lblInspectorID{grid-area  : lblInspectorID;
                        margin : 0px 0px 20px 0px;   
        }
        .lblRentalFee{grid-area : lblRentalFee;
                      margin : 0px 0px 20px 0px;   
        }
        .lblRentalstartdate{grid-area : lblRentalstartdate;
                            margin : 0px 0px 20px 0px;   
        }
        .lblRentalEnddate{grid-area : lblRentalEnddate;
                          margin : 0px 0px 20px 0px;   
        }
        .lblError{grid-area : lblError;
                  color : red;

        }
        /*Buttoons*/
        .btnRead {grid-area : btnRead;
                        
        }
        .btnCreate {grid-area : btnCreate; 
                      
        }
        .btnBack {grid-area : btnBack; 
                  margin : 0px 0px 20px 0px;
        }
        .btnClear {grid-area : btnClear; 
                   margin : 0px 0px 20px 0px;
        }
       
        .btnViewAll{grid-area : btnViewAll;
                 

        }

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
            
        <div class="Title" >
            <asp:Label  ID="lblRental" runat="server" Font-Names="Segoe UI"  Font-Bold="true" Font-Size="Larger">Rental</asp:Label>
        </div>
            <br />
            <!-- Rental ID and text box -->
        <div class="lblRentalID">  
            
            <asp:Label  ID="lblRentalNo" runat="server"  Font-Names="Segoe UI" Width="150" >Rental ID</asp:Label>
            <asp:TextBox ID="txtRentalno" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />
             <!-- CarId label and text box-->
         <div class="lblCarID">  
            <asp:Label  ID="lblCarID" runat="server"  Font-Names="Segoe UI" Width="150" >Car ID</asp:Label>
           <asp:TextBox ID="txtCarId" runat="server" Height="14"></asp:TextBox>
        </div>
            <br />
            <!-- InspectorID lable -->
            <div class="lblInspectorID">
             <asp:Label  ID="lblInspectorID" runat="server"  Font-Names="Segoe UI" Width="150" >InspectorID</asp:Label>
           <asp:TextBox ID="txtInspectorID" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!-- Rental fee-->
            <div class="lblRentalFee">
                  <asp:Label  ID="lblRentalFee" runat="server"  Font-Names="Segoe UI" Width="150" >Rental Fee</asp:Label>
                   <asp:TextBox ID="txtRentalFee" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!--Start date-->
             <div class="lblRentalstartdate">
                  <asp:Label  ID="lblrentalStartDate" runat="server"  Font-Names="Segoe UI" Width="150" >Start Date</asp:Label>
                  <input type="date" id="RentalStartDate" />
            </div>
            <br />
            <!--End date-->
             <div class="lblRentalEnddate">
                  <asp:Label  ID="lblRentalEnddate" runat="server"  Font-Names="Segoe UI" Width="150" >End Date</asp:Label>
                  <input type="date" id="RentalEndDate" />
            </div>
            <br />
              <!--Error lable-->
            <div class="lblError">
            <asp:Label  ID="lblError" runat="server"  Font-Names="Segoe UI" Width="150"  >Error</asp:Label>
          </div>
            <!--Buttons-->
            <div class="btnRead">
                <asp:Button ID="btnRead" Text="Retrive" runat="server" Width="75" />
            </div>
             <div class="btnCreate">
                <asp:Button ID="btnCreate" Text="Create" runat="server" Width="75" />
            </div>
             <div class="btnViewAll">
                <asp:Button ID="btnViewAll" Text="View All" runat="server"  Width="75" />
            </div>
             <div class="btnBack">
                <asp:Button ID="btnBack" Text="Back" runat="server" Width="75"/>
            </div>
             <div class="btnClear">
                <asp:Button ID="btnClear" Text="Clear" runat="server"  Width="75" />
            </div>
                   <!-- Display  data grid-->
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
        </div>
    </form>
</body>
</html>
