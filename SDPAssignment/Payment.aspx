﻿<%@ Page Title="Payment" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="Payment.aspx.vb" Inherits="SDPAssignment.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
.bg-grey {
      background-color: #f6f6f6;
}
.colorgraph{
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
.jumbotron-flat {
  background-color: #4DB8FF;
  height: 100%;
  border: 1px solid #4DB8FF;
  background: white;
  width: 100%;
  text-align: center;
  overflow: auto;
}
</style>

    <div class="container" style="padding: 70px 50px;">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Payment Information</h1>
                <hr class="colorgraph"/>
                
                <div class="alert alert-info text-justify">
                    Please choose the payment method below. If you choose Debit/Credit Card, please enter the information needed
                    to complete the transaction. If you choose Deposit, please enter the remaining amount needed to complete the transaction 
                    and pay the amount at the reception during the arrival.
                </div>

                <form>
                    <br>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                        <asp:TextBox runat="server" ID="FullName" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-In Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckIn" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-Out Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckOut" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="PaymentMethod" CssClass="control-label">Payment Method</asp:Label>
                        <asp:DropDownList runat="server" ID="PaymentMethod" CssClass="form-control">
                            <asp:ListItem Text="Select Payment Method"></asp:ListItem>
                            <asp:ListItem Text="Credit/Debit Card"></asp:ListItem>
                            <asp:ListItem Text="Deposit"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Amount" CssClass="control-label">Amount</asp:Label>
                        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" placeholder="Amount"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Comment" CssClass="control-label">Additional Comment</asp:Label>
                        <asp:TextBox runat="server" ID="Comment" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>

                    <div class="jumbotron jumbotron-flat center-block" style="margin-top:60px;">
                        <div class="center">
                            <h2>TOTAL PRICE:</h2>
                        </div>
                        <asp:Label runat="server" ID="RoomPrice" Text="" style="font-size:80px;"></asp:Label>
                    </div>

                </form>

                <div class="row">
                    <div class="col-md-12">
                        <asp:Button runat="server" Text="Confirm" CssClass="btn btn-primary btn-block" />
                    </div>
                </div>
                <hr class="colorgraph"/>
            </div>
        </div>
    </div>
</asp:Content>
