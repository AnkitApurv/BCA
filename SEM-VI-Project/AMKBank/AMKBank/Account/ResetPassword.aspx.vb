Imports System.Data.SqlClient

Partial Public Class ResetPassword
    Inherits System.Web.UI.Page

    Protected scoreval As Integer = 1

    Dim checkpwd As New Zxcvbn.Zxcvbn()

    Private Sub Page_Init(sender As Object, e As EventArgs) Handles Me.Init
        authorizeUserLogIn()
        If Master.checkIfAUserIsLoggedIn() Then
            formIsLogIn.Visible = True
        Else
            formIsNotLogIn.Visible = True
        End If
    End Sub

    Protected Sub txtNewPasswd_TextChanged(sender As Object, e As EventArgs) Handles txtNewPasswd.TextChanged
        scoreval = checkpwd.EvaluatePassword(txtNewPasswd.Text.Trim()).Score
    End Sub

    Protected Sub txtNewPasswd1_TextChanged(sender As Object, e As EventArgs) Handles txtNewPasswd1.TextChanged
        scoreval = checkpwd.EvaluatePassword(txtNewPasswd.Text.Trim()).Score
    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") Is Nothing Then
            Response.Redirect("Login", True)
        End If
    End Sub
End Class