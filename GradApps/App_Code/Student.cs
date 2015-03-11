using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Student
/// </summary>
public class Student
{

        public string name { get; set; }
		public string id { get; set; }
        public string major { get; set; }
        public string minor { get; set; }
        public string dateSubmitted { get; set; }
        public string status { get; set; }
        public bool   advisorApproval { get; set; }
        public bool   deptApproval { get; set; }
        public bool   deanApproval { get; set; }
        public bool   recordsApproval { get; set; }


}