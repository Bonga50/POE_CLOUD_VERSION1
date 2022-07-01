<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarForm.aspx.cs" Inherits="POE_CLOUD_VERSION1.CarForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        .grid {
            display : grid;
            grid-template-columns : 300px 300px;
            grid-template-rows : auto auto ;
            grid-template-areas : 
                "Title Title"
                "Question1 CarNoBtn";

        }
        .Title {grid-area : Title;}
        .Question1 {grid-area : QuestionCarNo;}
        .CarNoBtn {grid-area : CarNoBtn }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--https://www.youtube.com/watch?v=HgwCeNVPlo0-->
        <div class="grid">
        <div class="Title" >
            <asp:Label CssClass="Title" ID="lblCarTitle" runat="server" Font-Names="Segoe UI" BackColor="Red" Font-Bold="true" Font-Size="Larger"  > Car</asp:Label>
        </div>
        <div class="QuestionCarNo">  
            <asp:Label CssClass="Question1" ID="lblCarNo" runat="server"  Font-Names="Segoe UI" BackColor="Yellow" >Please enter car number</asp:Label>

           
        </div>
            <div class="CarNoBtn">
             <asp:TextBox ID="txtCarNo" runat="server" Height="14"></asp:TextBox>
            </div>
       </div>
    </form>
</body>
</html>
