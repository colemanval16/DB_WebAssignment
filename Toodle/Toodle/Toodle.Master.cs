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
        public event EventHandler SignOutBtnClicked;
        string ToodleConnection = WebConfigurationManager.ConnectionStrings["ToodleDBart"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstname = (string)Session["firstName"];
            string lastname = (string)Session["lastName"];
            string accountType = (string)Session["accountType"];
            string accountID = (string)Session["accountID"];

            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('You have not enrolled this course')", true);
            //when the page is loaded for the firsttime
            if (!IsPostBack)
            {

                if (firstname != null)
                {
                    lblName.Text = firstname + " " + lastname;
                    lblName.Visible = true;
                    loginBox.Visible = false;
                    signOut.Visible = true;
                    if (accountType == "SA")
                    {
                        accountLink.Visible = true;
                        adminAccountLink.Visible = false;
                    }
                    if (accountType == "AA")
                    {
                        accountLink.Visible = false;
                        adminAccountLink.Visible = true;
                    }



                }
                else
                {
                    accountLink.Visible = false;
                    adminAccountLink.Visible = false;
                    mtaDBmenu.Visible = false;
                    signOut.Visible = false;
                }
            }
            else
            {
                //adminAccountLink.Visible = true;
                //mtaDBmenu.Visible = false;
            }

        }

        public List<String> IsCourseEnrolled(string accountID)
        {
            List<String> enrolledCourse = new List<String>();
            try
            {
                using (SqlConnection con = new SqlConnection(ToodleConnection))
                {
                    using (SqlCommand cmd = new SqlCommand("spCheckIfStudentEnrolledCourse", con))
                    {

                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@accountID", accountID);
                        con.Open();

                        SqlDataReader rd = cmd.ExecuteReader();


                        if (rd.Read())
                        {

                            enrolledCourse.Add(rd.GetValue(0).ToString());

                        }
                    }
                }
            }
            catch (SqlException)
            {

            }
            return enrolledCourse;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

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

                            if (accountType == "SA")
                            {
                                useraccount.Visible = true;
                                adminAccountLink.Visible = false;
                                accountLink.Visible = true;

                            }

                            if (accountType == "AA")
                            {
                                useraccount.Visible = true;
                                adminAccountLink.Visible = true;
                                accountLink.Visible = false;

                            }
                            loginBox.Visible = false;
                            signOut.Visible = true;
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "SignIn", "alert('Welcome to Toodle')", true);


                            lblName.Text = rd.GetValue(1).ToString() + " " + rd.GetValue(2).ToString();
                            Session.Add("firstName", rd.GetValue(1).ToString());
                            Session.Add("lastName", rd.GetValue(2).ToString());
                            Session.Add("accountID", rd.GetValue(0).ToString());
                            Session.Add("accountType", rd.GetValue(3).ToString());

                            List<String> enrolledCourse = IsCourseEnrolled(rd.GetValue(0).ToString());
                            foreach (string course in enrolledCourse)
                            {
                                if (course == "MTA01")
                                {
                                    mtaDBmenu.Visible = true;

                                }
                            }
                        }
                        else
                        {
                            mtaDBmenu.Visible = false;
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

        protected void signOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            loginBox.Visible = true;
            useraccount.Visible = false;
            accountLink.Visible = false;
            adminAccountLink.Visible = false;
            

            string currentUrl = HttpContext.Current.Request.Url.LocalPath;

            if (currentUrl.EndsWith("MTAMain.aspx") || currentUrl.EndsWith("/"))
            {
                SignOutBtnClicked(sender, e);
            }

            
        }


    }
}

