Public Class CheckInOutReport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SelectRow(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Response.Redirect("CheckOut.aspx")
    End Sub
End Class