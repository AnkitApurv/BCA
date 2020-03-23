Imports System.Data.SqlClient

Partial Public Class RegisterSuccess
    Inherits System.Web.UI.Page

    Protected scoreval As Integer = 1
    Dim userID As Decimal

    Dim checkpwd As New Zxcvbn.Zxcvbn()

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        AuthorizeUserLogIn()
        userID = CDec(Session("UserID").ToString())
    End Sub

    Private Sub btnFinishRegister_Click(sender As Object, e As EventArgs) Handles btnFinishRegister.Click
        If (txtPasswd.Text.Trim <> txtRePasswd.Text.Trim) Then
            lblStatus.Text = "Passwords in both the textboxes must match!"
            lblStatus.Visible = True
            Exit Sub
        End If
        If (txtPasswd.Text.Trim = "") Then
            lblStatus.Text = "You need to set a password!"
            lblStatus.Visible = True
            Exit Sub
        End If
        SaltAndHashPasswd()
    End Sub

    Protected Sub txtPasswd_TextChanged(sender As Object, e As EventArgs) Handles txtPasswd.TextChanged
        scoreval = checkpwd.EvaluatePassword(txtPasswd.Text.Trim()).Score
    End Sub

    Private Sub AuthorizeUserLogIn()
        If Session("UserID") Is Nothing Then
            Response.Redirect("Register", True)
        End If
    End Sub

    Private Sub SaltAndHashPasswd()
        Dim salt As String = GetSalt()
        Dim saltedPasswd As String = salt + txtPasswd.Text.Trim
        Dim hashedPasswd As String = New Scrypt.ScryptEncoder().Encode(saltedPasswd)
        StoreSaltedPasswdAndHash(hashedPasswd, salt)
    End Sub

    Private Sub StoreSaltedPasswdAndHash(ByVal saltedAndHashedPasswd As String, ByVal salt As String)
        Dim sqlstmt As String = "UPDATE dbo.customer_master SET passwd = @passwd, salt = @salt WHERE pkey = @pkey;"
        Dim conn As New SqlConnection(Master.connectionString)
        Dim updateSuccess As Boolean = False
        Using cmd As New SqlCommand(sqlstmt, conn)
            cmd.Parameters.AddWithValue("@passwd", saltedAndHashedPasswd)
            cmd.Parameters.AddWithValue("@salt", salt)
            cmd.Parameters.AddWithValue("@pkey", userID)
            Try
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
                updateSuccess = True
            Catch sqlEx As SqlException
                lblStatus.Text = sqlEx.ToString.Trim()
            End Try
        End Using
        If updateSuccess Then
            CreateUserStatement()
            ToLandingPage()
        Else
            lblStatus.Visible = True
        End If
    End Sub

    'https://codereview.stackexchange.com/questions/93614/salt-generation-in-c
    Private Function GetSalt() As String
        Dim maximumSaltLength As Integer = 32
        'byte array starts from zero
        Dim salt = New Byte(maximumSaltLength - 1) {}
        Using random = New Security.Cryptography.RNGCryptoServiceProvider()
            random.GetNonZeroBytes(salt)
        End Using
        Return Convert.ToBase64String(salt)
    End Function

    Private Sub CreateUserStatement()
        Dim sqlstmt As String = "CREATE TABLE dbo." + userID.ToString + "_account" &
            "tkey BIGINT PRIMARY KEY IDENTITY(1, 1)," &
            "transaction_id BIGNINT NOT NULL," &
            "datetime DATETIME NOT NULL," &
            "transaction_type NVARCHAR(30)," &
            "destination LONG," &
            "credit DECIMAL," &
            "debit DECIMAL," &
            "amount DECIMAL NOT NULL);"
        Dim conn As New SqlConnection(Master.connectionString)
        Using cmd As New SqlCommand(sqlstmt, conn)
            Try
                conn.Open()
                cmd.ExecuteNonQuery()
                conn.Close()
            Catch sqlEx As SqlException
                lblStatus.Text = sqlEx.ToString.Trim
                lblStatus.Visible = True
            End Try
        End Using
    End Sub

    Private Sub ToLandingPage()
        txtPasswd.Enabled = False
        txtRePasswd.Enabled = False
        btnFinishRegister.Enabled = False

        lblStatus.Text = "Password for your account was set successfully!"
        lblStatus.Visible = True
        Dim timer As New Timers.Timer(5000) '5sec break before redirection notice
        timer.Start()

        timer.Interval = 1000 '1sec 10times for redirection counter
        For index = 10 To 1
            lblStatus.Text = "You will be redirected to the landing page in" + index.ToString + "seconds."
            index = index - 1
            timer.Start()
        Next
        Response.Redirect("LandingPage", True)
    End Sub
End Class