Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class DeleteRoom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub DeleteRoom(sender As Object, e As EventArgs)
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
                            Dim SqlString1 As String = "Delete * From Rooms Where RoomNo = ?"
                            Dim cmd1 As OleDbCommand = New OleDbCommand(SqlString1, conn)
                            cmd1.CommandType = CommandType.Text
                            cmd1.Parameters.AddWithValue("RoomNo", RoomID.Text)
                            cmd1.ExecuteNonQuery()
                            MsgBox("Hotel Room has been deleted.")
                        Else
                            MsgBox("Hotel Room Number does not exists!")
                        End If
                    End Using

                End Using
                conn.Close()
            End Using
        End If
    End Sub
End Class