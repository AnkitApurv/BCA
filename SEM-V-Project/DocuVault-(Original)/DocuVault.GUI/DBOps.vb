Friend Class DBOps
    Public Shared connStr As String = "Data Source=(localdb)\ProjectsV12;Initial Catalog=DMStorage;Integrated Security=True;Pooling=False"
    Public Shared connection As New SqlConnection(connStr)   'to connect to db server prepared
    Protected Friend Shared Sub StartDB()
        Dim startsqldb As New ProcessStartInfo("cmd.exe")   'start command prompt
        startsqldb.WindowStyle = ProcessWindowStyle.Hidden  'cmd should not be visible
        startsqldb.Arguments = "/c sqllocaldb s ProjectsV12"    'start db instance | /c flag closes cmd after execution
        Process.Start(startsqldb)
    End Sub
    Protected Friend Shared Sub StopDB()
        Dim stopsqldb As New ProcessStartInfo("cmd.exe")   'start command prompt
        stopsqldb.WindowStyle = ProcessWindowStyle.Hidden  'cmd should not be visible
        stopsqldb.Arguments = "/c sqllocaldb p ProjectsV12"    'stop db instance | /c flag closes cmd after execution
        Process.Start(stopsqldb)
    End Sub
End Class