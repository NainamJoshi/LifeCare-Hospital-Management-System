<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="admin_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 400px;">
            <h3 class="text-center text-primary">Admin Login</h3>
            <div class="mb-3">
                Email
                <asp:TextBox runat="server" ID="email" type="text" class="form-control" placeholder="Enter Email" />
            </div>
            <div class="mb-3">
                <label class="form-label">Password</label>
                <asp:TextBox runat="server" ID="password" type="password" class="form-control" placeholder="Enter password" />
            </div>
            <asp:Button runat="server" Text="Login" class="btn btn-primary w-100" OnClick="Unnamed1_Click" />
        </div>
    </div>
</asp:Content>
