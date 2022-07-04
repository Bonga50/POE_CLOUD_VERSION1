<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.CarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
      <meta charset="utf-8" />
    <meta name="viewport"  content="width=device-width, initial-scale=0.1" />
    <style>
        .grid {
           display : grid;
           grid-template-columns :  350px 100px auto;
           grid-template-rows : auto auto auto auto auto auto auto auto auto ;
           grid-template-areas :
               "Title Title Title"
               "QuestionCarNo btnRead DataGrid"
               "QuestionModel btnCreate DataGrid"
               "KilosTravled btnUpdate DataGrid"
               "SerciviceKillos btnDelete DataGrid"
               "CarMake btnViewAll DataGrid"
               "Carbody lblError DataGrid"
               "cmbAvailable . DataGrid"
               "btnBack btnClear DataGrid";
              
           

        }
        .Title {grid-area : Title;
                
        }
        .QuestionCarNo {grid-area : QuestionCarNo;
                        
                        margin : 0px 0px 20px 0px;
        }
        .QuestionModel {grid-area : QuestionModel;
                          margin : 0px 0px 20px 0px;   
        }
        .KilosTravled {grid-area : KilosTravled;
                       margin : 0px 0px 20px 0px;
                            
        }
        .SerciviceKillos {grid-area : SerciviceKillos;
                          margin : 0px 0px 20px 0px;
                         
        }
        .CarMake {grid-area : CarMake;
                  margin : 0px 0px 20px 0px;
                   
        }
        .Carbody {grid-area : Carbody;
                  margin : 0px 0px 20px 0px;
                   
        }
        .DataGrid {grid-area : DataGrid;
                   
        }
        /*Buttoons*/
        .btnRead {grid-area : btnRead;
                        
        }
        .btnCreate {grid-area : btnCreate; 
                      
        }
        .btnUpdate {grid-area : btnUpdate; }
        .btnDelete {grid-area : btnDelete; }
        .btnBack {grid-area : btnBack; 
                  margin : 0px 0px 20px 0px;
        }
        .btnClear {grid-area : btnClear; 
                   margin : 0px 0px 20px 0px;
        }
        .lblError{grid-area : lblError;
                  color : red;

        }
        .btnViewAll{grid-area : btnViewAll;
                 

        }
        .cmbAvailable{grid-area : cmbAvailable;}
     
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--https://www.youtube.com/watch?v=HgwCeNVPlo0-->
        <div class="grid">
        <div class="Title" >
            <asp:Label  ID="lblCarTitle" runat="server" Font-Names="Segoe UI"  Font-Bold="true" Font-Size="Larger"  > Car</asp:Label>
        </div>
            <br />
            <!-- Car num lable and text box -->
        <div class="QuestionCarNo">  
            
            <asp:Label  ID="lblCarNo" runat="server"  Font-Names="Segoe UI" Width="150" >Car number</asp:Label>
            <asp:TextBox ID="txtCarNo" runat="server" Height="14"></asp:TextBox>
            
        </div>
            <br />
             <!-- Car model lable and text box -->
         <div class="QuestionModel">  
            <asp:Label  ID="lblCarModel" runat="server"  Font-Names="Segoe UI" Width="150" >Car model</asp:Label>
           <asp:TextBox ID="txtCarModel" runat="server" Height="14"></asp:TextBox>
        </div>
            <br />
            <!-- Car killos traveld -->
            <div class="KilosTravled">
             <asp:Label  ID="lblKillosT" runat="server"  Font-Names="Segoe UI" Width="150" >Kilos Travled</asp:Label>
           <asp:TextBox ID="txtKilosT" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!-- Car Service kilos -->
            <div class="SerciviceKillos">
                  <asp:Label  ID="lblServiceKilos" runat="server"  Font-Names="Segoe UI" Width="150" >Service Kilos</asp:Label>
                   <asp:TextBox ID="txtServiceKilos" runat="server" Height="14"></asp:TextBox>
            </div>
            <br />
            <!-- Car Make -->
            <div class="CarMake">
                <asp:Label  ID="lblCarMake" runat="server"  Font-Names="Segoe UI" Width="150"  >Car Make</asp:Label>
                <select id="cmbCarMake"  runat="server" >
                    <option value="Select">Select....</option>
                    <option value="Hyundai">Hyundai</option>
                    <option value="BMW">BMW</option>
                    <option value="Mercedes Benz">Mercedes Benz</option>
                    <option value="Toyota">Toyota</option>
                    <option value="Ford">Ford</option>
                </select>
  
            </div>
            <br />
           <!-- Car Body -->
            <div class="Carbody">
                <asp:Label  ID="lblCarBody" runat="server"  Font-Names="Segoe UI" Width="150" >Car Body</asp:Label>
                <select id="cmbCarBody"  runat="server"  >
                    <option value="Select">Select....</option>
                    <option value="Hatchback">Hatchback</option>
                    <option value="Sedan">Sedan</option>
                    <option value="Coupe">Coupe</option>
                    <option value="SUV">SUV</option>

                </select>
            </div>
            <br />
            <!-- Availability -->
            <div class="cmbAvailable">
                <asp:Label  ID="lblAvailable" runat="server"  Font-Names="Segoe UI" Width="150" >Availability</asp:Label>
                <select id="cmbAvailable"  runat="server"  >
                    <option value="Select">Select....</option>
                    <option value="yes">yes</option>
                    <option value="no">no</option>
                </select>
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
