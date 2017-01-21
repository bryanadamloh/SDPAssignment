<%@ Page Title="Room Bookings" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="bookroom.aspx.vb" Inherits="SDPAssignment.bookroom" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 
    <div class="col-lg-12">
                <h1 class="page-header" style="text-align:center"><%:Title %></h1>
        </div>
 <div class="row">
<!-- Search bar -->
	    <div class="col-md-3">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search room type" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </div>
                </div>
            </div>
        </div>
     
<!-- /End Search Bar -->
<!-- Calendar is not functional -->
            <div class='col-md-3'>
                <div class="form-group">
                    <div class='input-group date' id='datetimepicker6'>
                        <input type='text' class="form-control" placeholder="Check-in date" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class='col-md-3'>
                <div class="form-group">
                    <div class='input-group date' id='datetimepicker7'>
                        <input type='text' class="form-control" placeholder="Check-out date" />
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
 <!-- /End Calendar -->
    </div>
    <br />

        <div class="row text-center">
          <div class="col-md-4">
              <p><strong>Family Suite</strong></p>
              <img src="Images/deluxe1500x930.jpg" alt="Room1" width="300" height="200">
          </div>
          <div class="col-md-4 text-left">
              <br />
              <br />
              <p style="text-align:justify">Our Family Suite comes with a single king sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
              <ul style="text-align:left">
              <li>Suitable for 4 pax or more</li>
              <li>LCD TV</li>
              <li>Small kitchen with Minibar</li>
              <li>Wifi Available</li>
            </ul>
          </div>
          <div class="col-md-4">
              <br />
              <br />
              <asp:Label runat="server" AssociatedControlID="pax" CssClass="col-md-3">Pax</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="pax" ID="pax">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </div>
              <asp:Label runat="server" AssociatedControlID="nights" CssClass="col-md-3">Nights</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="nights" ID="nights">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select>
                        </div>
             
                     <div class="col-md-12 text-center"> 
                         <br />
                            <br />
                     <a href="Payment.aspx" class="btn btn-primary" type="submit">Book a room!</a>
                 </div>
          </div>
        </div>

    <br />
    <br />

    <div class="row text-center">
          <div class="col-md-4">
              <p><strong>Double Suite</strong></p>
              <img src="Images/hotel-interior-room0416.jpg" alt="Room1" width="300" height="200">
          </div>
          <div class="col-md-4 text-left">
              <br />
              <br />
              <p style="text-align:justify">Our Double Suite comes with a double single sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
              <ul style="text-align:left">
              <li>Suitable for 2 pax</li>
              <li>LCD TV</li>
              <li>Small kitchen with Minibar</li>
              <li>Wifi Available</li>
            </ul>
          </div>
          <div class="col-md-4">
              <br />
              <br />
              <asp:Label runat="server" AssociatedControlID="pax" CssClass="col-md-3">Pax</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="pax" ID="Select1">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </div>
              <asp:Label runat="server" AssociatedControlID="nights" CssClass="col-md-3">Nights</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="nights" ID="Select2">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select>
                        </div>
             
                     <div class="col-md-12 text-center"> 
                         <br />
                            <br />
                     <a href="Payment.aspx" class="btn btn-primary" type="submit">Book a room!</a>
                 </div>
          </div>
        </div>

    <br />
    <br />

    <div class="row text-center">
          <div class="col-md-4">
              <p><strong>Queen Suite</strong></p>
              <img src="Images/hotel-room-10.jpg" alt="Room1" width="325" height="200">
          </div>
          <div class="col-md-4 text-left">
              <br />
              <br />
              <p style="text-align:justify">Our Queen Suite comes with a double queen sized bed with great ambient lights, breathtaking scenery and comfortable environment.</p>
              <ul style="text-align:left">
              <li>Suitable for 4 pax or more</li>
              <li>LCD TV</li>
              <li>Small kitchen with Minibar</li>
              <li>Wifi Available</li>
            </ul>
          </div>
          <div class="col-md-4">
              <br />
              <br />
              <asp:Label runat="server" AssociatedControlID="pax" CssClass="col-md-3">Pax</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="pax" ID="Select3">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                            </select>
                        </div>
              <asp:Label runat="server" AssociatedControlID="nights" CssClass="col-md-3">Nights</asp:Label>
                        <div class="col-md-3">
                            <select runat="server" class="form-control" name="nights" ID="Select4">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                            </select>
                        </div>
             
                     <div class="col-md-12 text-center"> 
                         <br />
                            <br />
                     <a href="Payment.aspx" class="btn btn-primary" type="submit">Book a room!</a>
                 </div>
          </div>
        </div>
</asp:Content>
