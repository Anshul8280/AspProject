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
    public partial class AdminProfileupdate : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from admin where AdminEmail='" + Session["user"] + "'", con);
            cmd.ExecuteNonQuery();
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            //lblName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            txtAdminID.Text = ds.Tables[0].Rows[0]["AdminId"].ToString();
            lblCustomerId.Text = ds.Tables[0].Rows[0]["AdminId"].ToString();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            updateData();
            Response.Redirect("AdminDashboard.aspx");
        }
        public void updateData()
        {
            SqlDataAdapter sda = new SqlDataAdapter("update Admin set adminemail='" + txtEmail.Text + "' where adminid='" + txtAdminID.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Session["user"] = txtEmail.Text;
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("index.aspx");
        }

        protected void btnaddBus_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addbus.aspx");
        }
    }
}