Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class Default_Member
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub RoomAvailability(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Select * From Reservation"
        Dim SqlString1 As String = "Select * From CheckInOut"
        Using conn As New OleDbConnection(connect)
            conn.Open()

            Dim cmd As New OleDbCommand(SqlString, conn)
            Dim reader As OleDbDataReader = cmd.ExecuteReader

            Dim cmd1 As New OleDbCommand(SqlString1, conn)
            Dim reader1 As OleDbDataReader = cmd1.ExecuteReader

            While reader.Read()
                If HotelRoom.SelectedItem.ToString() = reader.Item("RoomType") Then
                    If reader.Item("CheckInDate") >= CheckIn.Text And CheckOut.Text <= reader.Item("CheckOutDate") Then
                        MsgBox("No available room between this period!")
                        Exit While
                    Else
                        While reader1.Read()
                            If HotelRoom.SelectedItem.ToString() = reader1.Item("RoomType") Then
                                If reader1.Item("CheckIn") >= CheckIn.Text And CheckOut.Text <= reader1.Item("CheckOut") Then
                                    MsgBox("No available room between this period!")
                                    Exit While
                                Else
                                    MsgBox("There is a room for you!")
                                    Response.Redirect("Login.aspx")
                                End If
                            End If
                        End While
                    End If
                End If
            End While
            cmd.Dispose()
            cmd1.Dispose()

            conn.Close()
        End Using
    End Sub
End Class