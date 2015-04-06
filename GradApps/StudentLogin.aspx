<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="StudentLogin.aspx.cs" Inherits="StudentLogin" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>--%>
<asp:Content ContentPlaceHolderID="Main" runat="server">
    <link rel="stylesheet" href="styles/Student.css" type="text/css" />
    <div class="container1">
        <div style="width: 300px">
            <h1>Student Login</h1>
            <asp:Label ID="Label1" runat="server" Text="Username: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Text1" type="text" runat="server" />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Password1" type="password" runat="server" />&nbsp;
        </div>
        <p style="height: 44px">
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </p>
    </div>
</asp:Content>
