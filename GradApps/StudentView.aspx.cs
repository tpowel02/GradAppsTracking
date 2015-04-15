using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentView : System.Web.UI.Page
{
    private BindingList<Student> _list = new BindingList<Student>();

    protected void Page_Load(object sender, EventArgs e)
    {
        //                                                                                         Jarrod Lee - 4/6/15 - start
        DataTable dt = new DataTable();
        Student student = new Student();
        dt = DB.getInfo();
        foreach (DataRow row in dt.Rows)
        {

            student.name            = row[0].ToString();
            student.id              = row[1].ToString();
            student.major           = row[2].ToString();
            student.dateSubmitted   = row[3].ToString();
            student.status          = row[4].ToString();
            student.advisorApproval = row[5].ToString();
            student.deptApproval    = row[6].ToString();
            student.deanApproval    = row[7].ToString();
            student.recordsApproval = row[8].ToString();
            student.advisorEmail    = row[9].ToString();
            student.msg             = " ";
        }
        _list.Add(student);

        loadStudent();
         
    }

    private void loadStudent()
    {
        Student student = new Student();
        student = _list[0];

        if (student.name == null)
        {
            student.msg = "<font color='red'>~ Application Not Submitted ~</font>";
            msg.Text = student.msg;
        } 
        else if (DB.g_id == 0)
        {
            student.msg = "<font color='red'>* * * * * Not Logged In * * * * *</font>";
            msg.Text = student.msg;
        }
        else
        {
            student.msg = "";
            msg.Text = student.msg;
        }

        name.Text = student.name;
        id.Text = student.id;
        major.Text = student.major;
        dateSubmitted.Text = student.dateSubmitted;
        status.Text = student.status;
        email.Text = student.advisorEmail;
        msg.Text = student.msg;

        if (student.advisorApproval == "Y")
            imgAdvisor.ImageUrl = "images/tick-icon.gif";
        if (student.deptApproval == "Y")
            imgDept.ImageUrl = "images/tick-icon.gif";
        if (student.deanApproval == "Y")
            imgDean.ImageUrl = "images/tick-icon.gif";
        if (student.recordsApproval == "Y")
            imgRecords.ImageUrl = "images/tick-icon.gif";
       
    }
    protected void done_Click(object sender, EventArgs e)
    {
        Server.Transfer("StudentLogin.aspx");
    }
    //                                                                                             Jarrod Lee - 4/6/15 - Finish
}