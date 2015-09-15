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
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}