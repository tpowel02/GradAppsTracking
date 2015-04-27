<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" %>

<asp:Content ContentPlaceHolderID="Main" runat="server">
    <link rel="stylesheet" href="styles/Login.css" type="text/css" />
    <div class="verify" style="width:235px;height:240px">
        <div class="title" style="width:200px;text-align:center">Student Login</div>
        <br />
        <div class="container2" style="width:200px;margin-bottom:10px;padding-right:20px">
        <asp:Label ID="Label1" runat="server" Text="Username: " Font-Bold="True" Font-Size="Medium" style="margin-left:20px"></asp:Label><input id="Text1" type="text" runat="server" style="margin-left:20px"/>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True" Font-Size="Medium" style="margin-left:20px"></asp:Label><input id="Password1" type="password" runat="server" style="margin-left:20px"/>
        <br />
        </div>
        <asp:Button class="bluebutton donebutton" ID="btnLogin" runat="server" Text="Login" Style="margin-top:10px;margin-left:75px" OnClick="btnLogin_Click" />
        <br />
    </div>
</asp:Content>
