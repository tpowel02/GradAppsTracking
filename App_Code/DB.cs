using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public class DB
{
    // database information
    public static int g_id = 0;
    private static SqlConnection GetConnection()
    {
        // database connection string

        var connectionString = new SqlConnectionStringBuilder
        {
            //                                                                                     Jarrod Lee - 4/6/15 - Start
            DataSource = "74.117.171.101,1433",
            UserID = "TGACAPSTONE",
            Password = "TGA123"
            //                                                                                     Jarrod Lee - 4/6/15 - finish
        };

        var connection = new SqlConnection(connectionString.ToString());

        connection.Open();

        return connection;
    }
    public static int Login(string email, string password)
    {
        //                                                                                         Jarrod Lee - 4/6/15 - Start
        StringBuilder query = new StringBuilder();

        query.Append("SELECT * ");
        query.Append("FROM [TGA_Project].[dbo].[USERS] ");
        query.Append(String.Format("WHERE email = '{0}' AND password = '{1}'", email, password));

        DataTable table = new DataTable();

        using (SqlConnection conn = GetConnection())
        {
            using (SqlCommand command = new SqlCommand(query.ToString(), conn))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(query.ToString(), conn))
                {
                    adapter.Fill(table);
                    conn.Close();
                }
            }
        }

        foreach (DataRow row in table.Rows)
        {
            g_id = Convert.ToInt32(row[0]);
        }

        if (table.Rows.Count == 1)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    public static DataTable getInfo()
    {
        StringBuilder query = new StringBuilder();
        DataTable table = new DataTable();
        query.Append("SELECT (student.first_name+' '+student.last_name) AS Student_Name, "
                    +"grad_app.student_id, major.major_name, grad_app.date_submitted, grad_app.status, "
                    +"grad_app.advisor_approval, grad_app.dept_chair_approval, "
                    +"grad_app.dean_approval, grad_app.records_approval ");
        query.Append("FROM [TGA_Project].[dbo].[GRAD_APP]");
        query.Append("JOIN [TGA_Project].[dbo].[student] ON [student].[db_student_id] = [GRAD_APP].[STUDENT_ID]");
        query.Append("JOIN [TGA_Project].[dbo].[major] on [major].[major_id] = [grad_app].[major_id]");
        query.Append(String.Format("WHERE grad_app.student_id = {0}", g_id));

        using (SqlConnection conn = GetConnection())
        {
            using (SqlCommand command = new SqlCommand(query.ToString(), conn))
            {
                using (SqlDataAdapter adapter = new SqlDataAdapter(query.ToString(), conn))
                {
                    adapter.Fill(table);
                    conn.Close();
                }
            }
        }

        return table;
        //                                                                                         Jarrod Lee - 4/6/15 - Finish
    }
}