Imports System.Data.SqlClient

Partial Public Class DepositsWithdrawals
    Inherits System.Web.UI.Page

    Dim userID As String
    Dim timestamp As String

    Private Sub btnDeposits_Click(sender As Object, e As EventArgs) Handles btnDeposits.Click

        Dim transactionID As Long
        timestamp = Date.Now.ToString.Trim

        Using conn As New SqlConnection(Master.connectionString)

            'https://www.codeproject.com/Questions/670425/Sql-Query-to-select-last-Row-of-The-Table
            'SELECT TOP 1 * FROM dbo.transactions ORDER BY transaction_id DESC;
            'transID = datatable.Rows(0).Field(Of Long)("transaction_id");
            'transID = transID + 1

            'record transaction in transactions table and account

            '" INSERT INTO dbo.transactions" &
            '" (transaction_id, datetime, transaction_type, source, destination, transaction_value) VALUES" &
            '" (@transID, @timestamp, @deposit, @Session(UserID).ToString.Trim, "deposit", @withdrawalAmount);

            '" INSERT INTO dbo."+ Session(UserID).ToString.Trim + "_account" &
            '" (transaction_id, datetime, transaction_type, destination, debit, amount) VALUES" &
            '" (@transID, @timestamp, "deposit", "deposit", @depositAmount, amount-@depositAmount);

            'do trans
            Dim sqlstmt As String = "UPDATE INTO dbo.customer_master (opening_amount) VALUES (opening_amount+@deposits) WHERE customer_id=@userid;"
            Dim cmd As New SqlCommand(sqlstmt, conn)
            cmd.Parameters.AddWithValue("@deposits", Deposits.Text.Trim)
            cmd.Parameters.AddWithValue("@userid", userID)
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
            cmd.Dispose()


            'record trans
            Dim sqlstmt1 As String = "INSERT INTO dbo.trans" &
                " (transaction_datetime, transaction_amount, transaction_type, source_account_number, target_account_number)" &
                " VALUES" &
                " (@currentDate, @amount, @type, @source, @destination);"
            Dim cmd1 As New SqlCommand(sqlstmt1, conn)
            cmd1.Parameters.AddWithValue("@currentDate", timestamp)
            cmd1.Parameters.AddWithValue("@amount", Deposits.Text.Trim)
            cmd1.Parameters.AddWithValue("@type", "Deposits")
            cmd1.Parameters.AddWithValue("@source", "AccHolder Of " & userID)
            cmd1.Parameters.AddWithValue("@destination", userID)
            Try
                'record trans
                conn.Open()
                cmd1.ExecuteNonQuery()
                conn.Close()
                cmd1.Dispose()
            Catch ex As Exception
                lblStatus.Text = ex.ToString.Trim
            End Try



            'get trans id
            Dim sqlstmt2 As String = "SELECT transaction_id FROM dbo.trans WHERE source_account_number = @source AND transaction_datetime = @currentDate;"
            Dim cmd2 As New SqlCommand(sqlstmt2, conn)
            cmd2.Parameters.AddWithValue("@currentDate", timestamp)
            cmd2.Parameters.AddWithValue("@source", "AccHolder Of " & userID)
            Try
                conn.Open()
                Dim da As New SqlDataAdapter(cmd2)
                Dim dt As New DataTable()
                da.Fill(dt)
                conn.Close()
                transactionID = dt.Rows(0).Field(Of Long)("transaction_id")
            Catch ex As SqlException
                lblStatus.Text = ex.ToString.Trim
            End Try

        End Using

	Session.Add("TransactionID") = transactionID.ToString.Trim()
        Response.Redirect("TransactionSuccess", True)

    End Sub

    Private Sub btnWithdrawal_Click(sender As Object, e As EventArgs) Handles btnWithdrawal.Click

        Dim transID As Long
        timestamp = Date.Now.ToString.Trim

        Using conn As New SqlConnection(Master.connectionString)

            'https://www.codeproject.com/Questions/670425/Sql-Query-to-select-last-Row-of-The-Table
            'SELECT TOP 1 * FROM dbo.transactions ORDER BY transaction_id DESC;
            'transID = datatable.Rows(0).Field(Of Long)("transaction_id");
            'transID = transID + 1

            'record transaction in transactions table and account
            'Dim sqlstmt As String = 
            '" SELECT TOP 1 * FROM dbo."+ Session(UserID).ToString.Trim + "_account ORDER BY amount DESC;"
            '" CASE
            '" WHEN amount<@withdrawalAmount THEN  FALSE
            '" ELSE TRUE
            '" END

            '" INSERT INTO dbo.transactions" &
            '" (transaction_id, datetime, transaction_type, source, destination, transaction_value) VALUES" &
            '" (@transID, @timestamp, @transType, @Session(UserID).ToString.Trim, "withdrawal", @withdrawalAmount);

            '" INSERT INTO dbo."+ Session(UserID).ToString.Trim + "_account" &
            '" (transaction_id, datetime, transaction_type, destination, debit, amount) VALUES" &
            '" (@transID, @timestamp, "withdrawal", "withdrawal", @withdrawalAmount, amount-@withdrawalAmount);

            'do trans
            Dim sqlstmt As String = "SELECT opening_amount FROM dbo.customer_master WHERE customer_id=@userid;" &
            "IF opening_amount>=@balance" &
            "UPDATE INTO dbo.customer_master (balance) VALUES (balance-@withdrawal) WHERE customer_id=@userid;"
            Dim cmd As New SqlCommand(sqlstmt, conn)
            cmd.Parameters.AddWithValue("@withdrawal", Withdrawal.Text.Trim)
            cmd.Parameters.AddWithValue("@userid", userID)
            conn.Open()
            cmd.ExecuteNonQuery()
            conn.Close()
            cmd.Dispose()



            'record trans
            Dim sqlstmt1 As String = "INSERT INTO dbo.trans" &
                " (transaction_datetime, transaction_amount, transaction_type, source_account_number, target_account_number)" &
                " VALUES" &
                " (@currentDate, @amount, @type, @source, @destination);"
            Dim cmd1 As New SqlCommand(sqlstmt1, conn)
            cmd1.Parameters.AddWithValue("@currentDate", timestamp)
            cmd1.Parameters.AddWithValue("@amount", Withdrawal.Text.Trim)
            cmd1.Parameters.AddWithValue("@type", "Withdrawal")
            cmd1.Parameters.AddWithValue("@source", userID)
            cmd1.Parameters.AddWithValue("@destination", "AccHolder Of " & userID)
            Try
                'record trans
                conn.Open()
                cmd1.ExecuteNonQuery()
                conn.Close()
                cmd1.Dispose()
            Catch ex As Exception
                lblStatus.Text = ex.ToString.Trim
            End Try



            'get trans id
            Dim sqlstmt2 As String = "SELECT transaction_id FROM dbo.trans WHERE source_account_number = @source AND transaction_datetime = @currentDate;"
            Dim cmd2 As New SqlCommand(sqlstmt2, conn)
            cmd2.Parameters.AddWithValue("@currentDate", timestamp)
            cmd2.Parameters.AddWithValue("@source", userID)
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