<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="FasticcoPresentation.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="min-height: 60vh;">
        <div class="userInfo">
        <asp:Label ID="Label1" runat="server" Text="Korisničko ime"></asp:Label>
        <asp:TextBox ID="AdminName" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Lozinka"></asp:Label>
        <asp:TextBox ID="AdminPassword" TextMode="Password" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Button ID="adminLogin" runat="server" Text="Uloguj se" CssClass="btn btn-primary btnLogRegg" OnClick="adminLogin_Click" />
    </div>
    </div>
</asp:Content>
