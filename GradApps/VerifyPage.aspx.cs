using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    private BindingList<Eval> _list = new BindingList<Eval>();
    protected void Page_Load(object sender, EventArgs e)
    {
        Eval eval = new Eval();
        eval.id="@00228342";
        eval.major = "IT: Programming";
        eval.minor = "N/A";
        eval.gpa = "3.14";
        eval.gpaMajor = "3.33";
        eval.gpaMinor = "N/A";
        eval.totalHours = "132";
        eval.totalHoursRequired = "124";
        eval.upperLevelHours = "54";
        eval.lowerLevelHours = "22";
        eval.percentHoursResidence = "yes";
        eval.hoursResidence = "yes";
        eval.dHours = "12";

        _list.Add(eval);

        eval = new Eval();

        eval.id = "@00166776";
        eval.major = "IT: Networking";
        eval.minor = "Philosophy";
        eval.gpa = "3.25";
        eval.gpaMajor = "3.21";
        eval.gpaMinor = "N/A";
        eval.totalHours = "144";
        eval.totalHoursRequired = "148";
        eval.upperLevelHours = "54";
        eval.lowerLevelHours = "22";
        eval.percentHoursResidence = "yes";
        eval.hoursResidence = "yes";
        eval.dHours = "12";

        _list.Add(eval);

        eval = new Eval();

        eval.id = "@00125446";
        eval.major = "IT: Database";
        eval.minor = "N/A";
        eval.gpa = "3.21";
        eval.gpaMajor = "3.00";
        eval.gpaMinor = "N/A";
        eval.totalHours = "124";
        eval.totalHoursRequired = "124";
        eval.upperLevelHours = "54";
        eval.lowerLevelHours = "22";
        eval.percentHoursResidence = "yes";
        eval.hoursResidence = "yes";
        eval.dHours = "12";

        _list.Add(eval);

        eval = new Eval();

        eval.id = "@00228776";
        eval.major = "IT: Web Development";
        eval.minor = "Philosophy";
        eval.gpa = "3.09";
        eval.gpaMajor = "2.98";
        eval.gpaMinor = "3.20";
        eval.totalHours = "156";
        eval.totalHoursRequired = "132";
        eval.upperLevelHours = "54";
        eval.lowerLevelHours = "22";
        eval.percentHoursResidence = "no";
        eval.hoursResidence = "yes";
        eval.dHours = "12";

        _list.Add(eval);

        eval = new Eval();

        eval.id = "@00335674";
        eval.major = "IT:Programming";
        eval.minor = "N/A";
        eval.gpa = "2.81";
        eval.gpaMajor = "3.10";
        eval.gpaMinor = "N/A";
        eval.totalHours = "130";
        eval.totalHoursRequired = "132";
        eval.upperLevelHours = "54";
        eval.lowerLevelHours = "22";
        eval.percentHoursResidence = "yes";
        eval.hoursResidence = "no";
        eval.dHours = "12";

        _list.Add(eval);

        loadStudent();
    }

    private void loadStudent()
    {
        Random rnd = new Random();
        Eval eval = new Eval();

        eval = _list[rnd.Next(1,5)];

        id.Text = eval.id;
        major.Text = eval.major;
        minor.Text = eval.minor;
        gpa.Text = eval.gpa;
        gpaMajor.Text = eval.gpaMajor;
        gpaMinor.Text = eval.gpaMinor;
        totalHours.Text = eval.totalHours;
        totalHoursRequired.Text = eval.totalHoursRequired;
        upperLevelHours.Text = eval.upperLevelHours;
        lowerLevelHours.Text = eval.lowerLevelHours;
        percentHoursResidence.Text = eval.percentHoursResidence;
        hoursResidence.Text = eval.hoursResidence;
        dHours.Text = eval.dHours;
    }
    protected void done_Click(object sender, EventArgs e)
    {
        Server.Transfer("FacultyMain.aspx");
    }
}