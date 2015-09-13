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
    public partial class Toodle : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstname = (string)Session["firstName"];
            string lastname = (string)Session["lastName"];

            //when the page is loaded for the firsttime
            if (!IsPostBack)
            {
                if (firstname != null)
                {
                    accountLink.Visible = true;
                    lblName.Text = firstname + " " + lastname;
                    lblName.Visible = true;
                    loginBox.Visible = false;
                    accountLink.Visible = true;

                }
                else
                {
                    accountLink.Visible = false;
                }
                
            }
            else
            {
                accountLink.Visible = true;

            }

                
            

           
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

                        cmd.Parameters.AddWithValue("@studentID", id);
                        cmd.Parameters.AddWithValue("@password", password);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();
                      
 
                            if (rd.Read())
                            {
                                //txtPassword.Text = "";
                                //txtStudentID.Text = "";
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('Welcome to Toodle')", true);
                                useraccount.Visible = true;
                                loginBox.Visible = false;
                                lblName.Text = rd.GetValue(0).ToString()+" "+ rd.GetValue(1).ToString();
                                //Session.Add();
                                Session.Add("firstName", rd.GetValue(0).ToString());
                                Session.Add("lastName", rd.GetValue(1).ToString());
                                Session.Add("studentID", rd.GetValue(2).ToString());
                            }
                            else
                            {
                                useraccount.Visible = false;
                                loginBox.Visible = true;
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('Login Failed')", true);
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
