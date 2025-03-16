using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE Email=@email AND Password=@pass", con);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@pass", password.Text);
        con.Open();
        if (cmd.ExecuteScalar() == null)
        {
            Response.Write("<script>alert('Invalid Credentials')</script>");
        }
        else
        { 
            int count = (Int32)cmd.ExecuteScalar();
            if (count > 0)
            {
                Session["AdminMail"] = email.Text;
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");
            }
        }
        con.Close();
    }
}