Imports System.Data.SqlClient

Partial Public Class FundsTransfer
    Inherits System.Web.UI.Page

    Dim userID As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblStatus.Visible = False
    End Sub

    Private Sub btnTransfer_Click(sender As Object, e As EventArgs) Handles btnTransfer.Click

        Dim timestamp As String = Date.Now.ToString.Trim
        Dim transID As Long

        Using conn As New SqlConnection(Master.connectionString)

            'transaction id is global, so all transactions are also stored in one global transaction table
            'Dim sqlstmt As String = "CREATE TABLE dbo.transactions" &
            '"tkey BIGINT PRIMARY KEY IDENTITY(1, 1)," &
            '"transaction_id BIGNINT NOT NULL," &
            '"datetime DATETIME NOT NULL," &
            '"transaction_type NVARCHAR(30)," &
            '"source LONG," &
            '"destination LONG," &
            '"transaction_value DECIMAL);"

            'https://www.codeproject.com/Questions/670425/Sql-Query-to-select-last-Row-of-The-Table
            'SELECT TOP 1 * FROM dbo.transactions ORDER BY transaction_id DESC;
            'transID = datatable.Rows(0).Field(Of Long)("transaction_id");
            'transID = transID + 1


            'record transaction in transactions table, source account and destination account
            'Dim sqlstmt As String = 
            '" SELECT TOP 1 * FROM dbo."+ Session(UserID).ToString.Trim + "_account ORDER BY amount DESC;"
            '" CASE
            '" WHEN amount<@transferAmount THEN  FALSE
            '" ELSE TRUE
            '" END

            '" INSERT INTO dbo.transactions" &
            '" (transaction_id, datetime, transaction_type, source, destination, transaction_value) VALUES" &
            '" (@transID, @timestamp, @transType, @Session(UserID).ToString.Trim, @destination, @transAmt);

            '" INSERT INTO dbo."+ Session(UserID).ToString.Trim + "_account" &
            '" (transaction_id, datetime, transaction_type, destination, debit, amount) VALUES" &
            '" (@transID, @timestamp, @transType, @destination, @transAmt, amount-@transAmt);

            '" INSERT INTO dbo."+ txtDestination.Text.Trim + "_account" &
            '" (transaction_id, datetime, transaction_type, source, credit, amount) VALUES" &
            '" (@transID, @timestamp, @transType, @Session(UserID).ToString.Trim, @transAmt, amount+@transAmt);

            'since transaction id is already in the transID variable so send it to a cookie and goto Transaction success.

            'do trans
            Dim sqlstmt As String = "SELECT opening_amount FROM dbo.customer_master WHERE customer_id=@source_acc;" &
            " IF opening_amount>=@amount" &
            " BEGIN" &
            " UPDATE INTO dbo.customer_master (opening_amount) VALUES (opening_amount-@amount) WHERE customer_id=@source_acc;" &
            " UPDATE INTO dbo.customer_master (opening_amount) VALUES (opening_amount+@amount) WHERE customer_id=@dest_acc;" &
            " END" &
            " ELSE" &
            " PRINT 'Insufficient balance!'"
            Dim cmd As New SqlCommand(sqlstmt, conn)
            cmd.Parameters.AddWithValue("@amount", txtAmount.Text.Trim)
            cmd.Parameters.AddWithValue("@source_acc", txtAccountNo.Text.Trim)
            cmd.Parameters.AddWithValue("@dest_acc", userID)
            Try

                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
                cmd.Dispose()
            Catch ex As Exception
                lblStatus.Text = ex.ToString.Trim
                lblStatus.Visible = True
            End Try



            'record trans
            Dim sqlstmt1 As String = "INSERT INTO dbo.trans" &
                " (transaction_datetime, transaction_amount, transaction_type, source_account_number, target_account_number)" &
                " VALUES" &
                " (@currentDate, @amount, @type, @source, @destination);"
            Dim cmd1 As New SqlCommand(sqlstmt1, conn)
            cmd1.Parameters.AddWithValue("@currentDate", timestamp)
            cmd1.Parameters.AddWithValue("@amount", txtAmount.Text.Trim)
            cmd1.Parameters.AddWithValue("@type", txttype.Text.Trim)
            cmd1.Parameters.AddWithValue("@source", userID)
            cmd1.Parameters.AddWithValue("@destination", txtAccountNo.Text.Trim)
            Try
                conn.Open()
                cmd1.ExecuteNonQuery()
                conn.Close()
                cmd1.Dispose()
            Catch ex As Exception
                lblStatus.Text = ex.ToString.Trim
            End Try



            'get trans id
            Dim sqlstmt2 As String = "SELECT transaction_id FROM dbo." + userID + "_account WHERE datetime = @currentDate;"
            Dim cmd2 As New SqlCommand(sqlstmt2, conn)
            cmd2.Parameters.AddWithValue("@currentDate", timestamp)
            Try
                conn.Open()
                Dim da As New SqlDataAdapter(cmd2)
                Dim dt As New DataTable()
                da.Fill(dt)
                conn.Close()
                transID = dt.Rows(0).Field(Of Long)("transaction_id")
            Catch ex As SqlException
                lblStatus.Text = ex.ToString.Trim
            End Try

        End Using

	Session.Add("TransactionID") = transactionID.ToString.Trim()
        Response.Redirect("TransactionSuccess", True)
    End Sub

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        authorizeUserLogIn()
    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") Is Nothing Then
            Response.Redirect("Login", True)
        Else
            userID = Session("UserID").ToString.Trim
        End If
    End Sub
End Class