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
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim Customer As String = "Select * From Customer Where CustUsername = ? AND CustPassword = ?"
        Dim Staff As String = "Select * From Staff Where StaffUser = ? AND StaffPassword = ?"
        Using conn As New OleDbConnection(connect)
            conn.Open()

            Dim cmd As New OleDbCommand(Customer, conn)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("CustUsername", txtuser.Text)
            cmd.Parameters.AddWithValue("CustPassword", txtpass.Text)
            Session("User") = txtuser.Text
            Dim reader As OleDbDataReader = cmd.ExecuteReader

            While reader.Read()
                If reader.Item("CustUsername") = txtuser.Text And reader.Item("CustPassword") = txtpass.Text Then
                    Response.Redirect("Default-Member.aspx")
                Else
                    MsgBox("Invalid Username and Password!")
                    reader.Close()
                End If
            End While
            cmd.Dispose()

            Dim cmd1 As New OleDbCommand(Staff, conn)
            cmd1.CommandType = CommandType.Text
            cmd1.Parameters.AddWithValue("StaffUser", txtuser.Text)
            cmd1.Parameters.AddWithValue("StaffPassword", txtpass.Text)
            Session("User") = txtuser.Text
            Dim reader1 As OleDbDataReader = cmd1.ExecuteReader

            While reader1.Read()
                If reader1.Item("StaffUser") = txtuser.Text And reader1.Item("StaffPassword") = txtpass.Text Then
                    Response.Redirect("StaffHome.aspx")
                Else
                    MsgBox("Invalid Username and Password!")
                    reader1.Close()
                End If
            End While
            cmd1.Dispose()
            conn.Close()
        End Using
    End Sub
End Class