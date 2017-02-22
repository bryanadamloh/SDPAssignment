<%@ Page Title="Create Reservation" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="CreateReservation.aspx.vb" Inherits="SDPAssignment.CreateReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
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
                <h1 class="text-center">Create New Reservation</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Create new reservation for customers
                </p>
                <hr class="style-eight" />

                <form>
                    <br />
                    <hr class="colorgraph" />

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                        <asp:TextBox runat="server" ID="FullName" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="HotelRoom" CssClass="control-label">Room Type</asp:Label>
                        <asp:DropDownList runat="server" ID="HotelRoom" CssClass="form-control" OnSelectedIndexChanged="HotelRoomValue" AutoPostBack="true">
                            <asp:ListItem Text="Select Hotel Room"></asp:ListItem>
                            <asp:ListItem Text="Family Suite"></asp:ListItem>
                            <asp:ListItem Text="Double Suite"></asp:ListItem>
                            <asp:ListItem Text="Queen Suite"></asp:ListItem>
                        </asp:DropDownList>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-In Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckIn" CssClass="form-control" required></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckOut" CssClass="control-label">Check-Out Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckOut" CssClass="form-control" required></asp:TextBox>
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
                    <div class="col-md-12">
                        <asp:Button runat="server" OnClick="AddReservation" Text="Confirm" CssClass="btn btn-primary btn-block" />
                    </div>
                </div>

                <hr class="colorgraph" />
            </div>
        </div>
    </div>

<script>
    $(document).ready(function () {
        $("#<%=CheckIn.ClientID%>").datepicker({
            minDate: 0,
            onSelect: function (selected) {
                var date = $(this).datepicker('getDate');
                date.setTime(date.getTime() + (1000 * 60 * 60 * 24 * 6));
                $("#<%=CheckOut.ClientID%>").datepicker("option", "maxDate", date);
                $("#<%=CheckOut.ClientID%>").datepicker("option", "minDate", $(this).datepicker('getDate'));
            }
        });

        $("#<%=CheckOut.ClientID%>").datepicker({
            minDate: 0,
        });
    });
</script>
</asp:Content>
