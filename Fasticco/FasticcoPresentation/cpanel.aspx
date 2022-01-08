<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cpanel.aspx.cs" Inherits="FasticcoPresentation.cpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upravljanje restorana</title>

    <webopt:bundlereference runat="server" path="~/Content/css" />
</head>
<body>
      <div class="container">
          <p>Unesi proizvod</p>
          <form runat="server">
              <asp:Label ID="Label11" runat="server" Text="Naziv proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductName" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="Label12" runat="server" Text="Cena proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductPrice" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Label ID="Label13" runat="server" Text="Opis proizvoda:"></asp:Label>
              <asp:TextBox ID="ProductDescription" CssClass="form-control" runat="server"></asp:TextBox>
              <asp:Button ID="InsertProduct" CssClass="btn btn-success" runat="server" Text="Dodaj proizvod" OnClick="InsertProduct_Click" />
          </form>
          
      </div>
</body>
</html>
