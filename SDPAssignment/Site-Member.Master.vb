Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class Site_Member
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") IsNot Nothing Then
            txtuser.Text = "Welcome, " + Session("user").ToString()
        End If
    End Sub

    Protected Sub btnlogout_Click(sender As Object, e As EventArgs)
        Session.Remove("user")
        Response.Redirect("Login.aspx")
    End Sub
End Class