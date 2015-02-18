<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentMain.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="styles/Main.css" rel="stylesheet" type="text/css" media="all" />
    <title>Tracking Queue</title>
    <style type="text/css">
        .Grid {}
    </style>
</head>
<body>
    <header><asp:image ImageUrl="images/logo.png" runat="server"></asp:image><asp:image ImageUrl="images/title.png" runat="server"></asp:image></header>
    <form id="form1" runat="server">
    <p>
        &nbsp;</p>
        <div class="queue">
            <div class="title">UAFS Graduation Application Tracking System</div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="709px" CssClass="Grid" AlternatingRowStyle-CssClass="alt" CellPadding="10"> 

            <AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
                <Columns>
                    <asp:BoundField HeaderText="Status" DataField="status" />
                    <asp:BoundField HeaderText="Date Submitted" DataField="dateSubmitted" />
                    <asp:BoundField HeaderText="Major" DataField="major" />
                    <asp:BoundField HeaderText="Student Name" DataField="studentName"/>
                    <asp:BoundField HeaderText="Advisor Name" DataField="advisor" />
                    <asp:BoundField HeaderText="Head of Dept. Name" DataField="deptHead" />
                    <asp:CheckBoxField HeaderText="Advisor Approval" DataField="advisorApproval" />
                    <asp:CheckBoxField HeaderText="Head of Dept. Approval" DataField="deptHeadApproval" />
                    <asp:CheckBoxField HeaderText="Dean Approval" DataField="deanApproval" />
                    <asp:CheckBoxField DataField="recordsApproval" HeaderText="Records Office Finalized" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#37598B" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <div class="clear"> </div>
            <br />
            <asp:Button class="bluebutton exitbutton" runat="server" Text="Exit" Width="95px" OnClick="Unnamed3_Click" />
        </div>
    </form>
    </body>
</html>