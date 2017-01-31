<%@ Page Title="Reservation Management" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="ManageReservation.aspx.vb" Inherits="SDPAssignment.ManageReservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
h1{
      font-weight: 600;
}
p{
    font-size:14px;
    font-weight:600;
    margin-top:20px;
    color: #606060;
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

    <div class="container" style="padding:90px 50px;">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>Reservation Management</h1>
                <p style="font-size:14px; font-weight:600; margin-top:20px;">In this section, staffs can create, modify, search and delete
                    customer's reservation and check the reservation information made by customers.
                </p>
                <hr class="style-eight" />
            </div>
        </div>

        <ul class="nav nav-tabs">
            <li><a data-toggle="tab" href="#reservation">Reservation Management</a></li>
            <li class="active"><a data-toggle="tab" href="#create">Create New Reservation</a></li>
            <li><a data-toggle="tab" href="#modify">Modify/Update Reservation</a></li>
            <li><a data-toggle="tab" href="#search">Search Reservation</a></li>
            <li><a data-toggle="tab" href="#delete">Delete Reservation</a></li>
        </ul>

        <div class="row">
            <div class="col-md-6 col-md-offset-3 tab-content">
                <div id="create" class="tab-pane fade in active">

                    <form>
                        <br />
                        <hr class="colorgraph" />

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                            <asp:TextBox runat="server" ID="FullName" CssClass="form-control" Placeholder="Full Name"/>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="RoomType" CssClass="control-label">Room Type</asp:Label>
                            <asp:DropDownList runat="server" ID="RoomType" CssClass="form-control">
                                <asp:ListItem Text="Select Room Type"></asp:ListItem>
                                <asp:ListItem Text="Family Suite"></asp:ListItem>
                                <asp:ListItem Text="Double Suite"></asp:ListItem>
                                <asp:ListItem Text="Queen Suite"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-In Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckIn" CssClass="form-control" TextMode="Date" />
                        </div>
                       
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckOut" CssClass="control-label">Check-Out Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckOut" CssClass="form-control" TextMode="Date" />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Payment" CssClass="control-label">Payment Method</asp:Label>
                            <asp:DropDownList runat="server" ID="Payment" CssClass="form-control">
                                <asp:ListItem Text="Select Payment Method"></asp:ListItem>
                                <asp:ListItem Text="Credit/Debit Card"></asp:ListItem>
                                <asp:ListItem Text="Deposit"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="DepAmount" CssClass="control-label">Amount</asp:Label>
                            <asp:TextBox runat="server" ID="DepAmount" CssClass="form-control" Placeholder="Amount" />
                        </div>

                        <hr class="colorgraph" />

                        <div class="pull-left">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Create" /> 
                        </div>
                    </form>
                </div>

                <div id="modify" class="tab-pane fade">

                    <form>
                        <br />
                        <hr class="colorgraph" />

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ReservationID" CssClass="control-label">Enter Reservation ID</asp:Label>
                            <asp:TextBox runat="server" ID="ReservationID" CssClass="form-control" Placeholder="Reservation ID" />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                            <asp:TextBox runat="server" ID="FullName1" CssClass="form-control" Placeholder="Full Name" Enabled="false"/>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="RoomType" CssClass="control-label">Room Type</asp:Label>
                            <asp:DropDownList runat="server" ID="RoomType1" CssClass="form-control">
                                <asp:ListItem Text="Select Room Type"></asp:ListItem>
                                <asp:ListItem Text="Family Suite"></asp:ListItem>
                                <asp:ListItem Text="Double Suite"></asp:ListItem>
                                <asp:ListItem Text="Queen Suite"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-In Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckIn1" CssClass="form-control" TextMode="Date" />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckOut" CssClass="control-label">Check-Out Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckOut1" CssClass="form-control" TextMode="Date" />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="DepAmount" CssClass="control-label">Amount</asp:Label>
                            <asp:TextBox runat="server" ID="DepAmount1" CssClass="form-control" Placeholder="Amount" Enabled="false"/>
                        </div>

                        <hr class="colorgraph" />

                        <div class="pull-left">
                            <asp:Button runat="server" CssClass="btn btn-info" Text="Enter" />
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Update" />
                        </div>
                    </form>
                </div>

                <div id="search" class="tab-pane fade">

                    <form>
                        <br />
                        <hr class="colorgraph" />

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ReservationID1" CssClass="control-label">Enter Reservation ID</asp:Label>
                            <asp:TextBox runat="server" ID="ReservationID1" CssClass="form-control" Placeholder="Reservation ID" />
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="FullName" CssClass="control-label">Full Name</asp:Label>
                            <asp:TextBox runat="server" ID="FullName2" CssClass="form-control" Placeholder="Full Name" Enabled="false"/>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="RoomType2" CssClass="control-label">Room Type</asp:Label>
                            <asp:DropDownList runat="server" ID="RoomType2" CssClass="form-control" Enabled="false">
                                <asp:ListItem Text="Select Room Type"></asp:ListItem>
                                <asp:ListItem Text="Family Suite"></asp:ListItem>
                                <asp:ListItem Text="Double Suite"></asp:ListItem>
                                <asp:ListItem Text="Queen Suite"></asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckIn2" CssClass="control-label">Check-In Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckIn2" CssClass="form-control" TextMode="Date" Enabled="false"/>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="CheckOut2" CssClass="control-label">Check-Out Date</asp:Label>
                            <asp:TextBox runat="server" ID="CheckOut2" CssClass="form-control" TextMode="Date" Enabled="false"/>
                        </div>

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="DepAmount" CssClass="control-label">Amount</asp:Label>
                            <asp:TextBox runat="server" ID="DepAmount2" CssClass="form-control" Placeholder="Amount" Enabled="false"/>
                        </div>

                        <hr class="colorgraph" />

                        <div class="pull-left">
                            <asp:Button runat="server" CssClass="btn btn-primary" Text="Search" />
                        </div>
                    </form>
                </div>

                <div id="delete" class="tab-pane fade">

                    <form>
                        <br />
                        <hr class="colorgraph" />

                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ReservationID2" CssClass="control-label">Enter Reservation ID</asp:Label>
                            <asp:TextBox runat="server" ID="ReservationID2" CssClass="form-control" Placeholder="Reservation ID" />
                        </div>

                        <hr class="colorgraph" />

                        <div class="pull-left">
                            <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#confirmDelete">Delete</button>

                            <div class="modal fade" id="confirmDelete" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Confirm Deletion</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>Are you sure you want to delete this reservation?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button runat="server" CssClass="btn btn-danger" Text="Confirm Delete" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
