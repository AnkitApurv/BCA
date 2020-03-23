Imports System.Web.Optimization

Public Class Global_asax
    Inherits HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)
        ' Fires when the application is started
        RouteConfig.RegisterRoutes(RouteTable.Routes)
        BundleConfig.RegisterBundles(BundleTable.Bundles)
    End Sub

    'Sub Application_EndRequest(sender As Object, e As EventArgs)
    'to redirect clients with no/unrecognized client certificates
    'If (Response.StatusCode = 403.7) Then
    'Response.ClearContent()
    'Response.RedirectPermanent("http://127.0.0.1")
    'End If
    'End Sub
End Class