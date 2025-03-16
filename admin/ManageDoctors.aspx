<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageDoctors.aspx.cs" Inherits="admin_ManageDoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid mt-4">
        <h2 class="text-primary">Manage Doctors</h2>
        <hr>

        <div class="d-flex justify-content-end mb-3">
            <asp:Button ID="btnAddDoctor" runat="server" Text="Add Doctor" CssClass="btn btn-success" OnClick="btnAddDoctor_Click" />
        </div>
        <% System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT * FROM Doctor", con);
            System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
        %>
        <div class="table-responsive">
            <table class="table table-bordered table-hover shadow">
                <thead class="table-primary text-center">
                    <tr>
                        <th>Doctor ID</th>
                        <th>Profile Image</th>
                        <th>Name</th>
                        <th>Specialization</th>
                        <th>Department</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="text-center">
                    <%while (reader.Read())
                        { %>
                    <tr>
                        <td><%=reader["DocID"] %></td>
                        <td><img src="../<%= reader["Profile"] %>" class="rounded-circle" width="50" height="50" alt="Doctor"></td>
                        <td><%=reader["Name"] %></td>
                        <td><%=reader["Specialization"] %></td>
                        <td><%=reader["Department"] %></td>
                        <td>
                            <a href="EditDoctor.aspx?editId=<%= reader["DocID"] %>" class="btn btn-warning btn-sm">Edit</a>
                            <a href="ManageDoctors.aspx?deleteId=<%= reader["DocID"] %>" class="btn btn-danger btn-sm">Delete</a>
                        </td>

                    </tr>
                    <%} %>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>


