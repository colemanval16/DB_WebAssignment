using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StatusManagementExample
{
    public partial class CookieExample3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["ColourCookie"];
            if(cookie ==null)
            {
                cookie = new HttpCookie("ColourCookie");
                if(rblColor.SelectedIndex < 0)
                {
                    cookie.Value = "Blue";
                }
                else
                {
                    cookie.Value = rblColor.SelectedItem.Text;
                }
            }
            else
            {
                string color = cookie.Value;
                mainContent.Style.Add(HtmlTextWriterStyle.BackgroundColor, color);
                if(rblColor.SelectedIndex>=0)
                {
                    cookie.Value = rblColor.SelectedItem.Text;
                }
                
            }
            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddMonths(2);
        }

        protected void rblColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (rblColor.SelectedIndex >=0)
                mainContent.Style.Add(HtmlTextWriterStyle.BackgroundColor, rblColor.SelectedItem.Text);
        }
    }
}