Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class CheckInWithoutReservation
    Inherits System.Web.UI.Page

    Dim RandGen As New Random
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ConfirmCheckIn(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Insert Into CheckInOut (CustomerName, ICNumber, RoomType, CheckIn, CheckOut, Status) Values (@CustomerName, @ICNumber, @RoomType, @CheckIn, @CheckOut, @Status)"
            Dim Status As String = "Checked In"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.Parameters.AddWithValue("@CustomerName", FullName.Text)
                    cmd.Parameters.AddWithValue("@ICNumber", ICNum.Text)
                    cmd.Parameters.AddWithValue("@RoomType", HotelRoom.Text)
                    cmd.Parameters.AddWithValue("@CheckIn", CheckIn.Text)
                    cmd.Parameters.AddWithValue("@CheckOut", CheckOut.Text)
                    cmd.Parameters.AddWithValue("@Status", Status)
                    cmd.ExecuteNonQuery()
                    MsgBox("You have been checked in! Enjoy your stay.")
                End Using
                conn.Close()
            End Using
        End If
    End Sub
End Class