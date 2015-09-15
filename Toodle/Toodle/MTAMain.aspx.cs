using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class MTAMain : System.Web.UI.Page
    {
        string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDB"].ConnectionString;

        void child_MyButtonClicked(object sender, EventArgs e)
        {
            btnAddDBFund.Text = "aaaa";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            string accountID = (string)Session["accountID"];
            if (accountID != null)
            {
                Toodle toodle = new Toodle();

                List<String> enrolledCourse = toodle.IsCourseEnrolled(accountID);
                foreach (string course in enrolledCourse)
                {
                    if (course == "MTA01")
                    {
                        btnAddDBFund.Attributes.Add("style", "background-color:red");
                        btnAddDBFund.Text = "Added";
                        btnAddDBFund.Enabled = false;
                        btnStartDBFund.Visible = true;

                    }
                }
            }

            (this.Master as Toodle).MyButtonClicked += new EventHandler(child_MyButtonClicked);

        }

        protected void btnStartDBFund_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseFundamentals.aspx");
            
        }

        protected void btnAddDBFund_Click(object sender, EventArgs e)
        {
            try
            {

                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spStudentRegisterCourse", con))
                    {
                        string courseID = "MTA01";
                        string accountID = (string)Session["accountID"];
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        cmd.Parameters.AddWithValue("@courseID", courseID);
                        con.Open();

                        int i = cmd.ExecuteNonQuery();


                        if (i>0)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Added Course", "alert('Course added')", true);
                        }
                    }
                }

            }
            catch (SqlException)
            {

            }
        }

        protected void btnStartDBFund_Click1(object sender, EventArgs e)
        {
            Response.Redirect("DatabaseFundamentals.aspx");
        }
    }
}