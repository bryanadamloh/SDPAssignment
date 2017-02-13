Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration


Public Class Payment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Application("Room1") IsNot Nothing Then
            RoomPrice.Text = Application("Room1").ToString()
        ElseIf Application("Room2") IsNot Nothing Then
            RoomPrice.Text = Application("Room2").ToString()
        ElseIf Application("Room3") IsNot Nothing Then
            RoomPrice.Text = Application("Room3").ToString()
        End If
    End Sub
End Class