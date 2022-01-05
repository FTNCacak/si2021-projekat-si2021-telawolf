<%@ Page Title="Mali Princ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FasticcoPresentation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="products row">
        
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id" Width="1270px">
        <ItemTemplate>
                     Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Price:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
            <br />
                    <input type="button" class="btn btn-primary addToCartBtn" name="addToCart_<%# Eval("Id") %>" value="Dodaj u korpu" />
                    <input type="hidden" id="id_<%# Eval("Id") %>" class="addToCartHiddenInput" name="productName_<%# Eval("Id") %>" value="<%# Eval("Name") %>">
                    <input type="hidden" id="price_<%# Eval("Id") %>" class="productPriceHiddenInput" name="productPrice_<%# Eval("Id") %>" value="<%# Eval("Price") %>">
        </ItemTemplate>
    </asp:DataList>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.1/dist/js.cookie.min.js">