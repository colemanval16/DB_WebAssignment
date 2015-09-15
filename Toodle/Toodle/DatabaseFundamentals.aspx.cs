

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
         string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDBVal"].ConnectionString;
   
        protected void Page_Load(object sender, EventArgs e)
        {
            nestedTabbedMenu.FindItem("0").Selected = true;

        }
        protected void nestedTabbedMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            mvTabs2.ActiveViewIndex = int.Parse(nestedTabbedMenu.SelectedItem.Value);

            //OR:
            //int index = Int32.Parse(e.Item.Value);
            //mvTabs2.ActiveViewIndex = index;
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

    }
}