<%@ Page Title="Delete Reservation" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="DeleteReservation.aspx.vb" Inherits="SDPAssignment.DeleteReservation" %>
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
                <h1 class="text-center">Delete Reservation</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Delete reservation for customers
                </p>
                <hr class="style-eight" />

                <form>
                    <br />
                    <hr class="colorgraph" />

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="ReservationID" CssClass="control-label">Reservation ID</asp:Label>
                        <asp:TextBox runat="server" ID="ReservationID" CssClass="form-control" placeholder="Enter Reservation ID"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                        <asp:TextBox runat="server" ID="FullName" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HotelRoom" CssClass="control-label">Room Type</asp:Label>
                        <asp:DropDownList runat="server" ID="HotelRoom" CssClass="form-control">
                            <asp:ListItem Text="Select Hotel Room"></asp:ListItem>
                            <asp:ListItem Text="Family Suite"></asp:ListItem>
                            <asp:ListItem Text="Double Suite"></asp:ListItem>
                            <asp:ListItem Text="Queen Suite"></asp:ListItem>
                        </asp:DropDownList>
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
                        <asp:Label runat="server" AssociatedControlID="TotalDue" CssClass="control-label">Total Amount</asp:Label>
                        <asp:TextBox runat="server" ID="TotalDue" CssClass="form-control" Enabled="false"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Amount" CssClass="control-label">Amount</asp:Label>
                        <asp:TextBox runat="server" ID="Amount" CssClass="form-control" placeholder="Amount"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Comment" CssClass="control-label">Additional Comment</asp:Label>
                        <asp:TextBox runat="server" ID="Comment" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                    </div>

                </form>

                <div class="row">
                    <div class="col-md-6">
                        <asp:Button runat="server" Text="Search" CssClass="btn btn-success btn-block" />
                    </div>
                    <div class="col-md-6">
                        <asp:Button runat="server" Text="Delete" CssClass="btn btn-danger btn-block" />
                    </div>
                </div>

                <hr class="colorgraph" />
            </div>
        </div>
    </div>
</asp:Content>
