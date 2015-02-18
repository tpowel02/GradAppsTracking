<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upload Degree Evaluation</title>
    <link href="styles/Main.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <header><asp:image ImageUrl="images/logo.png" runat="server"></asp:image><asp:image ImageUrl="images/title.png" runat="server"></asp:image></header>
       
    <h1>Upload Degree Evaluation for Selected Student:</h1> 
 
    <form id="form1" runat="server">
    <div style="height: 195px">
    
        <asp:Label ID="Label1" runat="server" Text="Selected Student:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" ReadOnly="True" style="margin-left: 14px; margin-top: 7px" Width="144px">Trent Powell</asp:TextBox>
        </br>
        </br>
        <asp:Label ID="Label2" runat="server" Text="Select File (PDF):"></asp:Label>
        <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 12px" Width="259px" />
        </br>
        </br>
        <asp:Button class="bluebutton" ID="Button1" runat="server" Text="Cancel" style="margin-left: 137px" OnClick="Button1_Click" />
        <asp:Button class="bluebutton" ID="Button2" runat="server" Text="Upload and Return" style="margin-left: 38px" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
