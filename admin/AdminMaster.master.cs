using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_AdminMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminMail"] == null)
        {
            Logout.Visible = false;
            
        }
    }

 
    protected void Logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("AdminLogin.aspx");
    }

    protected void Unnamed_Click(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddAdmin.aspx");
    }
}
