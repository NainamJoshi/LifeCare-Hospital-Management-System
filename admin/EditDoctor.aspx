<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="EditDoctor.aspx.cs" Inherits="admin_EditDoctor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-primary text-center">Edit Doctor</h2>
        <hr>
        <div class="card shadow p-4">
            <div class="mb-3">
                <label class="form-label">Doctor Name</label>
                <asp:TextBox runat="server" ID="NewName" type="text" class="form-control" placeholder="Enter doctor's name" />
            </div>

            <div class="mb-3">
                <label class="form-label">Specialization</label>
                <asp:TextBox runat="server" ID="NewSpec" type="text" class="form-control" placeholder="Enter specialization" />
            </div>

            <div class="mb-3">
                <label class="form-label">Department</label>
                <asp:DropDownList ID="NewDept" runat="server" CssClass="form-select">
                    <asp:ListItem Text="Choose department" Value="" Selected="True" Disabled="True"></asp:ListItem>
                    <asp:ListItem Text="Cardiology" Value="Cardiology"></asp:ListItem>
                    <asp:ListItem Text="Neurology" Value="Neurology"></asp:ListItem>
                    <asp:ListItem Text="Orthopedics" Value="Orthopedics"></asp:ListItem>
                    <asp:ListItem Text="General Medicine" Value="General Medicine"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label class="form-label">Upload Profile Image</label>
                <asp:FileUpload ID="DocProfile" runat="server" CssClass="form-control" />
            </div>

            <div class="text-center">
                <asp:Button Text="Save Changes" runat="server" ID="EditDoc" class="btn btn-primary" OnClick="EditDoc_Click" />
                <a href="ManageDoctors.aspx" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Back</a>
            </div>
        </div>
    </div>
</asp:Content>
