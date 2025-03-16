using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_ManageDepartments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminMail"] == null)
        {

            Response.Redirect("AdminLogin.aspx");
        }
        if (Request.QueryString["deleteID"] != null)
        {
            int DeptID = int.Parse(Request.QueryString["deleteID"]);
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand("DELETE FROM Department WHERE DeptID=@id", con);
            cmd.Parameters.AddWithValue("@id", DeptID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ManageDepartments.aspx");
        }
    }

    protected void Dept_Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddDepartment.aspx");
    }
}