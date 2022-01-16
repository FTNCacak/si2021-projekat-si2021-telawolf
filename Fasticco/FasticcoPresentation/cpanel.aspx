<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cpanel.aspx.cs" Inherits="FasticcoPresentation.cpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upravljanje restorana</title>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
      <div class="container">
           <%if (System.Web.HttpContext.Current.Session["AdminName"]!= null){%>
          
        <div class="userInfo">
          <p class="segment-title">Unesi proizvod</p>
          <form runat="server">
              <asp:Label ID="Label11" runat="server" Text="Naziv proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductName" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="Label12" runat="server" Text="Cena proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductPrice" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="Label13" runat="server" Text="Opis proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductDescription" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Button ID="InsertProduct" CssClass="btn btn-success  btn-top-margin btn-add-product" runat="server" Text="Dodaj proizvod" OnClick="InsertProduct_Click" />
          </form>
         </div>
        <a runat="server" class="btn btn-primary btn-top-margin" href="~/Orders">Porudžbine</a>
















            <p class="segment-title">Lista proizvoda</p>
               <asp:DataList CssClass="products" ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
          <ItemTemplate>
              Id:
              <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
              Name:
              <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
              Price:
              <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
              Description:
              <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
<br />
          </ItemTemplate>
      </asp:DataList>
        

           
           <%}
           else {%>
              <p>Greška!<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDB3ConnectionString %>" SelectCommand="SELECT * FROM [Admin] WHERE ([AdminName] = @AdminName)">
                  <SelectParameters>
                      <asp:SessionParameter Name="AdminName" SessionField="AdminName" Type="String" />
                  </SelectParameters>
                  </asp:SqlDataSource>
           </p>
           <% }%>
      </div>

    
</body>
</html>
