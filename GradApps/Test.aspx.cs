using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Test : System.Web.UI.Page
{
    // test connection string page

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    //---------------------------------------------------------------------------------------------

    private static SqlConnection GetConnection()
    {
        // test connection to database

        var connectionString = new SqlConnectionStringBuilder
        {
            DataSource = "",
            UserID = "",
            Password = ""
        };

        var connection = new SqlConnection(connectionString.ToString());

        connection.Open();

        return connection;
    }


}