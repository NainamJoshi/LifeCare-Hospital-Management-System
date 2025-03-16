<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddDepartment.aspx.cs" Inherits="admin_AddCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-primary">Add Category</h2>
        <hr>
        <div class="card shadow p-4">
            <div class="mb-3">
                <label class="form-label">Department Name</label>
                <asp:TextBox runat="server" ID="DeptName" type="text" class="form-control" placeholder="Enter Department Name" />
            </div>

            <div class="text-center">
                <asp:Button runat="server" Text="Save Department" class="btn btn-primary" OnClick="Unnamed1_Click" />
                <a class="btn btn-secondary" href="ManageDepartments.aspx"><i class="fas fa-arrow-left"></i> Back</a>
            </div>
        </div>
    </div>
</asp:Content>
