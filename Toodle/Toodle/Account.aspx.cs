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
        string accountID;
        protected void Page_Load(object sender, EventArgs e)
        {
            accountID = (string)Session["accountID"];
            if (accountID != null)

            {
                getStudentInfo();
                getStudentCourseInfo();
            }
           
            
        }

        private void getStudentInfo()
        {
            try
            {
                string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDB"].ConnectionString;
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spGetStudentAccountInfo", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;


                        cmd.Parameters.AddWithValue("@accountID", int.Parse(accountID));
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();

                        if (rd.Read())
                        {
                            lblDBStudentID.Text = rd.GetValue(0).ToString();
                            lblDBName.Text = rd.GetValue(1).ToString() + " " + rd.GetValue(2).ToString();
                            lblDBEmail.Text = rd.GetValue(3).ToString();
                            
                        }
                    }
                }

            }
            catch (SqlException)
            {

            }
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


                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();
                      
 
                            if (rd.Read())
                            {
                                courseInformationTable.Visible = true;
                                noCourseEnrolled.Visible = false;

                                Label courseID = new Label();
                                courseID.Text = rd[0].ToString();

                                Label startDate = new Label();
                                startDate.Text = rd[1].ToString();

                                Label endDate = new Label();
                                endDate.Text = rd[2].ToString();

                                Label courseStatus = new Label();
                                courseStatus.Text = rd[3].ToString();

                                HtmlTableRow row = new HtmlTableRow();

                                HtmlTableCell cell1 = new HtmlTableCell();
                                HtmlTableCell cell2 = new HtmlTableCell();
                                HtmlTableCell cell3 = new HtmlTableCell();
                                HtmlTableCell cell4 = new HtmlTableCell();

                                cell1.Controls.Add(courseID);
                                cell2.Controls.Add(startDate);
                                cell3.Controls.Add(endDate);
                                cell4.Controls.Add(courseStatus);

                                //adding cells to row
                                row.Cells.Add(cell1);
                                row.Cells.Add(cell2);
                                row.Cells.Add(cell3);
                                row.Cells.Add(cell4);

                                //adding row to empTable
                                courseInformationTable.Rows.Add(row);
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
