<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="admin_AdminDashboard" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid mt-4">
        <h2 class="text-primary">Dashboard</h2>
        <hr>
        <%
            string connString = ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString;
            int count = 0;
            System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select count(*) from Appointment", con);
            count = (int)cmd.ExecuteScalar();
        %>


        <div class="row">
            <div class="col-md-3">
                <div class="card shadow p-3 text-center">
                    <h4 class="text-primary">Appointments</h4>
                    <h2 class="text-dark"><%=count %></h2>
                </div>
            </div>
            <%SqlCommand cmd2 = new SqlCommand("select count(*) from Doctor", con);
                count = (int)cmd2.ExecuteScalar(); %>
            <div class="col-md-3">
                <div class="card shadow p-3 text-center">
                    <h4 class="text-primary">Total Doctors</h4>
                    <h2 class="text-dark"><%=count %></h2>
                </div>
            </div>
            <%SqlCommand cmd3 = new SqlCommand("select count(*) from Department", con);
                count = (int)cmd3.ExecuteScalar(); %>
            <div class="col-md-3">
                <div class="card shadow p-3 text-center">
                    <h4 class="text-primary">Departments</h4>
                    <h2 class="text-dark"><%=count %></h2>
                </div>
            </div>
            <%SqlCommand cmd4 = new SqlCommand("select count(*) from Message", con);
                count = (int)cmd4.ExecuteScalar(); %>
            <div class="col-md-3">
                <div class="card shadow p-3 text-center">
                    <h4 class="text-primary">Messages</h4>
                    <h2 class="text-dark"><%=count %></h2>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

