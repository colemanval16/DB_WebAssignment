

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Toodle
{
     public partial class DatabaseFundamentals : System.Web.UI.Page
    {
        string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDBart"].ConnectionString;
        static string courseStatus = "";
        string courseID = "MTA01";
        static string accountID = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            nestedTabbedMenu.FindItem("0").Selected = true;

            accountID = (string)Session["accountID"];
            if (accountID != null)
            {              
                   courseStatus = CheckCourseStatus(accountID, courseID);
                   
                if (courseStatus != "")
                {
                    if(courseStatus == "Added")
                    {
                        if(ChangeCourseStatus(accountID, "Progress", courseID))
                        {
                            courseStatus = "Progress";
                            btnCourseContentComplete.Visible = true;
                        }                                         
                    }
                    else if (courseStatus == "Revision")
                    {
                        btnCourseContentComplete.Visible = false;
                        btnTutorialsComplete.Visible = true;
                    }
                    else if (courseStatus == "MockExam")
                    {
                        btnCourseContentComplete.Visible = false;
                        btnTutorialsComplete.Visible = false;
                        btnMockExam1.Visible = true;
                    }
                    Session.Add("courseStatus", courseStatus);
                }              
            }
        }
        protected void nestedTabbedMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            mvTabs2.ActiveViewIndex = int.Parse(nestedTabbedMenu.SelectedItem.Value);

        }

        protected void btnTutorialsComplete_Click(object sender, EventArgs e)
        {
            if (ChangeCourseStatus(accountID, "MockExam", courseID))
            {
                btnTutorialsComplete.Visible = false;
                btnMockExam1.Visible = true;
                //btnMockExam1.Enabled = false;
            }
        }

        protected void btnCourseContentComplete_Click(object sender, EventArgs e)
        {
            if (ChangeCourseStatus(accountID, "Revision", courseID))
            {
                btnTutorialsComplete.Visible = true;
                //btnTutorialsComplete.Enabled = false;
            }
        }
        
        protected void btnMockExam1_Click(object sender, EventArgs e)
        {
            try
            {

                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spInsertMockExamResult", con))
                    {
                        //getting result for Mock Exam
                        int result = MockResult();

                        string courseID = (string)Session["courseID"];
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@date", DateTime.Now.Date);
                        cmd.Parameters.AddWithValue("@result", result);
                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        con.Open();

                        int i = cmd.ExecuteNonQuery();

                        if (i > 0)
                        {
                           
                        }

                    }
                }

            }
            catch (SqlException)
            {

            }
        }

        public int MockResult()
        {
 
            int result = 0;

            if (rdMock1.SelectedItem.Value == "2")
            {
                result++;
            }
            if (rdMock2.SelectedItem.Value.ToString() == "1")
            {
                result++;
            }
            if (rdMock3.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock4.SelectedItem.Value.ToString() == "1")
            {
                result++;
            }
            if (rdMock5.SelectedItem.Value.ToString() == "3")
            {
                result++;
            }
            if (rdMock6.SelectedItem.Value.ToString() == "3")
            {
                result++;
            }
            if (rdMock7.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock8.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock9.SelectedItem.Value.ToString() == "4")
            {
                result++;
            }
            if (rdMock10.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock11.SelectedItem.Value.ToString() == "4")
            {
                result++;
            }
            if (rdMock12.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock13.SelectedItem.Value.ToString() == "3")
            {
                result++;
            }
            if (rdMock14.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock15.SelectedItem.Value.ToString() == "4")
            {
                result++;
            }
            if (rdMock16.SelectedItem.Value.ToString() == "2")
            {
                result++;
            }
            if (rdMock17.SelectedItem.Value.ToString() == "4")
            {
                result++;
            }
            if (rdMock18.SelectedItem.Value.ToString() == "1")
            {
                result++;
            }
            if (rdMock19.SelectedItem.Value.ToString() == "1")
            {
                result++;
            }
            if (rdMock20.SelectedItem.Value.ToString() == "4")
            {
                result++;
            }

            return result;
        }

        protected string CheckCourseStatus(string accountID, string courseID)
        {
            string courseStatus = "";
            try
            {
                using (SqlConnection conn = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spCheckCourseStatus", conn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        conn.Open();
                        courseStatus = (String)cmd.ExecuteScalar();
                    }
                }
            }
            catch (SqlException)
            {

            }
            return courseStatus;
        }
        protected bool ChangeCourseStatus(string accountID, string courseStatusID, string courseID)
        {
            bool value = false;
            try
            {
                using (SqlConnection conn = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spUpdateStudentCourseStatus", conn))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        cmd.Parameters.AddWithValue("@courseStatusID", courseStatusID);
                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        conn.Open();
                        int num = (Int32)cmd.ExecuteNonQuery();
                        if (num > 0)
                        {
                            value = true;
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine(ex.Message);//throw;
            }
            return value;
        }

    }
}