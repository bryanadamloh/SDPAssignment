<%@ Page Title="Update Payment" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="UpdatePayment.aspx.vb" Inherits="SDPAssignment.UpdatePayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
h1{
    font-weight: 600;
}
.colorgraph{
    height: 5px;
    border-top: 0;
    background: #c4e17f;
    border-radius: 5px;
    background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
hr.style-eight {
    padding: 0;
    border: none;
    border-top: medium double #333;
    color: #333;
    text-align: center;
}
hr.style-eight:after {
    content: "§";
    display: inline-block;
    position: relative;
    top: -0.7em;
    font-size: 1.5em;
    padding: 0 0.25em;
    background: white;
}
</style>

    <div class="container-fluid" style="padding: 90px 50px;">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <h1 class="text-center">Update Payment</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Update incomplete payments from customer
                </p>
                <hr class="style-eight" />

                <form>
                    <br />
                    <hr class="colorgraph" />

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ReservationID" CssClass="control-label">Reservation/Walk In ID</asp:Label>
                        <asp:TextBox runat="server" ID="ReservationID" CssClass="form-control" placeholder="Enter Reservation or Walk In ID"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="PaymentMethod" CssClass="control-label">Payment Method</asp:Label>
                        <asp:DropDownList runat="server" ID="PaymentMethod" CssClass="form-control" required>
                            <asp:ListItem Text="Select Payment Method"></asp:ListItem>
                            <asp:ListItem Text="Credit/Debit Card"></asp:ListItem>
                            <asp:ListItem Text="Deposit"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="TotalDue" CssClass="control-label">Total Amount</asp:Label>
                        <asp:TextBox runat="server" ID="TotalDue" CssClass="form-control" Enabled="false"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Amount" CssClass="control-label">Amount</asp:Label>
                        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" placeholder="Amount"></asp:TextBox>
                    </div>

                </form>

                <div class="row">
                    <div class="col-md-6">
                        <asp:Button runat="server" OnClick="SearchPayment" Text="Search" CssClass="btn btn-success btn-block" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button runat="server" OnClick="UpdatePayment" Text="Update" CssClass="btn btn-primary btn-block" />
                    </div>
                </div>

                <hr class="colorgraph" />
            </div>
        </div>
    </div>
</asp:Content>
