using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AddCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO Department (DeptName) VALUES(@name)", con);
        cmd.Parameters.AddWithValue("@name", DeptName.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ManageDepartments.aspx");
    }
}