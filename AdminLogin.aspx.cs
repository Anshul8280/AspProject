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
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into admin values('"+txtAdminEmail.Text+"','"+pwdAdminPassword.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Record Inserted";
        }
    }
}