<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container text-center mt-4">
        <h1>Welcome to LifeCare Hospital</h1>
        <p class="lead">Providing compassionate and quality healthcare services.</p>
        
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card">
                    <img src="images/doctor.jpg" class="card-img-top img-fluid" style="height: 200px; width: 100%; object-fit: cover;" alt="Doctors">
                    <div class="card-body">
                        <h5 class="card-title">Expert Doctors</h5>
                        <p class="card-text">Our team of experienced doctors is here to provide the best medical care.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/facility.jpg" class="card-img-top img-fluid" style="height: 200px; width: 100%; object-fit: cover;" alt="Facilities">
                    <div class="card-body">
                        <h5 class="card-title">Modern Facilities</h5>
                        <p class="card-text">State-of-the-art medical equipment and comfortable patient rooms.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="images/service.jpg" class="card-img-top img-fluid" style="height: 200px; width: 100%; object-fit: cover;" alt="Services">
                    <div class="card-body">
                        <h5 class="card-title">Comprehensive Services</h5>
                        <p class="card-text">From diagnostics to treatment, we cover all your healthcare needs.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
