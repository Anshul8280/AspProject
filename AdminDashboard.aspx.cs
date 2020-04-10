using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Online_Bus_Reservation_System
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Projectdatabase"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                con.Open();
                showData();
            }
        }

        public void showData()
        {
            SqlCommand cmd = new SqlCommand("select * from Admin where Adminemail='" + Session["user"] + "'", con);
            cmd.ExecuteNonQuery();
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            //lblName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            lblCustomerId.Text = ds.Tables[0].Rows[0]["AdminId"].ToString();

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProfileupdate.aspx");
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("index.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addbus.aspx");
        }
    }
}