Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class CheckInWithReservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchReservation(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Select * From Reservation Where ReservationID = ?"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("ReservationID", ReservationID.Text)

                    Using reader As OleDbDataReader = cmd.ExecuteReader()
                        If reader.HasRows Then
                            While reader.Read()
                                Dim SqlString1 As String = "Select * From Reservation Where FullName = ?, RoomType = ?, CheckInDate = ?, CheckOutDate = ?"
                                FullName.Text = reader("FullName").ToString()
                                HotelRoom.Text = reader("RoomType").ToString()
                                CheckIn.Text = reader("CheckInDate").ToShortDateString()
                                CheckOut.Text = reader("CheckOutDate").ToShortDateString()
                            End While
                        Else
                            MsgBox("Reservation ID does not exists!")
                        End If
                    End Using
                End Using
                conn.Close()
            End Using
        End If
    End Sub

    Protected Sub ConfirmCheckIn(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Insert Into CheckInOut (WalkInID, CustomerName, RoomType, CheckIn, CheckOut, Status) Values (@WalkInID, @CustomerName, @RoomType, @CheckIn, @CheckOut, @Status)"
        Dim Status As String = "Checked In"
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.Parameters.AddWithValue("@WalkInID", ReservationID.Text)
                cmd.Parameters.AddWithValue("@CustomerName", FullName.Text)
                cmd.Parameters.AddWithValue("@RoomType", HotelRoom.Text)
                cmd.Parameters.AddWithValue("@CheckIn", CheckIn.Text)
                cmd.Parameters.AddWithValue("@CheckOut", CheckOut.Text)
                cmd.Parameters.AddWithValue("@Status", Status)
                MsgBox("You have been checked in! Enjoy your stay.")
            End Using
        End Using
    End Sub
End Class