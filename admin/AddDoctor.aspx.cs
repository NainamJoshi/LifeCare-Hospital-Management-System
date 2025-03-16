using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

public partial class admin_AddDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT DeptName FROM Department", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            DocDept.Items.Clear();
            DocDept.Items.Add(new ListItem("Select Department", "") { Selected = true, Enabled = false });
            while (reader.Read())
            {
                DocDept.Items.Add(new ListItem(reader["DeptName"].ToString(), reader["DeptName"].ToString()));
            }
            con.Close();
        }
    }

    protected void Save_Click(object sender, EventArgs e)
    {
        String profilePath = "";
        if (DocProfile.HasFile)
        {
            String fileName = Path.GetFileName(DocProfile.FileName);
            profilePath = "uploads/" + fileName;
            DocProfile.SaveAs(Server.MapPath("~/"+profilePath));
        }
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO Doctor (Name,Specialization,Department,Profile) VALUES(@name,@spec,@Dept,@profile)",con);
        cmd.Parameters.AddWithValue("@name", DocName.Text);
        cmd.Parameters.AddWithValue("@spec", DocSpec.Text);
        cmd.Parameters.AddWithValue("@Dept", DocDept.Text);
        cmd.Parameters.AddWithValue("@profile", profilePath);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ManageDoctors.aspx");
    }
}