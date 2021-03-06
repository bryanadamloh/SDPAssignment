﻿<%@ Page Title="Room Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="RoomReport.aspx.vb" Inherits="SDPAssignment.RoomReport1" %>
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
                <h1 class="text-center">Room Report</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Daily report for hotel rooms
                </p>
                <hr class="style-eight" />

                <div class="row col-md-7">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RoomNo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="315px" Width="883px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" InsertVisible="False" ReadOnly="True" SortExpression="RoomNo" />
                        <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                        <asp:BoundField DataField="RoomDescription" HeaderText="RoomDescription" SortExpression="RoomDescription" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Rooms]"></asp:SqlDataSource>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
