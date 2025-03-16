using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewMessages : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminMail"] == null)
        {

            Response.Redirect("AdminLogin.aspx");
        }
        if (Request.QueryString["deleteID"] != null)
        {
            int MesID = int.Parse(Request.QueryString["deleteID"]);
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM Message WHERE ID=@id", con);
            cmd.Parameters.AddWithValue("@id", MesID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewMessages.aspx");
        }
    }
}