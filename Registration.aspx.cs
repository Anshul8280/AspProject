using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Bus_Reservation_System
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Projectdatabase"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Customer values('" + txtName.Text + "','" + txtEmail.Text + "','"+txtPassword.Text+"')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Dashboard.aspx");
        }
    }
}