using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StatusManagementExample
{
    public partial class CookieExample4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int times = 0;
            HttpCookie cookie = Request.Cookies["VistedTime"];
            
            if (cookie == null)
            {
                cookie = new HttpCookie("VistedTime");
                cookie.Value = times.ToString();
                Response.Write("First time" +cookie.Value);
                cookie.Value = times.ToString();
            }
            else
            {
                int i = int.Parse(cookie.Value);
                ++i;

                Response.Write("Visted time : " + i + "times");
                cookie.Value = i.ToString();

            }

            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddDays(3);
        }
    }
}