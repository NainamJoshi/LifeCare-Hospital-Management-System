using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ViewAppoinments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["deleteID"] != null)
        {
            int AppID = int.Parse(Request.QueryString["deleteID"]);
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM Appointment WHERE AppID=@id", con);
            cmd.Parameters.AddWithValue("@id", AppID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAppointments.aspx");
        }
    }
}