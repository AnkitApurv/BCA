Friend Class SignUp

    ' TODO: Insert code to perform custom authentication using the provided username and password 
    ' (See http://go.microsoft.com/fwlink/?LinkId=35339).  
    ' The custom principal can then be attached to the current thread's principal as follows: 
    '     My.User.CurrentPrincipal = CustomPrincipal
    ' where CustomPrincipal is the IPrincipal implementation used to perform authentication. 
    ' Subsequently, My.User will return identity information encapsulated in the CustomPrincipal object
    ' such as the username, display name, etc.

    Private Sub OK_Click(ByVal sender As Object, ByVal e As EventArgs) Handles OK.Click
        Dim GlobalFlags As New GlobalFlags
        GlobalFlags.StartDB()   'start the db instance from "sqllocaldb s ProjectsV12"
        Dim sqlstmt As String = "INSERT INTO DMSuser (user_id, passwd) VALUES (@user_id, @passwd);" 'sql statement
        Dim conn As New SqlConnection(GlobalFlags.connStr)  'to connect to db server prepared
        Dim cmd As New SqlCommand(sqlstmt, conn)    'sql statement and connection prepared
        'parameters allow inserting variables in sqlstmt
        'parameterize user_id
        cmd.Parameters.Add("@user_id", SqlDbType.VarChar, 10)
        cmd.Parameters("@user_id").Value = UsernameTextBox.Text.Trim().ToString()
        'parameterize passwd
        cmd.Parameters.Add("@passwd", SqlDbType.VarChar, 50)
        cmd.Parameters("@passwd").Value = PasswordTextBox.Text.Trim().ToString()
        'db execution
        conn.Open()   'connection opened
        cmd.ExecuteNonQuery()   'execute sql
        conn.Close()  'close connection
        GlobalFlags.StopDB()   'stop the db instance from "sqllocaldb p ProjectsV12"
        Me.Close()
    End Sub

    Private Sub Cancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Cancel.Click
        'do nothing
        Me.Close()
    End Sub

End Class
