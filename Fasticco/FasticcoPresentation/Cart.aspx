<%@ Page Title="Korpa" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FasticcoPresentation.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h1 class="title">Vaša korpa</h1>
    <div id="cart">
        <p>Korpa je prazna!</p>
    </div>


    <!--OVO IZMEDJU KOMENTARA NE PIPAJ -->
    <asp:TextBox ID="TextBox1" CssClass="textForOrder" runat="server"></asp:TextBox>
    <asp:TextBox ID="TotalPrice" runat="server" CssClass="totalPriceHidden textForOrder"></asp:TextBox>
    <!--OVO IZMEDJU KOMENTARA NE PIPAJ -->


    <div class="userInfo">
        <asp:Label ID="Label2" runat="server" Text="Adresa"></asp:Label>
        <asp:TextBox ID="Address" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
        <asp:TextBox ID="UserPhone" runat="server" CssClass="form-control"></asp:TextBox>

        <asp:Button ID="sendOrder"  CssClass="btn btn-primary btnLogRegg" runat="server" Text="Naruči" OnClick="sendOrder_Click1" />
    </div>

    

    <script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.1/dist/js.cookie.min.js"></script>
    <script src="js/app.js"></script>
</asp:Content>
