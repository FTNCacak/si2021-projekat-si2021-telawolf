<%@ Page Title="Mali Princ" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FasticcoPresentation._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="products row">
        
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" DataKeyField="Id" Width="1270px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
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
                    <input type="button" class="btn btn-primary addToCartBtn addToCartBtn_<%# Eval("Id") %>" name="addToCart_<%# Eval("Id") %>" value="Dodaj u korpu" />
                    <input type="hidden" id="id_<%# Eval("Id") %>" class="addToCartHiddenInput" name="product_<%# Eval("Id") %>" value="<%# Eval("Name") %>">
        </ItemTemplate>
    </asp:DataList>
    </div>

    <script src="js/app.js"></script>


<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDBConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
</asp:Content>
