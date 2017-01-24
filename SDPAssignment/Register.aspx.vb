Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con As New OleDb.OleDbConnection

        Dim dbProvider As String
        Dim dbSource As String
        Dim sql As String

        dbProvider = "PROVIDER = MICROSOFT.ACE.OLEDB.12.0"
        dbSource = "Data Source=|Data Directory|\OrientHotel.mdb"

        con.ConnectionString = dbProvider & dbSource

        con.Open()

        Dim ds As New DataSet
        Dim da As New OleDb.OleDbDataAdapter

        sql = "SELECT * FROM OrientHotel "
        da = New OleDb.OleDbDataAdapter(sql, con)
        da.Fill(ds, "Customer")

        FName.Text = ds.Tables("CustFName").Rows(0).Item(1)
    End Sub

    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub CreateUser_Click(sender As Object, e As EventArgs)

    End Sub


End Class