<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="text-center mb-4">
            <h1 class="display-4 text-primary">Contact Us</h1>
            <p class="lead text-muted">We’re here to help you. Get in touch with us!</p>
        </div>

        <div class="row">
            <!-- Contact Information -->
            <div class="col-md-6">
                <h3 class="text-primary">Our Address</h3>
                <p class="text-muted">
                    📍 LifeCare Hospital, 123 Health Street, CityName, Country <br>
                    📞 Phone: +1 (123) 456-7890 <br>
                    📧 Email: contact@lifecarehospital.com
                </p>
            </div>

            <!-- Hospital Image -->
            <div class="col-md-6 text-center">
                <img src="images/hospital_building.jpg" class="img-fluid rounded shadow-lg" alt="Hospital Building">
            </div>
        </div>

        <hr class="my-4">

        <!-- Contact Form -->
        <div class="card shadow-lg p-4 mt-4">
            <h3 class="text-center text-primary">Send Us a Message</h3>
            <div class="row">
                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label">Your Name</label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" placeholder="Enter your name" Required="true"></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="mb-3">
                        <label class="form-label">Your Email</label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" placeholder="Enter your email" Required="true"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="mb-3">
                <label class="form-label">Your Message</label>
                <asp:TextBox runat="server" ID="txtMessage" CssClass="form-control" TextMode="MultiLine" Rows="4" placeholder="Enter your message" Required="true"></asp:TextBox>
            </div>

            <div class="text-center">
                <asp:Button runat="server" ID="btnSend" Text="Send Message" CssClass="btn btn-primary px-4" OnClick="btnSend_Click" />
            </div>

            <!-- Success Message -->
            <asp:Label runat="server" ID="lblMessage" CssClass="text-success mt-3 text-center d-block" Visible="false"></asp:Label>
        </div>
    </div>
</asp:Content>

