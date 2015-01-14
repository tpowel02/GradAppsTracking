using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void done_Click(object sender, EventArgs e)
    {
        Server.Transfer("FacultyMain.aspx");
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        Server.Transfer("FacultyMain.aspx");
    }
}