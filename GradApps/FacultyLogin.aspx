<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="FacultyLogin.aspx.cs" Inherits="Login" %>



<asp:Content ContentPlaceHolderID="Main" runat="server">
    <!-- form - faculty login -->
    <div style="width: 1198px">
        <h1>Faculty Login</h1>
        <asp:Label ID="Label1" runat="server" Text="Username: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Text1" type="text" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Password: " Font-Bold="True" Font-Size="Medium"></asp:Label><input id="Password1" type="password" />&nbsp;</div>
        <p style="height: 44px">
            <asp:Button class="bluebutton login" ID="Button1" runat="server" Text="Login" Width="103px" OnClick="Button1_Click" />
        </p>
</asp:Content>