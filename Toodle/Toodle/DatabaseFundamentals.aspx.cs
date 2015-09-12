using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Toodle
{
    public partial class DatabaseFundamentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            nestedTabbedMenu.FindItem("0").Selected = true;
        }
        protected void nestedTabbedMenu_MenuItemClick(object sender, MenuEventArgs e)
        {
            mvTabs2.ActiveViewIndex = int.Parse(nestedTabbedMenu.SelectedItem.Value);
        }
    }
}