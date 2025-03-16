using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class admin_AddAdmin : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["AdminMail"] == null)
        {

            Response.Redirect("AdminLogin.aspx");
        }
    }

    protected void btnAddAdmin_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text.Trim();
        string password = txtPassword.Text.Trim();
        string confirmPassword = txtConfirmPassword.Text.Trim();

        if (string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword))
        {
            Response.Write("<script>alert('All fields are required.');</script>");
            return;
        }

        if (password != confirmPassword)
        {
            Response.Write("<script>alert('Passwords do not match.');</script>");
            return;
        }

        string connStr = ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString;

        using (SqlConnection con = new SqlConnection(connStr))
        {
            string query = "INSERT INTO Admin (Email, Password) VALUES (@Email, @Password)";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Password", password);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Admin added successfully.');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
