<%@ Page Title="Proleće" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FasticcoPresentation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="min-height:80vh;">

        <div class="restaurantInfo">
            <img src="img/logo.jpg" alt="Alternate Text" />
            <div class="infos">
                <p>Adresa: <b>Župana Stacimira, Čačak</b></p>
                <p>Telefon: <b>032 341852</b></p>
            </div>
        </div>

         <div class="products">
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDB3ConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id" Width="1270px">
        <ItemTemplate>
                
                    <asp:Label CssClass="productName" ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <asp:Label CssClass="productPrice" ID="PriceLabel" runat="server" Text=<%# String.Format("{0} {1} {2}","Cena: ", Eval("Price"),"rsd." ) %> />
                    <asp:Label CssClass="productDescription" ID="DescriptionLabel" runat="server"  Text=<%# String.Format("{0} {1}","Opis: ", Eval("Description")) %> />
            <br />
                    <input type="button" class="btn btn-primary addToCartBtn" name="addToCart_<%# Eval("Id") %>" value="Dodaj u korpu" />
                    <input type="hidden" id="id_<%# Eval("Id") %>" class="addToCartHiddenInput" name="productName_<%# Eval("Id") %>" value="<%# Eval("Name") %>">
                    <input type="hidden" id="<%# Eval("Name") %>" class="productPriceHiddenInput" name="productPrice_<%# Eval("Id") %>" value="<%# Eval("Price") %>">
        </ItemTemplate>
    </asp:DataList>
    </div>
    </div>
   
    
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.1/dist/js.cookie.min.js"></script>
    <script src="js/app.js"></script>
    </asp:Content>