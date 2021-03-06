﻿Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.OleDb
Imports System.Configuration

Public Class CreateRoom
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CreateRoom(sender As Object, e As EventArgs)
        Dim connect As String = "Provider=Microsoft.JET.OLEDB.4.0;" & "Data Source=|DataDirectory|OrientHotel.mdb"
        Dim SqlString As String = "Insert into Rooms (RoomType, RoomDescription) Values (@RoomType, @RoomDescription)"
        Using conn As New OleDbConnection(connect)
            conn.Open()
            Using cmd As New OleDbCommand(SqlString, conn)
                cmd.CommandType = CommandType.Text
                cmd.Parameters.AddWithValue("@RoomType", RoomType.Text)
                cmd.Parameters.AddWithValue("@RoomDescription", RoomDescription.Text)
                cmd.ExecuteNonQuery()
                MsgBox("New Hotel Room created.")
            End Using
            conn.Close()
        End Using
    End Sub
End Class