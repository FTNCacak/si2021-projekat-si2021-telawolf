<%@ Page Title="Prijava korisnika" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FasticcoPresentation.Login" %>
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
                <input type="text" class="form-control" />
              </div>
              <div class="form-group">
                <label for="pwd">Lozinka:</label>
                <input type="password" class="form-control" id="pwd">
              </div>
              <button type="submit" class="btn btn-primary">Prijavite se</button>
            </form>

        </div>
    </div>

</asp:Content>
