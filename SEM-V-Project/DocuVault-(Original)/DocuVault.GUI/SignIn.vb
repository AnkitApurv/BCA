Friend Class SignIn : Inherits Form
    ' TODO: Insert code to perform custom authentication using the provided username and password 
    ' (See http://go.microsoft.com/fwlink/?LinkId=35339).  
    ' The custom principal can then be attached to the current thread's principal as follows: 
    '     My.User.CurrentPrincipal = CustomPrincipal
    ' where CustomPrincipal is the IPrincipal implementation used to perform authentication. 
    ' Subsequently, My.User will return identity information encapsulated in the CustomPrincipal object
    ' such as the username, display name, etc.
    Private Sub OK_Click(ByVal sender As Object, ByVal e As EventArgs) Handles OK.Click
        Dim GlobalFlags As New GlobalFlags
        Dim uname As String = Nothing
        Dim pwd As String = Nothing
        GlobalFlags.StartDB()   'start the db instance from "sqllocaldb s ProjectsV12"
        Dim sqlstmt As String = "SELECT COUNT(*) FROM DMSuser WHERE user_id=@user_id AND passwd=@passwd;" 'sql statement
        Dim conn As New SqlConnection(GlobalFlags.connStr)  'to connect to db server prepared
        Dim cmd As New SqlCommand(sqlstmt, conn)    'sql statement and connection prepared
        'parameters allow inserting variables in sqlstmt
        'parameterize user_id
        cmd.Parameters.Add("@user_id", SqlDbType.VarChar, 10)
        uname = UsernameTextBox.Text.Trim().ToString()
        cmd.Parameters("@user_id").Value = uname
        'parameterize passwd
        cmd.Parameters.Add("@passwd", SqlDbType.VarChar, 50)
        pwd = PasswordTextBox.Text.Trim().ToString()
        cmd.Parameters("@passwd").Value = pwd
        'db execution
        conn.Open()   'connection opened
        cmd.ExecuteNonQuery()   'execute sql
        Dim affected_rows As Integer = cmd.ExecuteNonQuery 'gets number of rows affected by sql statement
        conn.Close()  'close connection
        If affected_rows <> -1 Then
            GlobalFlags.StopDB()   'stop the db instance from "sqllocaldb p ProjectsV12"
            Dim ExceptionCatch As New ExceptionCatch
            ExceptionCatch.LoginFailed()    'tell user that login has failed
            GlobalFlags.SignInFlag = False  'no sign in
        Else
            GlobalFlags.SignInFlag = True   'declear sign in true, pass on focus to DocuVault
            DocuVault.DocuReportViewer.RefreshReport()
        End If
        Me.Close()
    End Sub
    Private Sub Cancel_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Cancel.Click
        'do nothing
        GlobalFlags.SignInFlag = False
        Me.Close()
    End Sub
End Class
