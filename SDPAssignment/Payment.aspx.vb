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

    End Sub

    Protected Sub deposit_Click(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Select * From Reservation Where DepositPaid = ?"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("DepositPaid", Amount.Text)

                    Using reader As OleDbDataReader = cmd.ExecuteReader()
                        Dim SqlString1 As String = "Insert Into Customer (CustFName, CustLName, CustEmail, CustUsername, CustPassword) Values (@CustFName, @CustLName, @CustEmail, @CustUsername, @CustPassword)"
                            Dim cmd1 As OleDbCommand = New OleDbCommand(SqlString1, conn)
                            cmd1.CommandType = CommandType.Text
                        cmd1.Parameters.AddWithValue("@DepositPaid", Amount.Text)
                        cmd1.ExecuteNonQuery()
                        MsgBox("Payment Successful!")
                        Response.Redirect("Default.aspx")
                    End Using

                End Using
                conn.Close()
            End Using
        End If
    End Sub
End Class