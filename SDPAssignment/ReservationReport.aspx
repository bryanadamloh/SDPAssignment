<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site-Staff.Master" CodeBehind="ReservationReport.aspx.vb" Inherits="SDPAssignment.RoomReport" %>
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
                <h1 class="text-center">Reservation Report</h1>
                <p class="text-center" style="font-size:14px; font-weight:600; margin-top:20px;">
                    Daily report for customer's reservation
                </p>
                <hr class="style-eight" />

                <div class="row col-md-7">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="363px" Width="876px" AutoGenerateColumns="False" DataKeyNames="ReservationID" DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" InsertVisible="False" ReadOnly="True" SortExpression="ReservationID" />
                        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                        <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                        <asp:BoundField DataField="CheckInDate" DataFormatString="{0:d}" HeaderText="CheckInDate" SortExpression="CheckInDate" />
                        <asp:BoundField DataField="CheckOutDate" DataFormatString="{0:d}" HeaderText="CheckOutDate" SortExpression="CheckOutDate" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ReservationID], [FullName], [RoomType], [CheckInDate], [CheckOutDate], [Status] FROM [Reservation]"></asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
