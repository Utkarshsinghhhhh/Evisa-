using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Lab_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Male_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked == true)
            {
                string name = TextBox1.Text;
                Label4.Text = "Thankyou Mr. " + name + "for your feedback.";
            }
            if (RadioButton2.Checked == true)
            {
                string name = TextBox1.Text;
                Label4.Text = "Thankyou Miss. " + name + "for your feedback.";
            }
        }
    }
}