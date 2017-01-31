Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Select * From Customer Where CustFName = ? AND CustLName = ? AND CustEmail = ? AND CustUsername = ? AND CustPassword = ?"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("CustFName", txtFName.Text)
                    cmd.Parameters.AddWithValue("CustLName", txtLName.Text)
                    cmd.Parameters.AddWithValue("CustEmail", txtEmail.Text)
                    cmd.Parameters.AddWithValue("CustUsername", txtUsername.Text)
                    cmd.Parameters.AddWithValue("CustPassword", txtPassword.Text)

                    Using reader As OleDbDataReader = cmd.ExecuteReader()
                        If reader.HasRows Then
                            MsgBox("User already exist!")
                        Else
                            Dim SqlString1 As String = "Insert Into Customer (CustFName, CustLName, CustEmail, CustUsername, CustPassword) Values (@CustFName, @CustLName, @CustEmail, @CustUsername, @CustPassword)"
                            Dim cmd1 As OleDbCommand = New OleDbCommand(SqlString1, conn)
                            cmd1.CommandType = CommandType.Text
                            cmd1.Parameters.AddWithValue("@CustFName", txtFName.Text)
                            cmd1.Parameters.AddWithValue("@CustLName", txtLName.Text)
                            cmd1.Parameters.AddWithValue("@CustEmail", txtEmail.Text)
                            cmd1.Parameters.AddWithValue("@CustUsername", txtUsername.Text)
                            cmd1.Parameters.AddWithValue("@CustPassword", txtPassword.Text)
                            cmd1.ExecuteNonQuery()
                            MsgBox("Registration Successful!")
                            Response.Redirect("Login.aspx")
                        End If
                    End Using

                End Using
                conn.Close()
            End Using
        End If
    End Sub


End Class