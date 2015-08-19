using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StatusManagementExample
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["Name"];
            string age = Request.QueryString["Age"];

            Response.Write("Hello" +name+"<br />Your age is "+age);
        }
    }
}