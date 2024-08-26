using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class EvisaHRlogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username2 = username.Text;
            string password2 = password.Text;
            SqlConnection con = new SqlConnection("uid=sa; password=manager@123; database=Evisa; server=GF27QV3\\SQLEXPRESS");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from HRusers where username = '" + username2 + "' and password = '" + password2 + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                Response.Redirect("Evisaadminlogin.aspx");
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Successful. Now redirecting to the dashboard!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid username or password!')", true);

            }
            con.Close();
        }
    }
}