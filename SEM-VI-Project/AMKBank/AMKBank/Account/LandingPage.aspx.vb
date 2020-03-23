Partial Public Class LandingPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Private Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Init
        authorizeUserLogIn()
    End Sub

    Private Sub authorizeUserLogIn()
        If Session("UserID") Is Nothing Then
            Response.Redirect("Login", True)
        End If
    End Sub
End Class