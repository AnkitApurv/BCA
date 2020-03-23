Imports System.Data.SqlClient

Partial Public Class Login
    Inherits Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        RegisterHyperLink.NavigateUrl = "Register"
        ' Enable this once you have account confirmation enabled for password reset functionality
        ' ForgotPasswordHyperLink.NavigateUrl = "Forgot"
    End Sub

    Protected Sub LogIn(sender As Object, e As EventArgs) Handles btnLogin.Click
        'first, get the salt and hashed passwd
        'then, add hash before the user's currently inputted passwd
        'then, Dim logInOrNot As Boolean = Scrypt.ScryptEncoder().Compare(userPasswdWithHash, hashedPasswdFromDB)
        Dim conn As New SqlConnection(Master.connectionString)
        Dim sqlcmd As String = "SELECT pkey FROM dbo.customer_master WHERE customer_id = @username AND passwd = @password;"
        Dim cmd As New SqlCommand(sqlcmd, conn)
        cmd.Parameters.AddWithValue("@username", Email.Text.Trim())
        cmd.Parameters.AddWithValue("@password", Password.Text.Trim())
        conn.Open()
        Dim dataAdapter As New SqlDataAdapter(cmd)
        conn.Close()
        cmd.Dispose()
        Dim dataTable As New DataTable()
        dataAdapter.Fill(dataTable)
        If (dataTable.Rows.Count = 1) Then
            Session("UserID") = dataTable.Rows.Item(index:=0)(columnName:="pkey")
            Session("UserGreetingName") = Email.Text.Trim()
            Response.Redirect("LandingPage", True)
        Else
            LoginFailed.Visible = True
        End If
    End Sub

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init

    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") IsNot Nothing Then
            Response.Redirect("LandingPage", True)
        End If
    End Sub
End Class
