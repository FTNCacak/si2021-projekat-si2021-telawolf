<%@ Page Title="Registracija naloga" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FasticcoPresentation.Register" %>
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
                <input type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="user">Ime i prezime:</label>
                <input type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="user">Mejl:</label>
                <input type="email" class="form-control" />
              </div>
              <div class="form-group">
                <label for="user">Telefon:</label>
                <input type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="user">Adresa:</label>
                <input type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="pwd">Lozinka:</label>
                <input type="password" class="form-control" id="pwd">
              </div>
              <div class="form-group">
                <label for="pwd">Potvrdite lozinku:</label>
                <input type="password" class="form-control" id="pwd">
              </div>
              <button type="submit" class="btn btn-primary btnLogReg">Registrujte se</button>
            </form>

        </div>
    </div>

</asp:Content>
