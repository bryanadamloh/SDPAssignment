Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class CreateReservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub AddReservation(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Insert Into Reservation (FullName, RoomType, CheckInDate, CheckOutDate, Comment, Status) Values (@FullName, @RoomType, @CheckInDate, @CheckOutDate, @Comment, @Status)"
            Dim SelectID As String = "Select MAX(ReservationID) From Reservation"
            Dim Status As String = "Booked"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.Parameters.AddWithValue("@FullName", FullName.Text)
                    cmd.Parameters.AddWithValue("@RoomType", HotelRoom.Text)
                    cmd.Parameters.AddWithValue("@CheckInDate", CheckIn.Text)
                    cmd.Parameters.AddWithValue("@CheckOutDate", CheckOut.Text)
                    cmd.Parameters.AddWithValue("@Comment", Comment.Text)
                    cmd.Parameters.AddWithValue("@Status", Status)
                    cmd.ExecuteNonQuery()
                    Using ReserveID As New OleDbCommand(SelectID, conn)
                        Dim reservationID As Integer = Convert.ToInt32(ReserveID.ExecuteScalar)
                        Dim SqlString1 As String = "Insert Into Payment (ReservationID, PaymentMethod, Amount, DepositedAmount, PaymentStatus) Values (@ReservationID, @PaymentMethod, @Amount, @DepositedAmount, @PaymentStatus)"
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
                        Using cmd1 As New OleDbCommand(SqlString1, conn)
                            cmd1.Parameters.AddWithValue("@ReservationID", reservationID)
                            cmd1.Parameters.AddWithValue("@PaymentMethod", PaymentMethod.Text)
                            cmd1.Parameters.AddWithValue("@Amount", TotalDue.Text)
                            cmd1.Parameters.AddWithValue("@DepositedAmount", Amount.Text)
                            cmd1.Parameters.AddWithValue("@PaymentStatus", PaymentStatus)
                            cmd1.ExecuteNonQuery()
                            MsgBox("Payment has been received! Thank You for choosing Orient Hotel! Your Reservation ID is " + reservationID.ToString())
                            Response.Redirect("Default.aspx")
                        End Using
                    End Using
                End Using
                conn.Close()
            End Using
        End If
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
End Class