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
    public partial class AdministratorPage : System.Web.UI.Page
    {

        string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //((HtmlGenericControl)this.Page.Master.FindControl("accountLink")).Visible = false;
        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            string courseID = ddlCourse.SelectedValue;
            if (InsertCourseAttendance(courseID))
            {
                courseStatusTable.Visible = true;
                GetCourseAttendance(courseID);
            }
              
        }
        private bool InsertCourseAttendance(string courseID)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spInsertCourseAttendanceLog", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        con.Open();

                        int i = cmd.ExecuteNonQuery();

                        if (i > 0)
                        {
                            return true;
                        }         
                    }
                    
                }                
            }
                
            catch(SqlException)
            {

            }
            return false;

        }
        private void GetCourseAttendance(string courseID)
        {
            try
            {
                
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spGetCourseAttendanceLog", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();
                      
 
                            if (rd.Read())
                            {

                                Label date = new Label();
                                date.Text = rd[0].ToString();

                                Label noOfStudent = new Label();
                                noOfStudent.Text = rd[1].ToString();

                                HtmlTableRow row = new HtmlTableRow();

                                HtmlTableCell cell1 = new HtmlTableCell();
                                HtmlTableCell cell2 = new HtmlTableCell();

                                cell1.Controls.Add(date);
                                cell2.Controls.Add(noOfStudent);

                                //adding cells to row
                                row.Cells.Add(cell1);
                                row.Cells.Add(cell2);

                                //adding row to empTable
                                courseStatusTable.Rows.Add(row);
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

