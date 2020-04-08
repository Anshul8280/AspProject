using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Online_Bus_Reservation_System
{
    public partial class login : System.Web.UI.Page
    {
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Projectdatabase"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           if(Session["user"] !=null)
            {
                Response.Redirect("Dashboard.aspx");
            }
            
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtEmail.Text.Trim();
            SqlCommand cmd = new SqlCommand("select * from customer where email='"+txtEmail.Text+"' and password ='"+txtpassword.Text+"'", con);
            cmd.ExecuteNonQuery();
            sda.SelectCommand = cmd;
            sda.Fill(ds, "details");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["user"] = user;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
               
            }
        }
    }
}