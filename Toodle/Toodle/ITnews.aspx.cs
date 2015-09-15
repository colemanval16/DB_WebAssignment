using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml;


namespace Toodle
{
    public partial class ITnews : System.Web.UI.Page
    {
        static DataSet ds;
        static DataTable dt;
        private string xmlPath = @"C:\\Toodle";
        string xmlFile = @"C:\\Toodle\\" +string.Format("SavedNews-{0:yyyy-MM-dd_hh-mm-ss-tt}.xml", DateTime.Now);

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                ds = new DataSet();
                ds.DataSetName = "savedNews";

                //It will create if directory not exist
                Directory.CreateDirectory(xmlPath);
                dt = new DataTable("savedNews");
                dt.Columns.Add("title");
                dt.Columns.Add("url");
                dt.Columns.Add("description");

                ds.Tables.Add(dt);
                DataRow row = dt.NewRow();

                row["title"] = txtTitle.Text;
                row["url"] = txtURL.Text;
                row["description"] = txtDes.Text;

                dt.Rows.Add(row);
                ds.AcceptChanges();

                if (string.IsNullOrWhiteSpace(txtTitle.Text) || string.IsNullOrWhiteSpace(txtURL.Text))
                {

                }
                else
                {
                    ds.WriteXml(xmlFile);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Saved", "alert('News saved in C:/Toodle')", true);
                    txtTitle.Text = "";
                    txtURL.Text = "";
                    txtDes.Text = "";
                }
            }
            catch(Exception){}
            
 
            
        }

 


    }
}