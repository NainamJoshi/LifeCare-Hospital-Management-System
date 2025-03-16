using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_EditDoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT DeptName FROM Department", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            NewDept.Items.Clear();
            NewDept.Items.Add(new ListItem("Select Department", "") { Selected = true, Enabled = false });
            while (reader.Read())
            {
                NewDept.Items.Add(new ListItem(reader["DeptName"].ToString(), reader["DeptName"].ToString()));
            }
            reader.Close();

            int editId = int.Parse(Request.QueryString["editId"]);
            SqlCommand cmdDoc = new SqlCommand("SELECT * FROM Doctor WHERE DocId=@id", con);
            cmdDoc.Parameters.AddWithValue("@id", editId);
            SqlDataReader readerDoc = cmdDoc.ExecuteReader();
            while (readerDoc.Read())
            {
                NewName.Text = readerDoc["Name"].ToString();
                NewSpec.Text = readerDoc["Specialization"].ToString();
                NewDept.Text = readerDoc["Department"].ToString();
            }
            reader.Close();
            con.Close();
        }
    }

    protected void EditDoc_Click(object sender, EventArgs e)
    {
        String profilePath = "";
        if (DocProfile.HasFile)
        {
           
            String fileName = Path.GetFileName(DocProfile.FileName);
            profilePath = "uploads/" + fileName;
            DocProfile.SaveAs(Server.MapPath("~/" + profilePath));
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString); con.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("UPDATE Doctor SET Name=@name,Specialization=@spec,Department=@dept,Profile=@profile WHERE DocID=@id", con);
            cmd.Parameters.AddWithValue("@name", NewName.Text);
            cmd.Parameters.AddWithValue("@spec", NewSpec.Text);
            cmd.Parameters.AddWithValue("@dept", NewDept.Text);
            cmd.Parameters.AddWithValue("@profile", profilePath);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["editId"]);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ManageDoctors.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString); con.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("UPDATE Doctor SET Name=@name,Specialization=@spec,Department=@dept WHERE DocID=@id", con);
            cmd.Parameters.AddWithValue("@name", NewName.Text);
            cmd.Parameters.AddWithValue("@spec", NewSpec.Text);
            cmd.Parameters.AddWithValue("@dept", NewDept.Text);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["editId"]);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ManageDoctors.aspx");
        }
    }
}