<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddDoctor.aspx.cs" Inherits="admin_AddDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-primary">Add Doctor</h2>
        <hr>

        <div class="card shadow p-4">
            <div class="mb-3">
                <label class="form-label">Doctor Name</label>
                <asp:TextBox runat="server" ID="DocName" CssClass="form-control" placeholder="Enter Doctor's Name" />
            </div>

            <div class="mb-3">
                <label class="form-label">Specialization</label>
                <asp:TextBox runat="server" ID="DocSpec" CssClass="form-control" placeholder="Enter Specialization" />
            </div>

            <div class="mb-3">
                <label class="form-label">Department</label>
                <asp:DropDownList ID="DocDept" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>

            <div class="mb-3">
                <label class="form-label">Profile Image</label>
                <asp:FileUpload ID="DocProfile" runat="server" CssClass="form-control" />
            </div>

            <div class="text-center">
                <asp:Button runat="server" ID="Save" CssClass="btn btn-primary" Text="Save Doctor" OnClick="Save_Click"></asp:Button>
                <a type="button" href="ManageDoctors.aspx" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back</a>
            </div>
        </div>
    </div>
</asp:Content>
