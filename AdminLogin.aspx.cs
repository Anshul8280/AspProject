using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Online_Bus_Reservation_System
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Projectdatabase"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("AdminDashboard.aspx");
            }

            con.Open();
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            string user = txtAdminEmail.Text.Trim();
            SqlCommand cmd = new SqlCommand("select * from admin where adminemail='" + txtAdminEmail.Text + "' and password ='" + pwdAdminPassword.Text + "'", con);
            cmd.ExecuteNonQuery();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "details");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["user"] = user;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {

            }
        }
    }
}