using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class Account : System.Web.UI.Page
    {
        string studentID;
        protected void Page_Load(object sender, EventArgs e)
        {
            studentID = (string)Session["studentID"];
            if (studentID != null)

            {
                getStudentInfo();
                getStudentCourseInfo();
            }
           
            
        }

        private void getStudentInfo()
        {
            lblDBStudentID.Text = studentID.ToString();
        }
        private void getStudentCourseInfo()
        {
             try
            {
                string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDB"].ConnectionString;
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spGetStudentCourseInformation", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@studentID", int.Parse(studentID));
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();
                      
 
                            if (rd.Read())
                            {
                                courseInformationTable.Visible = true;
                                noCourseEnrolled.Visible = false;
                            }
                            else
                            {
                                courseInformationTable.Visible = false;
                                noCourseEnrolled.Visible = true;
                            }
                    }
                }

            }
            catch (SqlException)
            {

            }
        }

        }
    }
