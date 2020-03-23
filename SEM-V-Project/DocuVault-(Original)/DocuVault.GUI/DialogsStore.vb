Friend Class DialogsStore
    Dim EX As Exception
    Dim IOEX As IOException
    Protected Friend Sub GenericExceptionCatch()
        Dim Message As String = "Unh Oh"   'exception box caption/title
        Dim Caption As String = "Woah! Something went wrong. We'r Sorry!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message & EX.Message, Buttons, MessageBoxIcon.Error)  'show message box
        'DocuVault.Close()
    End Sub
    Protected Friend Sub IOExceptionCatch()
        Dim Message As String = "Unh Oh"   'exception box caption/title
        Dim Caption As String = "Woah! We can't access that file. We'r Sorry!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message & IOEX.Message, Buttons, MessageBoxIcon.Exclamation)
    End Sub
    Protected Friend Shared Sub SignInFailed()
        Dim Message As String = "Unh Oh"   'exception box caption/title
        Dim Caption As String = "Wrong Credentials!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message, Buttons, MessageBoxIcon.Warning)
    End Sub
    Protected Friend Shared Sub NotSignedIn()
        Dim Message As String = "Unh Oh"   'exception box caption/title
        Dim Caption As String = "You are not Signed In! Please Sign In first."   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message, Buttons, MessageBoxIcon.Warning)
    End Sub
    Protected Friend Shared Sub SignInSucess()
        Dim Message As String = "Yeae"   'exception box caption/title
        Dim Caption As String = "Sucessfully Signed In!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message, Buttons, MessageBoxIcon.Warning)
    End Sub
    Protected Friend Shared Sub SignUpSucess()
        Dim Message As String = "Yeae"   'exception box caption/title
        Dim Caption As String = "Sucessfully Signed Up!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message, Buttons, MessageBoxIcon.Warning)
    End Sub
    Protected Friend Shared Sub SignUpFailed()
        Dim Message As String = "Unh Oh"   'exception box caption/title
        Dim Caption As String = "Woah! Signing Up failed. We'r Sorry!"   'exception box message
        Dim Buttons As MessageBoxButtons = MessageBoxButtons.OK 'add OK button to message box
        MessageBox.Show(Caption, Message, Buttons, MessageBoxIcon.Warning)
    End Sub
End Class
