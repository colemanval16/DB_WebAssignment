using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExercisesWEeek1
{
    public partial class Exercise1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //hidding the maind div
            main.Visible = false;

            // declaring string variable hobbies to store selected hobbies
            string hobbies = "<strong>Your hobbies are listed below: </strong>";
            // declaring string variable info to store all details
            string info = "<strong>Name: </strong>" + txtFirst.Text + " " + txtLast.Text + "<br/>" +
                "<strong>Email: </strong> " + txtEmail.Text + "<br/>" +
                "<strong>Phone: </strong>" + txtPhone.Text + "<br/>" +
                "<strong>Address: </strong>" + txtAddress.Text;

            for (int i = 0; i < chkLstHobbies.Items.Count; i++)
            {
                if (chkLstHobbies.Items[i].Selected)
                {

                    hobbies = "<br/>" + hobbies + chkLstHobbies.Items[i].Text;
                }         
            }
            Response.Write(info);
            Response.Write(hobbies);

        }
    }
}