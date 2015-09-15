using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class ToodleCourse : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tabbedMenu.FindItem("0").Selected = true;
            (this.Master as Toodle).SignOutBtnClicked += new EventHandler(child_SignOutBtnClicked);
        }
        void child_SignOutBtnClicked(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");

        }
        protected void tabbedMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            mvTabs.ActiveViewIndex = int.Parse(tabbedMenu.SelectedItem.Value);
        }
    }
}