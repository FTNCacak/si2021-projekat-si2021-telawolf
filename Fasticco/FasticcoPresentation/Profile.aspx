<%@ Page Title="Profil korisnika" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FasticcoPresentation.Profile" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container profilePage">
        <div class="row">
            <div class="col-md-6">
                <img src="profile.png" />
            </div>
            <div class="col-md-6">
                <div class="name">Marko Obrenović</div>
                <div class="username">@marko456</div>
                <div class="mail"><img src="letter.png" /> markoweb8@gmail.com</div>
                <div class="phone"><img src="phone.png" /> 062 440399</div>

                <asp:Button ID="orderBtn" CssClass="btn btn-primary orderBtn" runat="server" Text="Naruči nešto novo..." />
            </div>
        </div>
    </div>
</asp:Content>
