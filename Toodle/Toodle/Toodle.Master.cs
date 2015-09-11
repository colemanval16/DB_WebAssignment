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
    public partial class Toodle : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDB"].ConnectionString;
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spLogIn", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;
                        int id = 0;
                        bool a = Int32.TryParse(txtStudentID.Text, out id);
                        string password = txtPassword.Text;
                        ////int id = Convert.ToInt32(txtStudentID.Text);
                        //SqlParameter idParam = new SqlParameter("@studentID", SqlDbType.Int);
                        //idParam.Value = a;
                        //cmd.Parameters.Add(idParam);

                        //SqlParameter passwrodParam = new SqlParameter("@password", SqlDbType.VarChar);
                        //passwrodParam.Value = password;
                        //cmd.Parameters.Add(passwrodParam);
                        cmd.Parameters.AddWithValue("@studentID", id);
                        cmd.Parameters.AddWithValue("@password", password);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();
                        txtPassword.Text = "connected";
 
                            if (rd.Read())
                            {
                                txtPassword.Text = "";
                                txtStudentID.Text = "";
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "aaa", "alert('LOGIN OK')", true);
                                useraccount.Visible = true;
                                loginBox.Visible = false;
                                lblName.Text = "Hello " +rd.GetValue(0).ToString();
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "aaa", "alert('LOGIN fail')", true);
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
