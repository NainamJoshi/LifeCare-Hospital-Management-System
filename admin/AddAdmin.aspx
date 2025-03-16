<%@ Page Title="Add Admin" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddAdmin.aspx.cs" Inherits="admin_AddAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="card shadow-lg p-4">
            <h2 class="text-center text-primary"><i class="fa fa-user-plus"></i> Add New Admin</h2>
            <hr />

            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Confirm Password</label>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm password"></asp:TextBox>
                    </div>

                    <div class="text-center">
                        <asp:Button ID="btnAddAdmin" runat="server" CssClass="btn btn-primary px-4" Text="Add Admin" OnClick="btnAddAdmin_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>