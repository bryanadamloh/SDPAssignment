Public Class bookroom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Room1Payment(sender As Object, e As EventArgs)
        Application("Room1") = Room1Price.Text
        Application("RoomName1") = Room1Name.Text
        Response.Redirect("Payment.aspx")
    End Sub

    Protected Sub Room2Payment(sender As Object, e As EventArgs)
        Application("Room2") = Room2Price.Text
        Application("RoomName2") = Room2Name.Text
        Response.Redirect("Payment.aspx")
    End Sub

    Protected Sub Room3Payment(sender As Object, e As EventArgs)
        Application("Room3") = Room3Price.Text
        Application("RoomName3") = Room3Name.Text
        Response.Redirect("Payment.aspx")
    End Sub

End Class