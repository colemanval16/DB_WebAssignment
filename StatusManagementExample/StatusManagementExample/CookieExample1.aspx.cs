using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StatusManagementExample
{
    public partial class CookieExample1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["DateCookie"];

            if(cookie == null)
            {
                cookie = new HttpCookie("DateCookie");
                Response.Write("Creating cookie with current data as value");

                //You can do either way 
                cookie.Value = DateTime.Now.ToString();
                //cookie["DataCookie"] = DateTime.Now.ToString();
            }
            else
            {
                Response.Write("Cookie is already created and the value is : ");
                Response.Write(cookie.Value);
            }

            Response.Cookies.Add(cookie);
            cookie.Expires = DateTime.Now.AddDays(3);
        }
    }
}