<%@ Page Title="Payment" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="Payment.aspx.vb" Inherits="SDPAssignment.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
.bg-grey {
      background-color: #f6f6f6;
}
</style>

    <div id="payment" class="container" style="padding: 60px 50px;">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Payment Information</h1>
                <hr />
                
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
                        <asp:Label runat="server" AssociatedControlID="Comment" CssClass="control-label">Additional Comment</asp:Label>
                        <asp:TextBox runat="server" ID="Comment" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>

                </form>
            </div>
        </div>
    </div>

    <div class="container bg-grey" style="padding: 60px 50px;">
        <div class="row">
            <div class="col-md-12">
                <h1 class="text-center">Payment Method</h1>
                <hr />

                <div class="row">
                    <div class="col-md-6">
                        <div class="tab-content">
                            <div id="card" class="tab-pane fade in active">

                                <form>
                                    <br />

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="CardName" CssClass="control-label">Name on Debit/Credit Card</asp:Label>
                                        <asp:TextBox runat="server" ID="CardName" CssClass="form-control" Placeholder="Full Name"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="CardNum" CssClass="control-label">Card Number</asp:Label>
                                        <asp:TextBox runat="server" ID="CardNum" CssClass="form-control" Placeholder="1111 2222 3333 4444"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Address" CssClass="control-label">Billing Address</asp:Label>
                                        <asp:TextBox runat="server" ID="Address" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="CVC" CssClass="control-label">CVC</asp:Label>
                                        <asp:TextBox runat="server" ID="CVC" CssClass="form-control" Placeholder="ex. 821"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Month" CssClass="control-label">Expiration Month</asp:Label>
                                        <asp:TextBox runat="server" ID="Month" CssClass="form-control" Placeholder="MM"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Year" CssClass="control-label">Expiration Year</asp:Label>
                                        <asp:TextBox runat="server" ID="Year" CssClass="form-control" Placeholder="YYYY"></asp:TextBox>
                                    </div>

                                    <br />

                                    <div class="form-group">
                                        <asp:Button runat="server" OnClick="card_Click" CssClass="btn btn-primary btn-block" Text="Continue →" />
                                    </div>
                                </form>

                            </div>
                        
                   <div id="deposit" class="tab-pane fade">

                                <form>
                                    <br />

                                    <div class="form-group">
                                        <asp:Label runat="server" AssociatedControlID="Amount" CssClass="control-label">Amount</asp:Label>
                                        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" Placeholder="Enter the deposit amount"></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:Button runat="server" OnClick="deposit_Click" CssClass="btn btn-primary btn-block" Text="Continue →" />
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">
                        <br />
                        <div class="alert alert-info text-justify">Please choose the payment method below. If you choose Debit/Credit Card, please enter the information needed
                            to complete the transaction. If you choose Deposit, please enter the amount needed to complete the transaction and pay the amount at the 
                            reception during the arrival.
                        </div>
                        <br />
                        <div class="btn-group-vertical btn-block">
                            <a class="btn btn-default" data-toggle="tab" style="text-align:left;" href="#card">Debit/Credit Card</a>
                            <a class="btn btn-default" data-toggle="tab" style="text-align:left;" href="#deposit">Deposit</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
