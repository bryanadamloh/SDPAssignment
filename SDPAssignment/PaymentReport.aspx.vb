Public Class PaymentReport
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SelectRow(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        Response.Redirect("UpdatePayment.aspx")
    End Sub
End Class