Imports System.Security
Imports Microsoft.AspNet.Identity

Partial Public Class Master
    Inherits System.Web.UI.MasterPage

    Protected Friend Shared ReadOnly connectionString As String = ConfigurationManager.ConnectionStrings("DefaultConnection").ConnectionString
    Private Const AntiXsrfTokenKey As String = "__AntiXsrfToken"
    Private Const AntiXsrfUserNameKey As String = "__AntiXsrfUserName"
    Private _antiXsrfTokenValue As String
    Protected Friend display_name As String

    Protected Sub Page_Init(sender As Object, e As EventArgs)
        ' The code below helps to protect against XSRF attacks
        Dim requestCookie = Request.Cookies(AntiXsrfTokenKey)
        Dim requestCookieGuidValue As Guid
        If requestCookie IsNot Nothing AndAlso Guid.TryParse(requestCookie.Value, requestCookieGuidValue) Then
            ' Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value
            Page.ViewStateUserKey = _antiXsrfTokenValue
        Else
            ' Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N")
            Page.ViewStateUserKey = _antiXsrfTokenValue

            Dim responseCookie = New HttpCookie(AntiXsrfTokenKey) With {
                 .HttpOnly = True,
                 .Value = _antiXsrfTokenValue
            }
            If FormsAuthentication.RequireSSL AndAlso Request.IsSecureConnection Then
                responseCookie.Secure = True
            End If
            Response.Cookies.[Set](responseCookie)
        End If
        AddHandler Page.PreLoad, AddressOf master_Page_PreLoad
    End Sub

    Protected Sub master_Page_PreLoad(sender As Object, e As EventArgs)
        If Not IsPostBack Then
            ' Set Anti-XSRF token
            ViewState(AntiXsrfTokenKey) = Page.ViewStateUserKey
            ViewState(AntiXsrfUserNameKey) = If(Context.User.Identity.Name, [String].Empty)
        Else
            ' Validate the Anti-XSRF token
            If DirectCast(ViewState(AntiXsrfTokenKey), String) <> _antiXsrfTokenValue OrElse DirectCast(ViewState(AntiXsrfUserNameKey), String) <> (If(Context.User.Identity.Name, [String].Empty)) Then
                Throw New InvalidOperationException("Validation of Anti-XSRF token failed.")
            End If
        End If
        checkIfAUserIsLoggedIn()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub logout1_ServerClick(sender As Object, e As EventArgs)
        modifyMasterPageAtUserLogEvent(UserLogState.LogOut)
        Session.Abandon()
        Response.Cookies("SessionId").Expires = DateTime.Today.AddDays(-1)
        Response.Redirect("~/Default", True)
        Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie)
    End Sub

    Friend Enum UserLogState
        LogIn
        LogOut
    End Enum

    Friend Function checkIfAUserIsLoggedIn() As Boolean
        If Session("UserID") Is Nothing Then
            modifyMasterPageAtUserLogEvent(UserLogState.LogOut)
            Return False
        Else
            modifyMasterPageAtUserLogEvent(UserLogState.LogIn)
            Return True
        End If
    End Function

    Friend Sub modifyMasterPageAtUserLogEvent(log As UserLogState)
        If log = UserLogState.LogIn Then
            'user is logging in
            display_name = Session("UserGreetingName").ToString()
            login1.Visible = False
            register1.Visible = False
            usergreet1.Visible = True
            logout1.Visible = True
        ElseIf log = UserLogState.LogOut Then
            'user is logging out
            display_name = String.Empty
            usergreet1.Visible = False
            logout1.Visible = False
            login1.Visible = True
            register1.Visible = True
        End If
    End Sub
End Class