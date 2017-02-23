Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class ModifyReservation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchReservation(sender As Object, e As EventArgs)
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
                            Dim SqlString1 As String = "Select * From Reservation Where FullName = ?, RoomType = ?, CheckInDate = ?, CheckOutDate = ?, Comment = ?"
                            FullName.Text = reader("FullName").ToString()
                            HotelRoom.Text = reader("RoomType").ToString()
                            CheckIn.Text = reader("CheckInDate").ToShortDateString()
                            CheckOut.Text = reader("CheckOutDate").ToShortDateString()
                            Comment.Text = reader("Comment").ToString()
                        End While
                    Else
                        MsgBox("Reservation ID does not exists!")
                    End If
                End Using
            End Using
            conn.Close()
        End Using
    End Sub

    Protected Sub ModifyReservation(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Update Reservation Set FullName = @FullName, RoomType = @RoomType, CheckInDate = @CheckInDate, CheckOutDate = @CheckOutDate, Comment = @Comment Where (ReservationID = @ReservationID)"
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@FullName", FullName.Text)
                cmd.Parameters.AddWithValue("@RoomType", HotelRoom.Text)
                cmd.Parameters.AddWithValue("@CheckInDate", CheckIn.Text)
                cmd.Parameters.AddWithValue("@CheckOutDate", CheckOut.Text)
                cmd.Parameters.AddWithValue("@Comment", Comment.Text)
                cmd.Parameters.AddWithValue("@ReservationID", ReservationID.Text)
                cmd.ExecuteNonQuery()
                MsgBox("Reservation Information has been updated!")
                Response.Redirect("StaffHome.aspx")
            End Using
            conn.Close()
        End Using
    End Sub
End Class