<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FasticcoPresentation.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div id="cart">
    </div>



    <asp:TextBox ID="TextBox1" CssClass="textForOrder" runat="server"></asp:TextBox>

    <asp:Button ID="sendOrder" runat="server" Text="Button" OnClick="sendOrder_Click1" />

    <asp:Label ID="Label1" runat="server" Text="Ime"></asp:Label>
    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Adresa"></asp:Label>
    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Telefon"></asp:Label>
    <asp:TextBox ID="UserPhone" runat="server"></asp:TextBox>
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.1/dist/js.cookie.min.js"></script>
    <script src="js/app.js"></script>
</asp:Content>
