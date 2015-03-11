<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="FacultyMain.aspx.cs" Inherits="_Default" %>



<asp:Content ContentPlaceHolderID="Main" runat="server">
    <!-- view - faculty main -->
    <p>&nbsp;</p>
        <div class="queue">
            <div class="title">UAFS Graduation Application Tracking System</div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Width="697px" CssClass="Grid" AlternatingRowStyle-CssClass="alt" AutoGenerateSelectButton="True" ShowFooter="True" CellPadding="2"> 

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
                    <asp:BoundField DataField="degreeEval" HeaderText="Degree Evaluation" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#37598B" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="White" Wrap="True" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <div class="clear"> </div>
            <br />
            <asp:Button class="bluebutton newbutton" runat="server" Text="New" Width="95px" OnClick="Unnamed3_Click" />
            <asp:Button class="bluebutton editbutton" runat="server" Text="Edit" Width="95px" OnClick="Unnamed2_Click" />
            <asp:Button class="bluebutton deletebutton" runat="server" Text="Delete" Width="95px" />
            <asp:Button class="bluebutton viewbutton" runat="server" Text="View" Width="95px" OnClick="Unnamed6_Click" />
            <asp:Button class="bluebutton uploadbutton" runat="server" Text="Upload" Width="100px" ID="Button1" OnClick="Button1_Click" />
            <asp:Button class="bluebutton exitbutton" runat="server" Text="Exit" Width="95px" OnClick="Unnamed7_Click" />
        </div>
    </asp:Content>