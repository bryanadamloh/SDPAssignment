<%@ Page Title="Room Bookings" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="bookroom.aspx.vb" Inherits="SDPAssignment.bookroom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
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
h2{
    font-size: 34px;
    font-weight: 500;
    margin-bottom: 30px;
}
h4{
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
}
</style>
     
    <div class="container-fluid" style="margin-top:90px;">
        <h2 class="text-center">Room Bookings</h2>
            <hr class="colorgraph" />
    </div>

    <div class="container-fluid" style="padding:60px 50px;">
        <div class="row">
            <div class="col-md-4">
                <h4 class="text-center">Family Suite</h4>
                <img src="Images/deluxe1500x930.jpg" class="center-block" style="width:500px; height:300px;" />
            </div>

            <div class="col-md-4">
               <div class="row" style="margin-top:120px;">
                    <h4 style="text-align:justify">Our Family Suite comes with a single king sized bed with great ambient lights, breathtaking scenery and comfortable environment.</h4>
                    <ul style="text-align:left">
                      <li>Suitable for 4 pax or more</li>
                      <li>LCD TV</li>
                      <li>Small kitchen with Minibar</li>
                      <li>Wifi Available</li>
                    </ul>
                   <asp:Button runat="server" OnClick="Room1Payment" CssClass="btn btn-primary" Text="Book A Room!" />
               </div>
            </div>

            <div class="col-md-4">
                <div class="jumbotron jumbotron-flat center-block" style="margin-top:60px;">
                    <div class="center">
                        <h2>PRICE PER BOOKING:</h2>
                    </div>
                    <asp:Label runat="server" ID="Room1Price" style="font-size:80px;">RM600</asp:Label>                 
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid" style="padding:60px 50px;">
        <div class="row">
            <div class="col-md-4">
                <h4 class="text-center">Double Suite</h4>
                <img src="Images/hotel-interior-room0416.jpg" class="center-block" style="width:500px; height:300px;" />
            </div>

            <div class="col-md-4">
                <div class="row" style="margin-top:120px;">
                    <h4 style="text-align:justify">Our Double Suite comes with a double single sized bed with great ambient lights, breathtaking scenery and comfortable environment.</h4>
                    <ul style="text-align:left">
                        <li>Suitable for 2 pax</li>
                        <li>LCD TV</li>
                        <li>Small kitchen with Minibar</li>
                        <li>Wifi Available</li>
                    </ul>
                    <asp:Button runat="server" OnClick="Room2Payment" CssClass="btn btn-primary" Text="Book A Room!" />
                </div>
            </div>

            <div class="col-md-4">
                <div class="jumbotron jumbotron-flat center-block" style="margin-top:60px;">
                    <div class="center">
                        <h2>PRICE PER BOOKING:</h2>
                    </div>
                    <asp:Label runat="server" ID="Room2Price" style="font-size:80px;">RM500</asp:Label>                 
                </div>
            </div>

        </div>
    </div>

    <div class="container-fluid" style="padding:60px 50px;">
        <div class="row">
            <div class="col-md-4">
                <h4 class="text-center">Queen Suite</h4>
                <img src="Images/hotelroom.jpg" class="center-block" style="width:500px; height:300px;"/>
            </div>

            <div class="col-md-4">
                <div class="row" style="margin-top:120px;">
                    <h4 style="text-align:justify">Our Queen Suite comes with a double queen sized bed with great ambient lights, breathtaking scenery and comfortable environment.</h4>
                    <ul style="text-align:left">
                      <li>Suitable for 4 pax or more</li>
                      <li>LCD TV</li>
                      <li>Small kitchen with Minibar</li>
                      <li>Wifi Available</li>
                    </ul>
                    <asp:Button runat="server" OnClick="Room3Payment" CssClass="btn btn-primary" Text="Book A Room!" />
                </div>
            </div>

            <div class="col-md-4">
                <div class="jumbotron jumbotron-flat center-block" style="margin-top:60px;">
                    <div class="center">
                        <h2>PRICE PER BOOKING:</h2>
                    </div>
                    <asp:Label runat="server" ID="Room3Price" style="font-size:80px;">RM700</asp:Label>                 
                </div>
            </div>
        </div>
    </div>
</asp:Content>
