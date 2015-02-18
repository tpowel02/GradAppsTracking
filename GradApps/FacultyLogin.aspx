<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FacultyLogin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logon</title>
    <link href="styles/Main.css" rel="stylesheet" type="text/css" media="all" />

    <style type="text/css">
        #Password1 {
            width: 175px;
            margin-left: 2px;
        }
        #Text1 {
            width: 175px;
            margin-left: 1px;
        }
    </style>

</head>


<body>
    <header><asp:image ImageUrl="images/logo.png" runat="server"></asp:image><asp:image ImageUrl="images/title.png" runat="server"></asp:image></header>
    <form id="form1" runat="server">
    <div style="width: 1198px">
        <h1>Faculty Login</h1>
        <asp:Label ID="Label1" runat="server" Text="Username: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Text1" type="text" />
        </br>
        </br>
        <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Password1" type="password" />&nbsp;</div>
        <p style="height: 44px">
            <asp:Button class="bluebutton login" ID="Button1" runat="server" Text="Login" Width="103px" OnClick="Button1_Click" />
        </p>
    </form>
</body>
</html>
