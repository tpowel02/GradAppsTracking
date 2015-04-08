<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="StudentView.aspx.cs" Inherits="StudentView" %>

<asp:Content ContentPlaceHolderID="Head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <link rel="stylesheet" href="styles/Student.css" type="text/css" />
<div class="verify">
        <div class="title">Your Application Status</div>
        <br />
        <div class="container2">
           Welcome <asp:Label id="name" runat="server" ReadOnly="True" DataField="studentName"></asp:Label>
            <br />
            <br />
             ID: <asp:Label ID="id" runat="server" ReadOnly="True" DataField="id"></asp:Label>
            <br />
           Major: <asp:Label id="major" runat="server" ReadOnly="True" DataField="major" ></asp:Label>
            <br />
           Date Submitted: <asp:Label id="dateSubmitted" runat="server" ReadOnly="True" DataField="dateSubmitted" ></asp:Label>
            <br />
           Status: <asp:Label id="status" runat="server" ReadOnly="True" DataField="status" ></asp:Label>
            <br />
            <br />
            <asp:Image ID="imgAdvisor" runat="server" ImageUrl="~/images/cross-icon.gif" />
            <asp:Label ID="Label1" runat="server" Text=" Advisor Approval"></asp:Label>
            <br />
            <br />
            <asp:Image ID="imgDept" runat="server" ImageUrl="~/images/cross-icon.gif" />
            <asp:Label ID="Label2" runat="server" Text=" Head of Dept. Approval"></asp:Label>
            <br />
            <br />
            <asp:Image ID="imgDean" runat="server" ImageUrl="~/images/cross-icon.gif" />
            <asp:Label ID="Label3" runat="server" Text=" Dean Approval"></asp:Label>
            <br />
            <br />
            <asp:Image ID="imgRecords" runat="server" ImageUrl="~/images/cross-icon.gif" />
            <asp:Label ID="Label4" runat="server" Text=" Records Office Finalized"></asp:Label>
            <br />
            <br />
            Advisor Email: <asp:Label id="email" runat="server" ReadOnly="True" DataField="advisorEmail"></asp:Label>
        </div>
        <br />
        <!--                                                                                         Jarrod Lee - 4/6/15 - Start -->
        <asp:Label ID="msg" runat="server" ReadOnly="True" Datafield="msg" Style="text-align:center"></asp:Label>
        <!--                                                                                         Jarrod Lee - 4/6/15 - Finish -->
        <br />
        <asp:Button ID="done" class="bluebutton donebutton" runat="server" Text="Log Off" Width="105px" Style="margin-top:10px;margin-left:52px" OnClick="done_Click" />
    </div>
</asp:Content>

