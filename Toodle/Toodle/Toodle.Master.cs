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
             string accountType = (string)Session["accountType"];
            //when the page is loaded for the firsttime
            if (!IsPostBack)
            {
                if (firstname != null)
                {
                    lblName.Text = firstname + " " + lastname;
                    lblName.Visible = true;
                    loginBox.Visible = false;
                    if (accountType == "SA")
                    {
                        accountLink.Visible = true;
                        adminAccountLink.Visible = false;
                    }
                    if(accountType =="AA")
                    {
                        accountLink.Visible = false;
                        adminAccountLink.Visible = true;
                    }
                    

                }
                else
                {
                    accountLink.Visible = false;
                    adminAccountLink.Visible = false;


                }
                
            }
            else
            {
                accountLink.Visible = true;
                adminAccountLink.Visible = true;

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
                        string id = txtaccountID.Text;
                        string password = txtPassword.Text;

                        cmd.Parameters.AddWithValue("@accountID", id);
                        cmd.Parameters.AddWithValue("@password", password);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();


                        if (rd.Read())
                        {
                            string accountType = rd.GetValue(3).ToString();

                            if(accountType == "SA")
                            {
                                useraccount.Visible = true;
                                adminAccountLink.Visible = false;
                                accountLink.Visible = true;
                            }

                            if(accountType == "AA")
                            {
                                useraccount.Visible = true;
                                adminAccountLink.Visible = true;
                                accountLink.Visible = false;
                               
                            }
                            loginBox.Visible = false;
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('Welcome to Toodle')", true);
                           
                            lblName.Text = rd.GetValue(1).ToString() + " " + rd.GetValue(2).ToString();
                            Session.Add("firstName", rd.GetValue(1).ToString());
                            Session.Add("lastName", rd.GetValue(2).ToString());
                            Session.Add("accountID", rd.GetValue(0).ToString());
                            Session.Add("accountType", rd.GetValue(3).ToString());
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
