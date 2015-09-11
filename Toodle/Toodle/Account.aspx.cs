using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imageDiv.Visible = false;
            string name = (string)Session["name"];

            if(name == null)
            {
                 ifLogIn.Visible = false;
                imageDiv.Visible = true;
                
                ////lblid.Text = "Your student id is " + name;
                //Image myImg = new Image();
                //myImg.ImageUrl = "Images/lock.png";
                //myImg.Visible = true;

                //var h1 = new HtmlGenericControl("h1");
                //h1.InnerHtml = "Please Sign in";

                //imageDiv.Controls.Add(myImg);
                //imageDiv.Controls.Add(h1);
            }
            
        }
    }
}