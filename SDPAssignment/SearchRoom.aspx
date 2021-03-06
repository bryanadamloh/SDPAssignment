﻿<%@ Page Title="Search Room" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="SearchRoom.aspx.vb" Inherits="SDPAssignment.SearchRoom" %>
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
                <h1 class="text-center">Search Hotel Rooms</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Search for Orient Hotel Rooms and their information
                </p>
                <hr class="style-eight" />

                <form>
                    <br />
                    <hr class="colorgraph" />

                    <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="RoomID" CssClass="control-label">Enter Room ID</asp:Label>
                            <asp:TextBox runat="server" ID="RoomID" CssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="RoomType" CssClass="control-label">Room Type</asp:Label>
                        <asp:TextBox runat="server" ID="RoomType" CssClass="form-control" Enabled="false" />
                    </div>

                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="RoomDescription" CssClass="control-label">Room Description</asp:Label>
                        <asp:TextBox runat="server" ID="RoomDescription" CssClass="form-control" Enabled="false" />
                    </div>

                    <hr class="colorgraph" />

                    <div class="pull-left">
                        <asp:Button runat="server" OnClick="SearchRoom" CssClass="btn btn-primary" Text="Search" />
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
