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
    public partial class UpdateProfile : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("select * from customer where Email='" + Session["user"] + "'", con);
            cmd.ExecuteNonQuery();
            sda.SelectCommand = cmd;
            sda.Fill(ds);
            lblName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            //txtEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
            txtCustomerId.Text = ds.Tables[0].Rows[0]["CustomerId"].ToString();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
    
            updateData();
            Response.Redirect("Dashboard.aspx");
        }

        public void updateData()
        {
            SqlDataAdapter sda = new SqlDataAdapter("update customer set name='" + txtName.Text + "',email='" + txtEmail.Text + "' where customerid='" + txtCustomerId.Text + "'", con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            Session["user"] = txtEmail.Text;
        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("index.aspx");
        }
    }
}