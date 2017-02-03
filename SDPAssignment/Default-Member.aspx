<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Member.Master" CodeBehind="Default-Member.aspx.vb" Inherits="SDPAssignment.Default_Member" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
/*Top content*/
.jumbotron {
    color:white;
    background:transparent;
}
.bg{
    background:url(../Images/homeImg.jpg) no-repeat center center;
    width:100%;
    height:100%;
    padding:150px 90px;
}
.carousel-inner img { 
    width: 100%;
    height: 100%;
    margin: auto;
}
.carousel-control.right, .carousel-control.left {
    background-image: none;
}
 /* Remove border and add padding to thumbnails */
.thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
}

.thumbnail p {
    margin-top: 15px;
    color: #555;
}

/* Black buttons with extra padding and without rounded borders */
.btn {
    color: #f1f1f1;
    transition: .2s;
}

/* On hover, the color of .btn will transition to white with black text */
.btn:hover, .btn:focus {
    border: 1px solid #333;
    background-color: #fff;
    color: #000;
}
</style>

    <div class="bg">
        <div class="jumbotron text-center">
            <h1 style="font-weight:600;">Orient Hotel</h1>
            <h2 style="margin-bottom:30px;">Welcome</h2>
            <p style="font-size:18px; font-weight:400; margin:10px;">Malaysia's top homestay-style hotel. A home away from home.</p>
            <div class="row">
	            <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Search" CssClass="control-label">Search Room</asp:Label>
                        <asp:TextBox runat="server" ID="Search" CssClass="form-control" Placeholder="Search Room Type" />
                    </div>
                </div>

                <div class='col-md-4'>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-In Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckIn" CssClass="form-control" TextMode="Date" />
                    </div>
                </div>

                <div class='col-md-4'>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="CheckIn" CssClass="control-label">Check-Out Date</asp:Label>
                        <asp:TextBox runat="server" ID="CheckOut" CssClass="form-control" TextMode="Date" />
                    </div>
                </div>
                    <a href="bookroom.aspx" class="btn btn-primary btn-lg" type="submit">Book A Room!</a>
             </div>
         </div>
    </div>

    <div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top:10px;">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
         <img src="Images/deluxe1500x930.jpg" alt="room1" />
          <div class="carousel-caption">
            <h3>Family Suite</h3>
            <p>Enjoy our luxurious and extraordinary hotel rooms.</p>
          </div> 
        </div>

        <div class="item">
         <img src="Images/hotel-interior-room0416.jpg" alt="room2" />
          <div class="carousel-caption">
            <h3>Double Suite</h3>
            <p>Comfortable environment with great services.</p>
          </div> 
        </div>

        <div class="item">
          <img src="Images/hotelroom.jpg" alt="room3" />
          <div class="carousel-caption">
            <h3>Queen Suite</h3>
            <p>Experience different lifestyle and be amazed.</p>
          </div> 
        </div>
      </div>

          <!-- Left and right controls -->
          <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

  <!-- /container -->
    <div class="row text-center" style="padding: 60px 50px;">
        <h2><strong>Hotel Rooms</strong></h2><br>
          <div class="col-sm-4 text-center">
            <div class="thumbnail">
              <img src="Images/deluxe1500x930.jpg" alt="Room1" width="400" height="300">
              <p><strong>Family Suite</strong></p>
              <p>Our Family Suite comes with a single king sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
                    <ul style="text-align:left;">
                      <li>Suitable for 4 pax or more</li>
                      <li>LCD TV</li>
                      <li>Small kitchen with Minibar</li>
                      <li>Wifi Available</li>
                    </ul>
              <a href="bookroom.aspx" class="btn btn-primary" type="submit">Check Availability</a>
            </div>
          </div>

          <div class="col-sm-4 text-center">
            <div class="thumbnail">
              <img src="Images/hotel-interior-room0416.jpg" alt="Room2" width="400" height="300">
              <p><strong>Double Suite</strong></p>
              <p>Our Double Suite comes with a double single sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
                <ul style="text-align:left;">
                    <li>Suitable for 2 pax</li>
                    <li>LCD TV</li>
                    <li>Small kitchen with Minibar</li>
                    <li>Wifi Available</li>
                </ul>
              <a href="bookroom.aspx" class="btn btn-primary" type="submit">Check Availability</a>
            </div>
          </div>

          <div class="col-sm-4 text-center">
            <div class="thumbnail">
              <img src="Images/hotelroom.jpg" alt="Room3" width="400" height="300">
              <p><strong>Queen Suite</strong></p>
              <p>Our Queen Suite comes with a double queen sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
                <ul style="text-align:left;">
                    <li>Suitable for 4 pax or more</li>
                    <li>LCD TV</li>
                    <li>Small kitchen with Minibar</li>
                    <li>Wifi Available</li>
                </ul>
              <a href="bookroom.aspx" class="btn btn-primary" type="submit">Check Availability</a>
            </div>
          </div>
        </div>
</asp:Content>
