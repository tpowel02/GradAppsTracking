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
        //                                                                                         Jarrod Lee - 4/6/15 - Start
        public string msg { get; set; }
        //                                                                                         Jarrod Lee - 4/6/15 - Finish
        public string   advisorApproval { get; set; }
        public string   deptApproval { get; set; }
        public string   deanApproval { get; set; }
        public string   recordsApproval { get; set; }


}