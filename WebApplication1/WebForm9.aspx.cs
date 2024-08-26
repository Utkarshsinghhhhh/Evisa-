using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

               
        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("uid=sa;password=manager@123;database=developer;server=GF27QV3\\SQLEXPRESS");

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Employees values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "', " + TextBox4.Text + ", '" + TextBox5.Text + "', " + TextBox6.Text + ", " + TextBox7.Text + ", " + TextBox8.Text + ")", con);

           
            int i = cmd.ExecuteNonQuery();

            Label10.Text = " 1 Record inserted successfully";

        }
    }
}