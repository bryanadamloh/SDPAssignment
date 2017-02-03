Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class Contact_Member
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Submit(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Insert Into Contact (FullName, Email, Comment) Values (@FullName, @Email, @Comment)"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@FullName", txtname.Text)
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text)
                    cmd.Parameters.AddWithValue("@Comment", txtcomment.Text)
                    cmd.ExecuteNonQuery()
                    MsgBox("Your inquiries has been sent! Thank You!")
                    Response.Redirect("Default-Member.aspx")
                End Using
                conn.Close()
            End Using
        End If
    End Sub
End Class