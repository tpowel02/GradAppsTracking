using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class DB
{
    // database information

    private static SqlConnection GetConnection()
    {
        // database connection string

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