Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class ModifyRoom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub SearchRoom(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Select * From Rooms Where RoomNo = ?"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("RoomNo", RoomID.Text)

                    Using reader As OleDbDataReader = cmd.ExecuteReader()
                        If reader.HasRows Then
                            While reader.Read()
                                Dim SqlString1 As String = "Select * From Rooms Where RoomType = ? AND RoomDescription = ?"
                                RoomType.Text = reader("RoomType").ToString()
                                RoomDescription.Text = reader("RoomDescription").ToString()
                            End While
                        Else
                            MsgBox("This Room Number does not exists in the database!")
                        End If
                    End Using

                End Using
                conn.Close()
            End Using
        End If
    End Sub

    Protected Sub UpdateRoom(sender As Object, e As EventArgs)
        If IsPostBack Then
            Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
            Dim SqlString As String = "Update Rooms Set RoomType = @RoomType, RoomDescription = @RoomDescription Where (RoomNo = @RoomNo)"
            Using conn As New OleDbConnection(connect)
                conn.Open()
                Using cmd As New OleDbCommand(SqlString, conn)
                    cmd.CommandType = CommandType.Text
                    cmd.Parameters.AddWithValue("@RoomType", RoomType.Text)
                    cmd.Parameters.AddWithValue("@RoomDescription", RoomDescription.Text)
                    cmd.Parameters.AddWithValue("@RoomNo", RoomID.Text)
                    cmd.ExecuteNonQuery()
                    MsgBox("Hotel room has been updated!")
                End Using
                conn.Close()
            End Using
        End If
    End Sub
End Class