using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentView : System.Web.UI.Page
{
    private BindingList<Student> _list = new BindingList<Student>();

    protected void Page_Load(object sender, EventArgs e)
    {
        //For testing purposes. Adds students to student class.
        Student student = new Student();
        student.name = "Katie Tran";
        student.id = "@12345678";
        student.major = "Computer Programming";
        student.minor = "Studio Art";
        student.dateSubmitted = "3/14/2015";
        student.status = "Not Approved";
        student.advisorApproval = true;
        student.deptApproval = true;
        student.deanApproval = false;
        student.recordsApproval = false;

        _list.Add(student);

        student = new Student();
        student.name = "Terry Gross";
        student.id = "@12349999";
        student.major = "Communications";
        student.minor = "None";
        student.dateSubmitted = "3/14/2015";
        student.status = "Not Approved";
        student.advisorApproval = false;
        student.deptApproval = false;
        student.deanApproval = false;
        student.recordsApproval = false;

        _list.Add(student);

        student = new Student();
        student.name = "Scott Smith";
        student.id = "@98765432";
        student.major = "Philosophy";
        student.minor = "Spanish";
        student.dateSubmitted = "3/14/2014";
        student.status = "Approved";
        student.advisorApproval = true;
        student.deptApproval = true;
        student.deanApproval = true;
        student.recordsApproval = true;

        _list.Add(student);

        loadStudent();
    }

    private void loadStudent()
    {
        //For testing purposes. Randomly loads a student.

        Random rnd = new Random();
        Student student = new Student();

        student = _list[rnd.Next(0, 3)];

        name.Text = student.name;
        id.Text = student.id;
        major.Text = student.major;
        //minor.Text = student.minor;
        dateSubmitted.Text = student.dateSubmitted;
        status.Text = student.status;

        if (student.advisorApproval == true)
            imgAdvisor.ImageUrl = "~/images/tick-icon.gif";
        if (student.deptApproval == true)
            imgDept.ImageUrl = "~/images/tick-icon.gif";
        if (student.deanApproval == true)
            imgDean.ImageUrl = "~/images/tick-icon.gif";
        if (student.recordsApproval == true)
            imgRecords.ImageUrl = "~/images/tick-icon.gif";

    }
    protected void done_Click(object sender, EventArgs e)
    {
        Server.Transfer("StudentLogin.aspx");
    }
}