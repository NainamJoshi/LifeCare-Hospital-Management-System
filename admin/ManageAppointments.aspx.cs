using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminMail"] == null)
        {

            Response.Redirect("AdminLogin.aspx");
        }
        if (!IsPostBack)
        {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT Name,Department FROM Doctor", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            doctor.Items.Clear();
            doctor.Items.Add(new ListItem("Select Department", "") { Selected = true, Enabled = false });
            while (reader.Read())
            {
                doctor.Items.Add(new ListItem((reader["Name"].ToString() + " - " + reader["Department"].ToString()), reader["Name"].ToString()));
            }
            con.Close();
        }
    }

    protected void saveApp_Click(object sender, EventArgs e)
    {
       SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("INSERT INTO Appointment (Name,Email,Pno,AppDate,DocName,Additional) VALUES(@name,@email,@pno,@date,@docname,@add)", con);
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@pno", pno.Text);
        cmd.Parameters.AddWithValue("@date", date.Text);
        cmd.Parameters.AddWithValue("@docname", doctor.Text);
        cmd.Parameters.AddWithValue("@add", detail.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ManageAppointments.aspx");
    }
}