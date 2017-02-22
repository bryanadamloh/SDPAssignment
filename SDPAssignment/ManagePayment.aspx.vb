Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class ManagePayment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchReservation(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim Reservation As String = "Select * From Reservation Where ReservationID = ?"
        Dim WalkIn As String = "Select * From CheckInOut Where WalkInID = ?"
        Using conn As New OleDbConnection(connect)
            conn.Open()

            Dim cmd As New OleDbCommand(Reservation, conn)
            cmd.CommandType = CommandType.Text
            cmd.Parameters.AddWithValue("ReservationID", ReservationID.Text)
            Dim reader As OleDbDataReader = cmd.ExecuteReader
            While reader.Read()
                If reader.Item("ReservationID") = ReservationID.Text Then
                    Dim SqlString As String = "Select * From Reservation Where FullName = ?, RoomType = ?, CheckInDate = ?, CheckOutDate = ?"
                    FullName.Text = reader("Fullname").ToString()
                    HotelRoom.Text = reader("RoomType").ToString()
                    CheckIn.Text = reader("CheckInDate").ToShortDateString()
                    CheckOut.Text = reader("CheckOutDate").ToShortDateString()
                Else
                    MsgBox("Reservation/WalkIn ID does not exists!")
                    reader.Close()
                End If
            End While
            cmd.Dispose()

            Dim cmd1 As New OleDbCommand(WalkIn, conn)
            cmd1.CommandType = CommandType.Text
            cmd1.Parameters.AddWithValue("WalkInID", ReservationID.Text)
            Dim reader1 As OleDbDataReader = cmd1.ExecuteReader
            While reader1.Read()
                If reader1.Item("WalkInID") = ReservationID.Text Then
                    Dim SqlString1 As String = "Select * From CheckInOut Where CustomerName = ?, RoomType = ?, CheckIn = ?, CheckOut = ?"
                    FullName.Text = reader1("CustomerName").ToString()
                    HotelRoom.Text = reader1("RoomType").ToString()
                    CheckIn.Text = reader1("CheckIn").ToShortDateString()
                    CheckOut.Text = reader1("CheckOut").ToShortDateString()
                Else
                    MsgBox("Reservation/WalkIn ID does not exists!")
                End If
            End While

            conn.Close()
        End Using
    End Sub

    Protected Sub HotelRoomValue(sender As Object, e As EventArgs) Handles HotelRoom.SelectedIndexChanged
        If HotelRoom.SelectedItem.ToString() Is "Family Suite" Then
            TotalDue.Text = "600"
        ElseIf HotelRoom.SelectedItem.ToString() Is "Double Suite" Then
            TotalDue.Text = "500"
        ElseIf HotelRoom.SelectedItem.ToString() Is "Queen Suite" Then
            TotalDue.Text = "700"
        End If
    End Sub

    Protected Sub UpdatePayment(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Insert into Payment (ReservationID, PaymentMethod, Amount, DepositedAmount, PaymentStatus) Values (@ReservationID, @PaymentMethod, @Amount, @DepositedAmount, @PaymentStatus)"
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
                cmd.Parameters.AddWithValue("@ReservationID", ReservationID.Text)
                cmd.Parameters.AddWithValue("@PaymentMethod", PaymentMethod.Text)
                cmd.Parameters.AddWithValue("@Amount", TotalDue.Text)
                cmd.Parameters.AddWithValue("@DepositedAmount", Amount.Text)
                cmd.Parameters.AddWithValue("@PaymentStatus", PaymentStatus)
                cmd.ExecuteNonQuery()
                MsgBox("ID " + ReservationID.Text.ToString() + " has made a payment of " + Amount.Text.ToString())
            End Using
        End Using
    End Sub
End Class