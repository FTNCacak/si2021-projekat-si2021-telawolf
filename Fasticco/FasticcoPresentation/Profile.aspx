<%@ Page Title="Profil korisnika" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="FasticcoPresentation.Profile" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
    <style>
   
        td{
            width: 100%;
            box-shadow: 4px 4px 12px rgba(0, 0, 0, 0.00);
        }

        tr{
        width: 100%;
        }

        .profileInfo{
            width:100%;
            display:flex;
        }


        .profileInfo div{
            margin-left: 30px;
        }

        @media only screen and (max-width: 600px) {

          .profileInfo{
           flex-direction: column;
        }

        .profileInfo div{
            margin-left:0;
            margin-top:30px;
            width:100%;
        }
        }


    </style>
    <div class="container profilePage">
        
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDBConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([Username] = @Username)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Username" SessionField="UserName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
            <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                      <div class="profileInfo">
            <div>
                <img src="profile.png" />
            </div>
                     <div>
                        <div class="name"> <%# Eval("Name") %> <%# Eval("LastName") %></div>
                        <div class="username"><%# Eval("Username") %></div>
                        <div class="mail"><img src="letter.png" /> <%# Eval("Email") %></div>
                        <div class="phone"><img src="phone.png" /> <%# Eval("Phone") %></div>

                         <a runat="server" class="btn btn-primary orderBtn"  href="~/">Naruči nešto novo...</a>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDBConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([Username] = @Username)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Username" SessionField="UserName" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                 </div>
                </ItemTemplate>
            </asp:DataList>


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RestaurantDBConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([Username] = @Username)">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="UserName" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


         <asp:DataList ID="DataList2" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource2">
                 <ItemTemplate>
                     Porudžbina:
                     <asp:Label ID="OrderTextLabel" runat="server" Text='<%# Eval("OrderText") %>' />
                     Šifra porudžbine:
                     <asp:Label ID="OrderIdLabel" runat="server" Text='<%# Eval("OrderId") %>' />
                     Ukupna cena:
                     <asp:Label ID="TotalPriceLabel" runat="server" Text='<%# Eval("TotalPrice") %>' />
<br />
                 </ItemTemplate>
             </asp:DataList>
        </div>
    



  
</asp:Content>
