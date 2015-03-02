using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Upload : System.Web.UI.Page
{
    // upload page - deleting this page? 

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //---------------------------------------------------------------------------------------------

    protected void Button1_Click(object sender, EventArgs e)
    {
        // transfers to faculty main page - when finished will upload something to somewhere

        Server.Transfer("FacultyMain.aspx");
    }

    //---------------------------------------------------------------------------------------------

    protected void Button2_Click(object sender, EventArgs e)
    {
        // transfers to faculty main page

        Server.Transfer("FacultyMain.aspx");
    }
}