using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SessionExample
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Response.Write(Session.Count+"<br/>");
            Response.Write("Default time out for the session is : " + Session.Timeout + "</br>");
            //string name = (string)Session["Name"];
            //string age = (string)Session["Age"];
            //Response.Write("Your name is "+name+"<br/>Your age is : "+age);


            //or
            foreach(string key in Session.Keys)
            {
                Response.Write("Key is " +key +" and value is "+Session[key]+"<br/>");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}