<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="text-center mb-4">
            <h1 class="display-4 text-primary">About LifeCare Hospital</h1>
            <p class="lead text-muted">We care for your life.</p>
        </div>
        
        <div class="row mt-4">
            <div class="col-md-6">
                <h3 class="text-primary">Our Mission</h3>
                <p class="text-muted">To provide high-quality, affordable healthcare services to our community with a focus on patient-centered care.</p>
            </div>
            <div class="col-md-6">
                <h3 class="text-primary">Our Vision</h3>
                <p class="text-muted">To be a leading healthcare provider known for innovation, integrity, and excellence in medical services.</p>
            </div>
        </div>

        <!-- Our Values Section (Now on the Left Side with Image) -->
        <div class="row mt-4 align-items-center">
            <div class="col-md-6">
                <h3 class="text-primary">Our Values</h3>
                <ul class="list-unstyled bg-light p-3 rounded shadow">
                    <li>✅ Compassionate care for all patients</li>
                    <li>✅ Commitment to medical excellence</li>
                    <li>✅ Integrity and transparency</li>
                    <li>✅ Continuous learning and innovation</li>
                    <li>✅ Respect for all individuals</li>
                </ul>
            </div>
            <div class="col-md-6 text-center">
                <img src="images/values.jpg" class="img-fluid rounded shadow-lg" alt="Our Values">
            </div>
        </div>

        <div class="row mt-4 align-items-center">
            <div class="col-md-6 text-center">
                <img src="images/hospital_building.jpg" class="img-fluid rounded shadow-lg" alt="Hospital Building">
            </div>
            <div class="col-md-6">
                <h3 class="text-primary">Our History</h3>
                <p class="text-muted">Founded in 1990, LifeCare Hospital has grown into a trusted healthcare institution, serving thousands of patients with world-class medical care and cutting-edge technology.</p>
            </div>
        </div>

        <div class="row mt-4 text-center">
            <div class="col-md-12">
                <h3 class="text-primary">Our Achievements</h3>
                <p class="text-muted">🏆 Recognized as a top healthcare provider with multiple awards for patient satisfaction and medical excellence.</p>
            </div>
        </div>
    </div>
</asp:Content>
