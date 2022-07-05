<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReturnForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.ReturnForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .grid {
            display: grid;
             grid-template-columns :  350px 100px auto;
             grid-template-rows : auto auto auto auto auto auto auto auto auto ;
             grid-template-areas : 
                 "Title Title Title"
                 "lblReturnID btnRead DataGrid"
                 "lblReturnFk btnCreate DataGrid"
                 "lblRentalReturndate btnViewAll DataGrid"
                 ". lblError DataGrid"
                 "btnBack  btnClear DataGrid";
        }
        .DataGrid {grid-area : DataGrid;
                   
        }
        /*Lables*/
        .Title{grid-area : Title;
               margin : 0px 0px 20px 0px;
        }
        .lblReturnFk {grid-area : lblReturnFk;
                       margin : 0px 0px 20px 0px;
        }
        .lblReturnID{grid-area  : lblReturnID;
                     margin : 0px 0px 20px 0px;
        }
        .lblRentalReturndate{grid-area : lblRentalReturndate;
                             margin : 0px 0px 20px 0px;
        }
        .lblError{grid-area : lblError;
                  color : red;
                   margin : 0px 0px 20px 0px;
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
                  margin : 0px 0px 20px 0px;

        }

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid">
             <div class="Title" >
            <asp:Label  ID="lblReturn" runat="server" Font-Names="Segoe UI"  Font-Bold="true" Font-Size="Larger">Return</asp:Label>
        </div>
            <br />
            <!-- Return ID and text box -->
        <div class="lblReturnID">  
            
            <asp:Label  ID="lblReturnID" runat="server"  Font-Names="Segoe UI" Width="150" >Return ID</asp:Label>
            <asp:TextBox ID="txtReturnID" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />
            <!-- Rental ID FK and text box -->
            <div class="lblReturnFk">  
            
            <asp:Label  ID="lblRentalFK" runat="server"  Font-Names="Segoe UI" Width="150" >Rental ID</asp:Label>
            <asp:TextBox ID="txtRentalFK" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />

            <!--Return date-->
             <div class="lblRentalReturndate">
                  <asp:Label  ID="lblReturndate" runat="server"  Font-Names="Segoe UI" Width="150" >Return Date</asp:Label>
                  <asp:TextBox ID="txtReturnDate" runat="server" Height="14" TextMode="Date" ></asp:TextBox>

            </div>
            <br />

            <!--Error lable-->
            <div class="lblError">
            <asp:Label  ID="lblError" runat="server"  Font-Names="Segoe UI" Width="150"  >Error</asp:Label>
          </div>
            <!--Buttons-->
            <div class="btnRead">
                <asp:Button ID="btnRead" Text="Retrive" runat="server" Width="75" OnClick="btnRead_Click" />
            </div>
             <div class="btnCreate">
                <asp:Button ID="btnCreate" Text="Create" runat="server" Width="75" OnClick="btnCreate_Click" />
            </div>
             <div class="btnViewAll">
                <asp:Button ID="btnViewAll" Text="View All" runat="server"  Width="75" OnClick="btnViewAll_Click" />
            </div>
             <div class="btnBack">
                <asp:Button ID="btnBack" Text="Back" runat="server" Width="75" OnClick="btnBack_Click"/>
            </div>
             <div class="btnClear">
                <asp:Button ID="btnClear" Text="Clear" runat="server"  Width="75" OnClick="btnClear_Click" />
            </div>

             <!-- Display  data grid-->
            <div class="DataGrid">   

                <asp:GridView ID="ReturnDataGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
