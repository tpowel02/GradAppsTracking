using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

public partial class StudentLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        //                                                                                         Jarrod Lee - 4/6/15 - Start
        int result;

        result = DB.Login(Text1.Value, Password1.Value);

        if (result == 0)
        {
            MessageBox.Show("Login Failed. One or More Specified Fields is Incorrect.", "Login Failed, Please Try Again", MessageBoxButtons.OK);
        }
        else if (result == 1)
        {
            Server.Transfer("StudentView.aspx");
        }
        //                                                                                         Jarrod Lee - 4/6/15 - Finish
    }
}