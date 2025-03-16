<%@ Page Title="Departments" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Departments.aspx.cs" Inherits="Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-primary text-center">Our Departments</h2>
        <p class="text-muted text-center">Meet our expert doctors from various specializations.</p>
        <hr />

        <div class="row" id="doctorList">
            <asp:Repeater ID="rptDoctors" runat="server">
                <ItemTemplate>
                    <div class="col-md-4 mb-4">
                        <div class="card shadow-lg">
                            <img src='<%# Eval("Profile") %>' class="card-img-top img-fluid" alt="Doctor Image" style="height:250px; object-fit:cover;">
                            <div class="card-body text-center">
                                <h5 class="card-title text-primary"><%# Eval("Name") %></h5>
                                <p class="text-muted"><strong>Specialization:</strong> <%# Eval("Specialization") %></p>
                                <p class="text-muted"><strong>Department:</strong> <%# Eval("Department") %></p>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>

