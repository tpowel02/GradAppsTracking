<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="VerifyPage.aspx.cs" Inherits="Default2" %>

<!-- view - verify application information -->

<asp:Content ContentPlaceHolderID="Main" runat="server">
    <link rel="stylesheet" href="styles/Verify.css" type="text/css" />
    <div class="verify">
        <div class="title">Student Evaluation Results</div>
        <br />
        <div class="container1" style="width: 200px">
            <asp:Label ID="Label1" runat="server" Text="ID: "></asp:Label>
            <asp:TextBox ID="id" runat="server" ReadOnly="True" Width="109px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Major: "></asp:Label>
            <asp:TextBox ID="major" runat="server" ReadOnly="True" Width="122px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Minor: "></asp:Label>
            <asp:TextBox ID="minor" runat="server" ReadOnly="True" Width="125px"></asp:TextBox>
            <br />
        </div>
        <div class="container2" style="width: 200px">
            <asp:Label ID="Label4" runat="server" Text="GPA: "></asp:Label>
            <asp:TextBox ID="gpa" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="GPA in Major: "></asp:Label>
            <asp:TextBox ID="gpaMajor" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="GPA in Minor: "></asp:Label>
            <asp:TextBox ID="gpaMinor" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
        </div>
        <div class="clear"> </div>
        <br />
        <div class="container3" style="width: 256px">
            <asp:Label ID="Label7" runat="server" Text="Total Hours: "></asp:Label>
            <asp:TextBox ID="totalHours" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Total Hours Required: "></asp:Label>
            <asp:TextBox ID="totalHoursRequired" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Upper Level Hours: "></asp:Label>
            <asp:TextBox ID="upperLevelHours" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Lower Level Transfer Hours: "></asp:Label>
            <asp:TextBox ID="lowerLevelHours" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text="50% Hours in Residence: "></asp:Label>
            <asp:TextBox ID="percentHoursResidence" runat="server" ReadOnly="True" Width="40px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="30 of 36 hours in residence:"></asp:Label>
            <asp:TextBox ID="hoursResidence" runat="server" ReadOnly="True" Width="40px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label13" runat="server" Text="Hours of 'D': "></asp:Label>
            <asp:TextBox ID="dHours" runat="server" ReadOnly="True" Width="32px"></asp:TextBox>
            <br />
        </div>
        <br />
        <asp:Button ID="done" class="bluebutton donebutton" runat="server" Text="Done" Width="95px" OnClick="done_Click" />
    </div>
</asp:Content>