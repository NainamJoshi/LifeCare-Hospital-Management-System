using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Departments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDoctors();
        }
    }

    private void LoadDoctors()
    {
        string connString = ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString;
        string query = "SELECT Name, Specialization, Department, Profile FROM Doctor";

        using (SqlConnection con = new SqlConnection(connString))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                rptDoctors.DataSource = reader;
                rptDoctors.DataBind();
            }
        }
    }
}
