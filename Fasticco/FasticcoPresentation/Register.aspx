<%@ Page Title="Registracija naloga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FasticcoPresentation.Register" EnableEventValidation="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row logReg">
        <div class="col-md-8">
            <img src="../imgLogin.jpg" class="img-responsive" alt="Login Image">
        </div>
        <div class="col-md-4 logReg">
            <h2>Registracija</h2>
            <p>Registrujte se tako što ćete uneti Vaše podatke u polja ispod.</p>
            <form>
              <div class="form-group">
                <label for="user">Korisničko ime:</label>
                <asp:TextBox ID="Username" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="user">Ime:</label>
                  <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
                 <div class="form-group">
                <label for="user">Prezime:</label>
                  <asp:TextBox ID="LastName" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="user">Mejl:</label>
                  <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="user">Telefon:</label>
                  <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="user">Adresa:</label>
                  <asp:TextBox ID="Address" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="pwd">Lozinka:</label>
                  <asp:TextBox ID="Password" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="pwd">Potvrdite lozinku:</label>
                  <asp:TextBox ID="PasswordConf" runat="server" CssClass="form-control"></asp:TextBox>
              </div>
                <asp:Button ID="RegisterBtn" CssClass="btn btn-primary btnLogReg" runat="server" Text="Registruj se" OnClick="RegisterBtn_Click" />
            </form>

        </div>
    </div>
</asp:Content>
