using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertionApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnter_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect(radioList.SelectedValue.ToString());
            }
            catch(Exception)
            {
                Response.Write("<script>alert('Please select option')</script>");
            }
        }
    }
}