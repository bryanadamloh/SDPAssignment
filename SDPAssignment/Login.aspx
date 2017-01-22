<%@ Page Title="Login" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="Register.aspx.vb" Inherits="SDPAssignment.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<style>
.colorgraph{
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
h2{
    font-size: 34px;
    font-weight: 500;
    margin-bottom: 20px;
}
.checkbox .btn,
  .checkbox-inline .btn {
    padding-left: 2em;
    min-width: 8em;
  }
 
  .checkbox label,
  .checkbox-inline label {
    text-align: left;
    padding-left: 0.5em;
  }
</style>

    <div class="container" style="padding: 60px 50px;">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <form role="form">
                    <h2 class="text-center">Orient Hotel Login</h2>
                    <h4 class="text-center">Log in to your Orient account.</h4>
                    <hr class="colorgraph" />

                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Username" CssClass="form-control input-lg" placeholder="Username" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" CssClass="text-danger" ErrorMessage="Username field is required." />
                    </div>

                    <div class="form-group">
                        <asp:TextBox runat="server" ID="Password" CssClass="form-control input-lg" TextMode="Password" placeholder="Password" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Password field is required." />
                    </div>

                    <div class="form-group">
                        <div class="checkbox">
                            <label class="btn btn-info">
                                <asp:CheckBox runat="server" ID="RememberMe" Text="Remember Me?" Checked="true"/>
                            </label>
                        </div>
                    </div>

                    <hr class="colorgraph" />
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Button runat="server" OnClick="LogIn" Text="Log In" CssClass="btn btn-lg btn-success btn-block" />
                        </div>
                        <div class="col-md-6">
                            <a href="Register.aspx" class="btn btn-lg btn-primary btn-block">Register</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</asp:Content>
