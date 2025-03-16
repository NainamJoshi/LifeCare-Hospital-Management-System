using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    protected void btnSend_Click(object sender, EventArgs e)
    {
        // Get Connection String from Web.config
        string connString = ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString;

        // Insert query
        string query = "INSERT INTO Message (UserName, UserEmail, UserMessage) VALUES (@name, @email, @message)";

        // Establish connection
        using (SqlConnection con = new SqlConnection(connString))
        {
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                // Add parameters
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@message", txtMessage.Text);

                // Open connection and execute query
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        // Show success message
        lblMessage.Text = "Thank you for reaching out! We'll get back to you soon.";
        lblMessage.Visible = true;

        // Clear form fields
        txtName.Text = "";
        txtEmail.Text = "";
        txtMessage.Text = "";
    }
}
