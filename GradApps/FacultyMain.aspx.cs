using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

        dt.Columns.AddRange(new DataColumn[11] { new DataColumn("Status"), new DataColumn("degreeEval"),  new DataColumn("dateSubmitted"), new DataColumn("Major"), new DataColumn("studentName"), 
            new DataColumn("advisor"), new DataColumn("deptHead"), new DataColumn("advisorApproval"), new DataColumn("deptHeadApproval"), 
            new DataColumn("deanApproval"), new DataColumn("recordsApproval")});
        
        dt.Rows.Add("Pending", "Not Uploaded", DateTime.Now, "IT Programming", "Trent Powell", "Donna Wright", "Rick Massengale", true, false, false, true);
        dt.Rows.Add("Pending", "Not Uploaded", DateTime.Now, "IT Database", "Michael Samuhasilp", "Janet Renwick", "Rick Massengale", true, false, false);
        dt.Rows.Add("Complete",  "Uploaded", DateTime.Now, "IT Networking", "Andrew Yang", "Donna Wright", "Rick Massengale", true, true, true, true);
        dt.Rows.Add("Complete", "Uploaded", DateTime.Now, "IT Programming", "Philip Gammill", "JoAnna Chandler", "Rick Massengale", true, true, true, true);

        /*dt.Columns.AddRange(new DataColumn[10] { new DataColumn("Status"), new DataColumn("dateSubmitted"), 
            new DataColumn("Major"), new DataColumn("studentName"), new DataColumn("advisor"), 
            new DataColumn("deptHead"), new DataColumn("advisorApproval"), new DataColumn("deptHeadApproval"), 
            new DataColumn("deanApproval"), new DataColumn("recordsApproval")});

        dt.Rows.Add("Pending", DateTime.Now, "IT Programming", "Trent Powell", "Donna Wright", "Rick Massengale", true, false, false, true);
        dt.Rows.Add("Pending", DateTime.Now, "IT Database", "Michael Samuhasilp", "Janet Renwick", "Rick Massengale", true, false, false);
        dt.Rows.Add("Complete", DateTime.Now, "IT Networking", "Andrew Yang", "Donna Wright", "Rick Massengale", true, true, true, true);
        dt.Rows.Add("Complete", DateTime.Now, "IT Programming", "Philip Gammill", "JoAnna Chandler", "Rick Massengale", true, true, true, true); */
        


        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("#A1DCF2");
                row.ToolTip = string.Empty;
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                row.ToolTip = "Click to select this row.";
            }
        }
    }
    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        Server.Transfer("Update.aspx");
        //Session["Item"] = _list[list.SelectedIndex];
        //Response.Redirect("Update.aspx");
    }
    protected void Unnamed7_Click(object sender, EventArgs e)
    {
        Server.Transfer("FacultyLogin.aspx");
    }
    protected void Unnamed6_Click(object sender, EventArgs e)
    {
        Server.Transfer("VerifyPage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("Upload.aspx");
    }
    protected void Unnamed3_Click(object sender, EventArgs e)
    {
        Server.Transfer("New.aspx");
    }
}