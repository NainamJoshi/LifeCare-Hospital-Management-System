<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ViewAppointments.aspx.cs" Inherits="admin_ViewAppoinments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-primary">View Appointments</h2>
        <hr>
        <% System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["LifeCareDB"].ConnectionString);
            con.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand("SELECT * FROM Appointment", con);
            System.Data.SqlClient.SqlDataReader reader = cmd.ExecuteReader();
        %>
        <div class="card shadow p-3">
            <div class="table-responsive">
                <table class="table table-bordered table-striped">
                    <thead class="table-dark text-center">
                        <tr>
                            <th>#</th>
                            <th>Full Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Appointment Date</th>
                            <th>Doctor</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <% while(reader.Read())
                            { %>
                        <tr>
                            <td><%=reader["AppID"] %></td>
                            <td><%=reader["Name"] %></td>
                            <td><%=reader["Email"] %></td>
                            <td><%=reader["Pno"] %></td>
                            <td><%=reader["AppDate"] %></td>
                            <td><%=reader["DocName"] %></td>
                            <td>
                                <a href="ViewAppointments.aspx?deleteId=<%= reader["AppID"] %>" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                        <%} %>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="mt-3 text-center">
            <a href="ManageAppointments.aspx" class="btn btn-secondary"><i class="fas fa-arrow-left"></i>Back to Manage Appointments</a>
        </div>
    </div>
</asp:Content>
