<%@ Page Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Upload.aspx.cs" Inherits="Upload" %>

<asp:Content ContentPlaceHolderID="Main" runat="server">
       
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
</asp:Content>
