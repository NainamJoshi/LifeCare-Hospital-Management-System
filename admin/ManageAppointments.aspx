<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="ManageAppointments.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="d-flex justify-content-between align-items-center">
            <h2 class="text-primary">Book an Appointment</h2>
            <a href="ViewAppointments.aspx" class="btn btn-success">
                <i class="fas fa-eye"></i>View Appointments
            </a>
        </div>

        <p class="text-muted text-center">Fill in the details below to schedule your appointment</p>
        <hr>
        <div class="card shadow p-4">
            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <asp:TextBox runat="server" ID="name" type="text" class="form-control" placeholder="Enter your name" />
            </div>

            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <asp:TextBox runat="server" ID="email" type="email" class="form-control" placeholder="Enter your email" />
            </div>

            <div class="mb-3">
                <label class="form-label">Phone Number</label>
                <asp:TextBox runat="server" ID="pno" type="tel" class="form-control" placeholder="Enter your phone number" />
            </div>

            <div class="mb-3">
                <label class="form-label">Appointment Date</label>
                <asp:TextBox ID="date" runat="server" CssClass="form-control" TextMode="Date" />

            </div>

            <div class="mb-3">
                <label class="form-label">Select Doctor</label>
                <asp:DropDownList ID="doctor" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Choose a doctor" Value="" Selected="True" Disabled="True"></asp:ListItem>
                </asp:DropDownList>

            </div>

            <div class="mb-3">
                <label class="form-label">Additional Message</label>
                <asp:TextBox ID="detail" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Enter any additional details"></asp:TextBox>
            </div>

            <div class="text-center">
                <asp:Button runat="Server" ID="saveApp" Text="Save Appointment" class="btn btn-primary" OnClick="saveApp_Click" />
            </div>
        </div>
    </div>
</asp:Content>
