<%@ Page Title="Staff Homepage" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="StaffHome.aspx.vb" Inherits="SDPAssignment.StaffHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
.bg {
    background: url(../Images/staffImg.jpg) no-repeat center center;
    width:100%;
    height:100%;
    padding:100px 100px;
}
.jumbotron{
    color:white;
    background:transparent;
}
h2{
    font-size: 34px;
    font-weight: 500;
    margin-bottom: 30px;
}
h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
}
.panel {
    border: 1px solid #2E333C; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
}
.panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
}
.panel-heading {
    color: #fff !important;
    background-color: #2E333C !important;
    padding: 20px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
}
.panel-footer {
    background-color: white !important;
}
</style>

    <div class="bg">
        <div class="jumbotron text-center">
            <h1 style="font-weight: 600;">Orient Hotel</h1>
                <h2>Welcome!</h2>
                    <p style="font-size:18px; font-weight:400; margin:10px;">Webpage for hotel staff management</p>
                </div>
            </div>

    <div class="container-fluid" style="padding: 60px 50px;">
        <div class="text-center">
            <h2>Reservation Management</h2>
            <h4>Section which manages customer's reservation</h4>
        </div>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Create Reservation</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Create new reservation for new customers.</p>
                    </div>
                    <div class="panel-footer">
                        <a href="CreateReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">Create</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Modify Reservation</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Modify and update customer's reservation</p>
                    </div>
                    <div class="panel-footer">
                        <a href="ModifyReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">Modify/Update</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Search Reservation</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Search for customer's reservation</p>
                    </div>
                    <div class="panel-footer">
                        <a href="ModifyReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">Search</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Delete Reservation</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Delete customer's reservation</p>
                    </div>
                    <div class="panel-footer">
                        <a href="DeleteReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="padding: 60px 50px;">
        <div class="text-center">
            <h2>Front Desk Management</h2>
            <h4>Section which manages customer's information and room status</h4>
        </div>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Manage Check-in</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Manages customer's checkin</p>
                    </div>
                    <div class="panel-footer">
                        <a href="CheckInWithReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">With Reservation</a>
                        <a href="CheckInWithoutReservation.aspx" class="btn btn-primary" style="margin: 10px 0;">Without Reservation</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Manage Check-out</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Manages customer's checkout</p>
                    </div>
                    <div class="panel-footer">
                        <a href="CheckOut.aspx" class="btn btn-primary" style="margin: 10px 0;">Check-Out</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Manage Payment</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Manages customer's transaction and payment</p>
                    </div>
                    <div class="panel-footer">
                        <a href="ManagePayment.aspx" class="btn btn-primary" style="margin: 10px 0;">Payment</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Search Customer's Details</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Search for customer's information</p>
                    </div>
                    <div class="panel-footer">
                        <a href="#" class="btn btn-primary" style="margin: 10px 0;">Search</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="padding: 60px 50px;">
        <div class="text-center">
            <h2>Room Management</h2>
            <h4>Section which manages hotel rooms</h4>
        </div>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Create Hotel Rooms</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Create a new hotel room</p>
                    </div>
                    <div class="panel-footer">
                        <a href="CreateRoom.aspx" class="btn btn-primary" style="margin: 10px 0;">Create</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Modify Hotel Rooms</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Modify and update hotel rooms</p>
                    </div>
                    <div class="panel-footer">
                        <a href="ModifyRoom.aspx" class="btn btn-primary" style="margin: 10px 0;">Modify/Update</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Search Hotel Rooms</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Search for available hotel rooms</p>
                    </div>
                    <div class="panel-footer">
                        <a href="SearchRoom.aspx" class="btn btn-primary" style="margin: 10px 0;">Search</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="panel panel-default text-center">
                    <div class="panel-heading">
                        <h3>Delete Hotel Rooms</h3>
                    </div>
                    <div class="panel-body">
                        <p style="font-size:18px; font-weight:400; margin:10px;">Delete hotel rooms</p>
                    </div>
                    <div class="panel-footer">
                        <a href="DeleteRoom.aspx" class="btn btn-primary" style="margin: 10px 0;">Delete</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
