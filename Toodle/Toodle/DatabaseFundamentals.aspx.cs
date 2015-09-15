

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
using System.Web.UI.HtmlControls;

namespace Toodle
{
     public partial class DatabaseFundamentals : System.Web.UI.Page
    {
         string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDBart"].ConnectionString;
    
         string accountID;
         string courseID = "MTA01";
         string studentCourseID;
         string courseStatus = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //(this.Master as Toodle).SignOutBtnClicked += new EventHandler(child_SignOutBtnClicked);
            accountID = (string)Session["accountID"]; 
            nestedTabbedMenu.FindItem("0").Selected = true;
            getStudentCourseId();
            GetMockExamHistory();

            
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

        void child_SignOutBtnClicked(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
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
        
        private void GetMockExamHistory()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spGetMockExamHistory", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@studentCourseID", studentCourseID);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();


                        if (rd.Read())
                        {
                            while(rd.Read())
                            {
                                Label date = new Label();
                                date.Text = rd[0].ToString();

                                Label result = new Label();
                                result.Text = rd[1].ToString();

                                HtmlTableRow row = new HtmlTableRow();

                                HtmlTableCell cell1 = new HtmlTableCell();
                                HtmlTableCell cell2 = new HtmlTableCell();

                                cell1.Controls.Add(date);
                                cell2.Controls.Add(result);

                                row.Cells.Add(cell1);
                                row.Cells.Add(cell2);

                                courseInformationTable.Rows.Add(row);
                            }                       
                        }
                    }
                }
            }
            catch (SqlException)
            {

                }
        }
        private void getStudentCourseId()
        {
              try
            {
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spStudentCourseID", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        con.Open();


                         SqlDataReader rd = cmd.ExecuteReader();


                        if (rd.Read())
                        {
                            studentCourseID = rd.GetValue(0).ToString();
                        }

                    }
                }

            }
            catch (SqlException)
            {

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

                        //string courseID = (string)Session["courseID"];
                        cmd.CommandType = CommandType.StoredProcedure;

                        //mockexamresultid
                        cmd.Parameters.AddWithValue("@result", result);
                        cmd.Parameters.AddWithValue("@studentCourseID", studentCourseID);
                        con.Open();

                        int i = cmd.ExecuteNonQuery();

                        if (i > 0)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('Please click in progress bar to check mock exam history')", true);
                            clearMockExamSelection(result);
                        }

                    }
                }

            }
            catch (SqlException)
            {

            }
        }


        private void clearMockExamSelection(int result)
        {
            //clearing the answers
            rdMock1.ClearSelection();
            rdMock2.ClearSelection();
            rdMock3.ClearSelection();
            rdMock4.ClearSelection();
            rdMock5.ClearSelection();
            rdMock6.ClearSelection();
            rdMock7.ClearSelection();
            rdMock8.ClearSelection();
            rdMock9.ClearSelection();
            rdMock10.ClearSelection();
            rdMock11.ClearSelection();
            rdMock12.ClearSelection();
            rdMock13.ClearSelection();
            rdMock14.ClearSelection();
            rdMock15.ClearSelection();
            rdMock16.ClearSelection();
            rdMock17.ClearSelection();
            rdMock18.ClearSelection();
            rdMock19.ClearSelection();
            rdMock20.ClearSelection();

            lblShowResults.Text = "Your score on this attempt was: " + result;
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