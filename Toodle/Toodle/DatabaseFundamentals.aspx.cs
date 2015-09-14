

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
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('hello')", true);
            nestedTabbedMenu.FindItem("0").Selected = true;

            string conntoodleDB = WebConfigurationManager.ConnectionStrings["ToodleDBVal"].ConnectionString;
            conn = new SqlConnection(conntoodleDB);
        }
        protected void nestedTabbedMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            mvTabs2.ActiveViewIndex = int.Parse(nestedTabbedMenu.SelectedItem.Value);

            //OR:
            //int index = Int32.Parse(e.Item.Value);
            //mvTabs2.ActiveViewIndex = index;
        }


        protected void btnCourseContentComplete_Click1(object sender, EventArgs e)
        {
            //courseRevisionID.Visible = true;
        }

        protected void btnTutorialsComplete_Click(object sender, EventArgs e)
        {
            try
            {

            }
            catch (Exception)
            {
                
              
            }
        }

        protected void btnCourseContentComplete_Click(object sender, EventArgs e)
        {
            try
            {

                using (SqlCommand cmd = new SqlCommand("spInsertMockExamReulst", conn))
                    {
                        int dataRows = 0;
                        cmd.CommandType = CommandType.StoredProcedure;
                        int result = MockResult();
                        //how to create an individual id
                        string mockId = "insert MockResult ID here";
                        //where can I pull the courseId from?
                        int courseID = 0;

                        cmd.Parameters.AddWithValue("@id", mockId);
                        cmd.Parameters.AddWithValue("@studentCourseID", courseID);
                        cmd.Parameters.AddWithValue("@result", result);
                        cmd.Parameters.AddWithValue("@date", DateTime.Now.Date);
                        conn.Open();

                        using (conn)
                        {
                            conn.Open();
                            dataRows = cmd.ExecuteNonQuery();
                            if (dataRows > 0)
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

                                //lblShowResult.Text = "Your score on this attempt was: " + result;
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
            //adding correct answers to this variable
            int result = 0;

            /*If correct answer is selected then count is incremented otherwise question and answer 
             are added to the wrongAns sortedList*/
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

    }
}