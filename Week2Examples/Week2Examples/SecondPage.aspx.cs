using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week2Examples
{
    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage != null)
            {
                if(IsCrossPagePostBack)
                {
                    TextBox txtBox = (TextBox)PreviousPage.FindControl("txtText");
                if (txtBox != null)
                    Response.Write(txtBox.Text);
                }
                
            }
        }
    }
}