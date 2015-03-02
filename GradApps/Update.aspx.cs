using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    // update application page

    Eval eval = new Eval();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    //---------------------------------------------------------------------------------------------

    protected void done_Click(object sender, EventArgs e)
    {
        // transfers to faculty main page - when finished will update changes to database

        Server.Transfer("FacultyMain.aspx");
    }

    //---------------------------------------------------------------------------------------------

    protected void cancel_Click(object sender, EventArgs e)
    {
        // transfers to faculty main page

        Server.Transfer("FacultyMain.aspx");

    }
}