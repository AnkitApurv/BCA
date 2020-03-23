Friend Class GlobalFlags
    Public Shared connStr As String = My.Settings.DMSConnStr
    Public Shared SignInFlag As Boolean = False
    Public Property _SignInFlag As Boolean  'property is used like a backened to SignInFlag variable because Property type allows events and handles
        Get 'gives the value of SignInFlag variable
            Return SignInFlag
        End Get
        Set 'sets the value given to "_SignInFlag Property" to "SignInflag variable"
            'CallLogicHere()
            If SignInFlag <> _SignInFlag Then
                SignInFlag = Value
                DocuVault.SignInFlag_Change() 'call method to perfrom tasks when SignInFlag value is changed
            End If
        End Set
    End Property
    Protected Friend Sub StartDB()
        Dim startsqldb As New ProcessStartInfo("cmd.exe")   'start command prompt
        startsqldb.WindowStyle = ProcessWindowStyle.Hidden  'cmd should not be visible
        startsqldb.Arguments = "/c sqllocaldb s DocuVault"    'start db instance | /c flag closes cmd after execution
        Process.Start(startsqldb)   'execute command
    End Sub
    Protected Friend Sub StopDB()
        Dim stopsqldb As New ProcessStartInfo("cmd.exe")   'start command prompt
        stopsqldb.WindowStyle = ProcessWindowStyle.Hidden  'cmd should not be visible
        stopsqldb.Arguments = "/c sqllocaldb p DocuVault"    'stop db instance | /c flag closes cmd after execution
        Process.Start(stopsqldb)    'execute command
    End Sub
End Class
