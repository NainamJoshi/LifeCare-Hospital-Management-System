<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewMessages.aspx.cs" Inherits="admin_ViewMessages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid mt-4">
        <h2 class="text-primary">Patient Messages</h2>
        <hr>

        <!-- Messages Table -->
        <div class="table-responsive">
            <table class="table table-bordered table-hover shadow">
                <thead class="table-primary text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Message</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    <% System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
                        con.Open();
                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT * FROM Message", con);
                        System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                    %>
                    <tr>
                        <td><%=reader["ID"] %></td>
                        <td><%=reader["UserName"] %></td>
                        <td><%=reader["UserEmail"] %></td>
                        <td><%=reader["UserMessage"] %></td>
                        <td>
                           <a href="ViewMessages.aspx?deleteId=<%= reader["ID"] %>" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
