<%@ Page Title="Gallery" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Customer.Master" CodeBehind="roomGallery.aspx.vb" Inherits="SDPAssignment.roomGallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<style>
.colorgraph{
  height: 5px;
  border-top: 0;
  background: #c4e17f;
  border-radius: 5px;
  background-image: -webkit-linear-gradient(left, #c4e17f, #c4e17f 12.5%, #f7fdca 12.5%, #f7fdca 25%, #fecf71 25%, #fecf71 37.5%, #f0776c 37.5%, #f0776c 50%, #db9dbe 50%, #db9dbe 62.5%, #c49cde 62.5%, #c49cde 75%, #669ae1 75%, #669ae1 87.5%, #62c2e4 87.5%, #62c2e4);
}
h4{
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-top: 30px;
}
</style>


 <div class="container-fluid" style="padding: 70px 50px;">
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center">Gallery</h1>
            <h4 class="text-center">Pictures of Orient Hotel including hotel rooms and facilities</h4>
            <hr class="colorgraph" />

            <div class="container-fluid col-md-12" style="padding: 70px 50px;">
                <div class="row">
                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/05_Gym_HR.jpg" title="Public gym for everyone">
                            <img class="img-responsive" src="Images/05_Gym_HR.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/Broadway%20Lounge.JPG">
                            <img class="img-responsive" src="Images/Broadway%20Lounge.JPG" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/conferenceRoom.jpg">
                            <img class="img-responsive" src="Images/conferenceRoom.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>

            <div class="container-fluid col-md-12" style="padding: 70px 50px;">
                <div class="row">
                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/deluxe1500x930.jpg">
                            <img class="img-responsive" src="Images/deluxe1500x930.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/timessquare_50.jpg">
                            <img class="img-responsive" src="Images/timessquare_50.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/hotelentrance.jpg">
                            <img class="img-responsive" src="Images/hotelentrance.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>

            <div class="container-fluid col-md-12" style="padding: 70px 50px;">
                <div class="row">
                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/hotel-buddha-bar-budapest-banqueting-01.jpg">
                            <img class="img-responsive" src="Images/hotel-buddha-bar-budapest-banqueting-01.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/hotelritz-Entrance%201.jpg">
                            <img class="img-responsive" src="Images/hotelritz-Entrance%201.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/the-dorchester-the-grill-at-the-dorchester.jpg">
                            <img class="img-responsive" src="Images/the-dorchester-the-grill-at-the-dorchester.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>

            <div class="container-fluid col-md-12" style="padding: 70px 50px;">
                <div class="row">
                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/The-Address-Downtown-Dubai-Cigar-Lounge-Terrace.jpg">
                            <img class="img-responsive" src="Images/The-Address-Downtown-Dubai-Cigar-Lounge-Terrace.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/hotel-interior-room0416.jpg">
                            <img class="img-responsive" src="Images/hotel-interior-room0416.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-4">
                        <a class="fancybox" rel="fancyboxgallery" href="Images/hotelroom.jpg">
                            <img class="img-responsive" src="Images/hotelroom.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
</asp:Content>
