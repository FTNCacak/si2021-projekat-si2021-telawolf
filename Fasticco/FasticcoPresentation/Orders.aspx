<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="FasticcoPresentation.Orders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pristigle porudžbine</title>

      <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/logo.png" rel="shortcut icon" type="image/x-icon" />

    <style>
        body{
            padding:0;
            margin:0;
            box-sizing:border-box;
        }
        .orders{
            width:100%;
            padding:20px;
            background:#cccccc;
        }
        table{
            width:100%;
        }


        td{
            margin-bottom: 100px;
            padding:20px;
            background: #ffffff;
            border-bottom: 20px solid #cccccc;
        }

        .orderText{
            font-weight:bold;
        }
    </style>
</head>
<body>
        <form id="form1" runat="server">
        <div class="orders">

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDBConnectionString2 %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Porudžbina:
                    <asp:Label ID="OrderTextLabel" CssClass="orderText" runat="server" Text='<%# Eval("OrderText") %>' />
                    <br />
                    Korisnik:
                    <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    <br />
                    Šifra porudžbine:
                    <asp:Label ID="OrderIdLabel" runat="server" Text='<%# Eval("OrderId") %>' />
                    <br />
                    Ukupna cena:
                    <asp:Label ID="TotalPriceLabel" runat="server" Text='<%# Eval("TotalPrice") %>' />
                    <br />
                    Adresa:
                    <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    <br />
                    Telefon:
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                    <br />
                    Vreme poručivanja:
                    <asp:Label ID="OrderTimeLabel" runat="server" Text='<%# Eval("OrderTime") %>' />
                    <br />
                      Status porudžbine:
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Status") %>' />
                    <br />
                    <a href="Orders?OrderId=<%# Eval("Id") %>">AAAA</a>
<br />
                </ItemTemplate>
            </asp:DataList>

        </div>
        </form>
</body>
</html>
