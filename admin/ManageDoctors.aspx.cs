using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ManageDoctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminMail"] == null)
        {

            Response.Redirect("AdminLogin.aspx");
        }
        if (Request.QueryString["deleteID"] != null)
        {
            int DocID = int.Parse(Request.QueryString["deleteID"]);
           SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM Doctor WHERE DocID=@id",con);
            cmd.Parameters.AddWithValue("@id", DocID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ManageDoctors.aspx");
        }
    }
    protected void btnAddDoctor_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddDoctor.aspx");
    }
}