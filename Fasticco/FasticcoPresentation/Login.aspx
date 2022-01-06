<%@ Page Title="Prijava korisnika" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FasticcoPresentation.Login" EnableEventValidation="false"%>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row logReg">
        <div class="col-md-8">
            <img src="../imgLogin.jpg" class="img-responsive" alt="Login Image">
        </div>
        <div class="col-md-4 logReg">
            <h2>Dobrodošli!</h2>
            <p>Prijavite se tako što ćete uneti Vaše podatke u polja ispod.</p>
            <form>
              <div class="form-group">
                <label for="user">Korisničko ime:</label>
                  <asp:TextBox ID="Username" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="pwd">Lozinka:</label>
                <asp:TextBox ID="Password" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
                <asp:Button ID="LoginBtn" runat="server" Text="Prijavite se" CssClass="btn btn-primary" OnClick="LoginBtn_Click" />
            </form>

        </div>
    </div>

</asp:Content>
