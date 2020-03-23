Friend Class DocuVault

    Dim AddFile As New OpenFileDialog() 'common dialog box to select a file
	
    Private Sub HomeFilesAdd_Click(sender As Object, e As EventArgs) Handles HomeFilesAdd.Click
        Dim file As Byte() = Nothing   'variable in which file is captured temporarly
        AddFileDlg()
        If AddFile.ShowDialog() = DialogResult.OK Then  'if user presses OK button on "open file dialog"
            Try
                file = IO.File.ReadAllBytes(AddFile.FileName) 'file saved in ofile byte array
                If (file IsNot Nothing) Then   'if file is grabbed by ofile FileStream then
                    'should call sql code to insert file
                    Dim sqlstmt As String = "INSERT INTO DMStore (file_bin, file_name) VALUES (@file, @file_name);" 'sql statement
                    Dim conn As New SqlConnection(GlobalFlags.connStr)  'to connect to db server prepared
                    Dim cmd As New SqlCommand(sqlstmt, conn)    'sql statement and connection prepared
                    'parameters allow inserting variables in sqlstmt
                    'parameterize file
                    Dim fileprm As New SqlParameter()
                    fileprm.ParameterName = "@file"
                    fileprm.Value = file
                    cmd.Parameters.Add(fileprm)
                    'parameterize filename
                    Dim file_name As String = AddFile.FileName  'get file's name
                    cmd.Parameters.Add("@file_name", SqlDbType.VarChar, 50)
                    cmd.Parameters("@file_name").Value = file_name
                    'db execution
                    conn.Open()   'connection opened
                    cmd.ExecuteNonQuery()   'execute sql
                    conn.Close()  'close connection
                    DocuReportViewer.RefreshReport() 'refresh report viewer
                End If
            Catch IOEX As IOException
                Dim ExceptionCatch As New ExceptionCatch    'instantiate ExceptionCatch class
                ExceptionCatch.IOExceptionCatch()   'TODO: when IOException occures
            Catch SQLEX As SqlException
                Dim ExceptionCatch As New ExceptionCatch    'instantiate ExceptionCatch class
                ExceptionCatch.NotLoggedIn()    'TODO:if user in not logged in
            Catch EX As Exception
                Dim ExceptionCatch As New ExceptionCatch    'instantiate ExceptionCatch class
                ExceptionCatch.GenericExceptionCatch()   'TODO: when GenericException occures
            Finally
                'Check this again, since we need to make sure we didn't throw an exception on open.
                If (file IsNot Nothing) Then
                    file = Nothing 'if everything doesn't work then leave selected file
                End If
            End Try
        Else
            'if Ok button in OpenFileDialog not clicked then do nothing
        End If
    End Sub
	
    Private Sub HomeFilesDelete_Click(sender As Object, e As EventArgs) Handles HomeFilesDelete.Click
        Dim Message As String = "Confirm Delete!"   'exception box caption
        Dim Caption As String = "Do you want to delete this file? This is operation cannot be undone!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.YesNo 'add OK button to message box
        Dim Confirm As DialogResult    '#more info needed | resultant
        Confirm = MessageBox.Show(Caption, Message, Buttons)  'show message box
        If Confirm = DialogResult.Yes Then
            'delete file from db
            Dim sqlstmt As String = Nothing 'sql statement
            Dim connection As New SqlConnection(GlobalFlags.connStr)   'to connect to db server prepared
            Dim cmd As New SqlCommand(sqlstmt, connection)  'sql statement and connection prepared
            connection.Open()   'connection opened
            cmd.ExecuteNonQuery()   'execute sql
            connection.Close()  'close connection
            DocuReportViewer.RefreshReport() 'refresh report viewer
        ElseIf Confirm = DialogResult.No Then
            'do nothing
        Else
            'do nothing
        End If
    End Sub
	
    Private Sub AddFileDlg()
        AddFile.InitialDirectory = "%userprofile%"  '"open file dialog" opens in User's folder by default
        AddFile.Filter = "All files (*.*)|*.*"  'all file types are eligible for insertion
        AddFile.FilterIndex = 1 '#more info needed | probably index numbers for multiple files selection scenario
        AddFile.RestoreDirectory = True 'reset dialog's defult open path to %userprofile%
    End Sub
	
    Private Sub UserCredentialsSignUp_Click(sender As Object, e As EventArgs) Handles UserCredentialsSignUp.Click
        Dim f As New SignUp 'instantiate
        f.Show()    'SignUp
    End Sub
	
    Private Sub UserCredentialsSignIn_Click(sender As Object, e As EventArgs) Handles UserCredentialsSignIn.Click
        Dim f As New SignIn 'instantiate
        f.Show()    'SignIn    
    End Sub
	
    Private Sub ExtrasExtraAbout_Click(sender As Object, e As EventArgs) Handles ExtrasExtraAbout.Click
        Dim f As New About  'instantiate
        f.Show()    'AboutBox    
    End Sub
	
    Private Sub ExtrasExtraHelp_Click(sender As Object, e As EventArgs) Handles ExtrasExtraHelp.Click
        Process.Start("https://www.google.com/")    'opens Google homepage ;~)
    End Sub
	
    Private Sub DMS_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DMStorageDataSet.DMStore' table. You can move, or remove it, as needed.
        Me.DMStoreTableAdapter.Fill(Me.DocuVaultDataSet.DMStore)
        Me.DocuReportViewer.RefreshReport()
    End Sub
	
    Private Sub DMS_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Dim GlobalFlags As New GlobalFlags
        GlobalFlags.StopDB() 'stop the db instance from "sqllocaldb p ProjectsV12"
    End Sub
	
    Private Sub UserCredentialsSignOut_Click(sender As Object, e As EventArgs) Handles UserCredentialsSignOut.Click
        Dim GlobalFlags As New GlobalFlags
        GlobalFlags.StopDB() 'stop the db instance from "sqllocaldb p ProjectsV12"
        Me.Close()
    End Sub
	
    Public Sub SignInFlag_Change()
        If GlobalFlags.SignInFlag = True Then  'when SignIn is accepted and db instance is started
            DocuReportViewer.RefreshReport() 'refresh report viewer
        Else
            'do nothing, user is already not logged in and db instance has been stopped
        End If
    End Sub

    Private Sub DocuReportViewer_Load(sender As Object, e As EventArgs) Handles DocuReportViewer.Load

    End Sub
End Class