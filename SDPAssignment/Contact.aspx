<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="Contact.aspx.vb" Inherits="SDPAssignment.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
h2 {
      font-size: 24px;
      text-transform: uppercase;
      color: #303030;
      font-weight: 600;
}
</style> 

    <div class="container-fluid" style="padding:60px 50px;">
  <h2 class="text-center">CONTACT US</h2>
   <p class="text-center">Connect with us!</p>
        <hr />
  <div class="row">
    <div class="col-md-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Jalan Istana, 50000, Kuala Lumpur</p>
      <p><span class="glyphicon glyphicon-phone"></span> +603 8776 3112</p>
      <p><span class="glyphicon glyphicon-envelope"></span> orienthotel@gmail.com</p> 
    </div>
    <div class="col-md-7">
      <div class="row">
        <div class="col-md-6 form-group">
          <asp:Textbox runat="server" Cssclass="form-control" id="name" placeholder="Name" type="text" />
        </div>
        <div class="col-md-6 form-group">
          <asp:Textbox runat="server" Cssclass="form-control" id="email" placeholder="Email" type="email" />
        </div>
      </div>
      <asp:Textbox runat="server" Cssclass="form-control" id="comments" placeholder="Comment" rows="5" TextMode="MultiLine" /><br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn btn-primary btn-block" type="submit">Send</button>
        </div>
      </div> 
    </div>
  </div>
</div>

<div id="googleMap" style="height:400px;width:100%;"></div>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBiRT80t-keuPyqHSEy34VMdFmHVYxf_0&callback=initialize"></script>
<script>

function initialize() {
var myCenter = new google.maps.LatLng(3.133960, 101.695903);
var mapProp = {
  center:myCenter,
  zoom:14,
  scrollwheel:false,
  draggable:false,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
    position: myCenter,
    animation: google.maps.Animation.BOUNCE
});

var infowindow = new google.maps.InfoWindow({
    content: "Orient Hotel, 50000, Kuala Lumpur"
});
infowindow.open(map, marker);

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</asp:Content>
