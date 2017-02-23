Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class UpdatePayment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchPayment(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Select * From Payment Where ReservationID = ?"
        Using conn As New OleDbConnection(connect)
            conn.Open()

            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("ReservationID", ReservationID.Text)

                Using reader As OleDbDataReader = cmd.ExecuteReader()
                    If reader.HasRows Then
                        While reader.Read()
                            Dim SqlString1 As String = "Select * From Payment Where PaymentMethod = ?, Amount = ?, DepositedAmount = ?"
                            PaymentMethod.Text = reader("PaymentMethod").ToString()
                            TotalDue.Text = reader("Amount").ToString()
                            Amount.Text = reader("DepositedAmount").ToString()
                        End While
                    Else
                        MsgBox("Reservation ID does not exists!")
                    End If
                End Using

            End Using
            conn.Close()
        End Using
    End Sub

    Protected Sub UpdatePayment(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Update Payment Set PaymentMethod = @PaymentMethod, Amount = @Amount, DepositedAmount = @DepositedAmount, PaymentStatus = @PaymentStatus Where (ReservationID = @ReservationID)"
        Dim hotelprice As Integer = Integer.Parse(TotalDue.Text)
        Dim fees As Integer = Integer.Parse(Amount.Text)
        Dim PaymentStatus As String
        If hotelprice = fees Then
            PaymentStatus = "Completed"
        ElseIf hotelprice > fees Then
            PaymentStatus = "Incomplete"
        Else
            PaymentStatus = "Overpaid"
        End If
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@PaymentMethod", PaymentMethod.Text)
                cmd.Parameters.AddWithValue("@Amount", TotalDue.Text)
                cmd.Parameters.AddWithValue("@DepositedAmount", Amount.Text)
                cmd.Parameters.AddWithValue("@PaymentStatus", PaymentStatus)
                cmd.Parameters.AddWithValue("@ReservationID", ReservationID.Text)
                cmd.ExecuteNonQuery()
                MsgBox("Payment has been updated for " + ReservationID.Text.ToString() + "! It is now " + PaymentStatus.ToString())
                Response.Redirect("PaymentReport.aspx")
            End Using
        End Using
    End Sub
End Class