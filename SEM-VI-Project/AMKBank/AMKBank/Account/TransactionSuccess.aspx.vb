Imports System.Data.SqlClient

Public Class TransactionSuccess
    Inherits System.Web.UI.Page

    Dim userID As String

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        authorizeUserLogIn()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim transId As Long = CType(Session("TransactionID").Value, Long)
        'Session.Remove("TransactionID")

        Dim sqlstmt As String = "SELECT * FROM dbo." + userID + "_account WHERE transaction_id = @transId;"
        Dim conn As New SqlConnection(Master.connectionString)
        Dim cmd As New SqlCommand(sqlstmt, conn)
        cmd.Parameters.AddWithValue("@transId", transId)
        Dim dt As New DataTable()
        Dim datetime As String = Nothing
        Dim amount As Long
        Dim type As String = Nothing
        Dim source As Long
        Dim target As Long
        Try
            conn.Open()
            Dim da As New SqlDataAdapter(cmd)
            da.Fill(dt)
            conn.Close()
            datetime = dt.Rows(0).Field(Of String)("transaction_datetime")
            amount = dt.Rows(0).Field(Of Long)("transaction_amount")
            type = dt.Rows(0).Field(Of String)("transaction_type")
            source = dt.Rows(0).Field(Of Long)("source_account_number")
            target = dt.Rows(0).Field(Of Long)("target_account_number")
        Catch ex As Exception
            lblstatus.Text = ex.ToString.Trim
        End Try
        '#Disable Warning
        TransactionID.Text = transId.ToString.Trim
        transTime.Text = datetime
        debitAccount.Text = source.ToString
        CreditAccount.Text = target.ToString
        transAmt.Text = amount.ToString
        TransType.Text = type
        '#Enable Warning
    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") Is Nothing Then
            Response.Redirect("Login", True)
        Else
            userID = Session("UserID").ToString.Trim
        End If
    End Sub
End Class