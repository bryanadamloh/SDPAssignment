Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class CheckOut
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchReservation(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Select * From CheckInOut Where WalkInID = ?"
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("WalkInID", WalkInID.Text)

                Using reader As OleDbDataReader = cmd.ExecuteReader()
                    If reader.HasRows Then
                        While reader.Read()
                            Dim SqlString1 As String = "Select * From CheckInOut Where CustomerName = ?, ICNumber = ?, RoomType = ?, CheckIn = ?, CheckOut = ?"
                            FullName.Text = reader("CustomerName").ToString()
                            ICNum.Text = reader("ICNumber").ToString()
                            HotelRoom.Text = reader("RoomType").ToString()
                            CheckIn.Text = reader("CheckIn").ToShortDateString()
                            CheckOut.Text = reader("CheckOut").ToShortDateString()
                            WalkInID.Enabled = False
                        End While
                    Else
                        MsgBox("Walk In ID does not exists!")
                    End If
                End Using
            End Using
            conn.Close()
        End Using
    End Sub

    Protected Sub ConfirmCheckOut(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Update CheckInOut Set CustomerName = @CustomerName, ICNumber = @ICNumber, RoomType = @RoomType, CheckIn = @CheckIn, CheckOut = @CheckOut, Status = @Status Where (WalkInID = @WalkInID)"
        Dim Status As String = "Checked Out"
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@CustomerName", FullName.Text)
                cmd.Parameters.AddWithValue("@ICNumber", ICNum.Text)
                cmd.Parameters.AddWithValue("@RoomType", HotelRoom.Text)
                cmd.Parameters.AddWithValue("@CheckIn", CheckIn.Text)
                cmd.Parameters.AddWithValue("@CheckOut", CheckOut.Text)
                cmd.Parameters.AddWithValue("@Status", Status)
                cmd.Parameters.AddWithValue("@WalkInID", WalkInID.Text)
                cmd.ExecuteNonQuery()
                MsgBox("You have just checked out! Thank you for staying with us!")
                Response.Redirect("StaffHome.aspx")
            End Using
            conn.Close()
        End Using
    End Sub
End Class