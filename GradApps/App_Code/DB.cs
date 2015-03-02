using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

public class DB
{
    private static SqlConnection GetConnection()
    {
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