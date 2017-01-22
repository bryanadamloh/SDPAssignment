<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="About.aspx.vb" Inherits="SDPAssignment.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
.bg-grey {
      background-color: #f6f6f6;
}
h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
      margin-bottom: 30px;
}
h4 {
      font-size: 19px;
      line-height: 1.375em;
      color: #303030;
      font-weight: 400;
      margin-bottom: 30px;
  }
</style>

   <div id="about" class="container-fluid" style="padding: 60px 50px;">
  <div class="row">
      <img class="img-responsive" src="Images/luxury-hotels-lobby-with-luxury-hotel-lobby-plan-7744-wallpapers-hd-home-design-photo.jpg" />
    <div class="col-md-12">
      <h2 class="text-center">About Orient Hotel</h2>
      <h4 class="text-center">Founded in 2000. Malaysia's finest hotel & resort located in the heart of the city, Kuala Lumpur.</h4><br>
      <p class="text-justify">
          Since the first hotel was built in 2000, Orient Hotel has contributed great hospitality and services to our guests and helped us remain
          to be the best hotel & resort throughout the year. From there, many branches have been opened in many different locations around Malaysia.
          Although our hotel has been updating and changing over the course, but our core remain unchanged and stick to the values. As time goes by, 
          we will try our best to serve our guest and bring them the satisfaction they want during their stay.
      </p>
         </div>
     </div>
</div>

    <div class="container-fluid bg-grey" style="padding: 60px 50px;">
  <div class="row">
    <div class="col-md-8">
      <h2>Why Choose Us?</h2><br>
      <h4><strong>GREAT ENVIRONMENT WITH GREAT SERVICES</strong></h4>
      <p>
          We provide excellent hospitality and service to our guests throughout the stay, from checking in till checking out, to ensure our guests have
          a wonderful experience in our hotel room and available facilities. Our staff management will always be there available 24 hours for the guest requests and inquiry
          to fullfil their needs in their stay such as facilities booking, room services, food and beverages and many more.
      </p><br>
      <h4><strong>GREAT HOTEL FACILITIES</strong></h4>
       <p>
           Orient Hotel provides many facilities to accomodate and bringing comfort to our guests in their stay to ensure they are living
           in a relaxed and comfortable environment.
       </p>
        <div class="col-md-6">
        <ul>
            <li>24-hour reception service</li>
            <li>Playroom</li>
            <li>Lounge Bar</li>
            <li>Clubroom</li>
            <li>Fitness Center</li>
            <li>Conference Rooms</li>
       </ul>
       </div>
        <div class="col-md-6">
        <ul>
            <li>Swimming Pool</li>
            <li>Spa & Sauna</li>
            <li>Free WiFi in all rooms</li>
            <li>Room service</li>
            <li>Car & Bicycle hire</li>
            <li>Restaurants</li>
       </ul>
       </div>
        <p>
            Some of the facilities are public use and open to all guests. To use our clubroom and conference rooms,
            guests may have to book in order to use our facilities by calling our customer service and inform them 
            the duration of using the facilities.
        </p><br>
       <h4><strong>COMFORTABLE AND DECENT HOTEL ROOMS</strong></h4>
        <p>
            We provide three types of hotel rooms for our guests, namely Family Suite, Double Suite and Queen Suite.
            Three rooms provide the same services, with different settings of beds and views from the window. 
            All three rooms are in different rates of price and booking is needed to stay in our hotel rooms.
            For more information, visit our Contact Us for more information and inquire our customer service.
        </p><br>
        <a href="Contact.aspx" class="btn btn-default btn-lg">Contact Us!</a>
    </div>
  </div>
</div>
</asp:Content>
