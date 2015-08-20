using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertionApp
{
    public partial class temperature : System.Web.UI.Page
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
                double celsius = double.Parse(txtCelsius.Text);
                double fahrenheit = ((9.0 / 5.0) * celsius) + 32;
                result.Text = string.Format("Celsius {0:f2} to Fahrenheit is {1:f2}", celsius, fahrenheit);
            }
           catch(Exception)
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
                double fahrenheit = double.Parse(txtFahrenheit.Text);
                double celsius = (5.0 / 9.0) * (fahrenheit - 32);
                result.Text = string.Format("Fahrenheit {0:f2} to Celsius is {1:f2}", fahrenheit, celsius);
            }
            catch (Exception)
            {
                resultBox.Visible = false;
                Response.Write("<script>alert('Please input number')</script>");
            }
        }
        protected void btnEnter_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFahrenheit.Text = "";
            txtCelsius.Text = "";
        }

        protected void btnGoback_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        
    }
}