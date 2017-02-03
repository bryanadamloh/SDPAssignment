Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Login_Click(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Select Count(*) From Customer Where CustUsername = ? AND CustPassword = ?"
            Dim result As Integer = 0
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.Parameters.AddWithValue("CustUsername", txtuser.Text)
                    cmd.Parameters.AddWithValue("CustPassword", txtpass.Text)
                    Session("User") = txtuser.Text
                    result = DirectCast(cmd.ExecuteScalar(), Integer)
                End Using
            End Using
            If result > 0 Then
                Response.Redirect("Default-Member.aspx")
            Else
                MsgBox("Invalid Username and Password!")
            End If
        End If
    End Sub
End Class