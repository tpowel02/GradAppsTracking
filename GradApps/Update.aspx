﻿<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="Default2" %>



<asp:Content ContentPlaceHolderID="Main" runat="server">
    <!-- form - update application -->
    <div class="update">
        <div class="title">Update Student Record</div>
        <br />
         <div class="container1" style="width: 256px">
            <asp:Label ID="Label7" runat="server" Text="Student: "></asp:Label>
            <asp:TextBox ID="name" runat="server" Width="160px" Text="Trent Powell"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Major: "></asp:Label>
            <asp:TextBox ID="major" runat="server" Width="160px" Text="Programming"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Advisor: "></asp:Label>
            <asp:TextBox ID="advisor" runat="server" Width="160px" Text="Donna Wright"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="Dept Head: "></asp:Label>
            <asp:TextBox ID="head" runat="server" Width="160px" Text ="Rick Massengale"></asp:TextBox>
            <br />
        </div>
        <div class="clear"> </div>
        <br />
        <div class="container2">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Advisor Approval" Checked ="True" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Dept. Head Approval" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Dean Approval" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox5" runat="server" Text="Records Finalized" />
        </div>
        <div class="clear"> </div>
        <div class="container3">
            <br />
            <asp:Label ID="Label10" runat="server" Text="Current Status: "></asp:Label>
            <asp:TextBox ID="name2" runat="server" Width="93px"></asp:TextBox>
            <br />
        </div>
        <br />
        <asp:Button ID="done" class="bluebutton donebutton" runat="server" Text="Done" Width="95px" OnClick="done_Click" />
        <asp:Button ID="cancel" class="bluebutton cancelbutton" runat="server" Text="Cancel" Width="95px" OnClick="cancel_Click" />
    </div>
</asp:Content>