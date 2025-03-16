<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageDepartments.aspx.cs" Inherits="admin_ManageDepartments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid mt-4">
        <h2 class="text-primary">Manage Departments</h2>
        <hr>
        <div class="d-flex justify-content-end mb-3">
            <asp:Button runat="server" Text="Add Department" OnClick="Dept_Add_Click" class="btn btn-success" />
        </div>

        <!-- Departments Table -->
        <div class="table-responsive">
            <table class="table table-bordered table-hover shadow">
                <thead class="table-primary text-center">
                    <tr>
                        <th>Department ID</th>
                        <th>Department Name</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    <% System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString); con.Open();
                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT * FROM Department", con);
                        System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
                        while (reader.Read())
                        {
                    %>
                    <tr>
                        <td><%=reader["DeptID"] %></td>
                        <td><%=reader["DeptName"] %></td>
                        <td>
                            <a href="ManageDepartments.aspx?deleteId=<%= reader["DeptID"] %>" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>
