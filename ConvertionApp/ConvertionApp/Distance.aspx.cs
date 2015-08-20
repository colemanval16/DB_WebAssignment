using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertionApp
{
    public partial class Distance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultBox.Visible = false;
        }

        protected void btnConvert1_Click(object sender, EventArgs e)
        {
            resultBox.Visible = true;
            try
            {
                double killo = double.Parse(txtKillo.Text);
                double meters = killo * 1000.0;
                result.Text = string.Format("{0:f2} kilometer is {1:f2} meters", killo, meters);
            }
            catch (Exception)
            {
                resultBox.Visible = false;
                Response.Write("<script>alert('Please input number')</script>");
            }
            
        }

        protected void btnConvert2_Click(object sender, EventArgs e)
        {
            resultBox.Visible = true;
            try
            {
                double centi = double.Parse(txtCenti.Text);
                double mil = centi * 10;
                result.Text = string.Format("{0:f2} centimeters is {1:f2} millimeters", centi, mil);
            }
            catch (Exception)
            {
                resultBox.Visible = false;
                Response.Write("<script>alert('Please input number')</script>");
            }
           
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCenti.Text = "";
            txtKillo.Text = "";
        }

        protected void btnGoback_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
        }
    }
