<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="text-center mb-4">
            <h1 class="display-4 text-primary">Gallery</h1>
            <p class="lead text-muted">A glimpse into LifeCare Hospital</p>
        </div>
        
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery1.jpeg" alt="Hospital Interior">
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery2.jpeg" alt="Operation Theatre">
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery3.jpeg" alt="Patient Care">
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery4.jpeg" alt="Emergency Room">
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery5.jpeg" alt="Reception Area">
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="gallery-item">
                    <img src="images/gallery6.jpeg" alt="Hospital Staff">
                </div>
            </div>
        </div>
    </div>

    <style>
        .gallery-item {
            width: 100%;
            height: 250px; /* Set a fixed height */
            overflow: hidden;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            background: #f8f9fa;
        }

        .gallery-item img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensures images fill the space without distortion */
            border-radius: 10px;
        }
    </style>
</asp:Content>
