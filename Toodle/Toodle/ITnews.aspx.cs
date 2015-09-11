using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class ITnews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //loginBox.Visible = false;
            string name = (string)Session["name"];
            if (name != null)
            {
               
                ((HtmlGenericControl)this.Page.Master.FindControl("loginBox")).Visible = false;
                ((HtmlGenericControl)this.Page.Master.FindControl("useraccount")).Visible = true;
            }
            else
            {

                
            }
        }
    }
}