using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    // faculty login page

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //---------------------------------------------------------------------------------------------

    protected void Button1_Click(object sender, EventArgs e)
    {
        // transfers to faculty main - will eventually check database and transfer to the right page

        Server.Transfer("FacultyMain.aspx"); 
    }
}