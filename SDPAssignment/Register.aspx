<%@ Page Title="Register" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="Register.aspx.vb" Inherits="SDPAssignment.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    margin-bottom: 30px;
}
</style>

    <div class="container" style="padding: 60px 50px;">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">

                <form role="form">
                    <h2 class="text-center">Orient Hotel Member Registration</h2>
                    <hr class="colorgraph" />
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtFName" CssClass="form-control input-lg" placeholder="First Name" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFName" CssClass="text-danger" ErrorMessage="First Name field is required." />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtLName" CssClass="form-control input-lg" placeholder="Last Name" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLName" CssClass="text-danger" ErrorMessage="Last Name field is required." />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control input-lg" placeholder="Email Address" Textmode="Email" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email field is required." />
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control input-lg" placeholder="Username" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="Username field is required." />
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control input-lg" placeholder="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password field is required." />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control input-lg" placeholder="Confirm Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="Confirm Password field is required." />
                                <asp:CompareValidator runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirm password does not match." />
                            </div>
                        </div>

                        <div class="col-md-12 text-center">
                            <p>By Clicking <strong class="label label-primary">Register</strong>, you agree to become a Orient Hotel Member.
                                Click <strong class="label label-success">Sign In</strong> if you already have an account.
                            </p>
                        </div>
                    </div>

                    <hr class="colorgraph" />
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-primary btn-block btn-lg" />
                        </div>
                        <div class="col-md-6">
                            <a href="Login.aspx" class="btn btn-success btn-block btn-lg">Sign In</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>  
</asp:Content>
