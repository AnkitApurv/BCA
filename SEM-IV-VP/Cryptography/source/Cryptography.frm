VERSION 5.00
Begin VB.Form Cryptography_Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cryptography"
   ClientHeight    =   4950
   ClientLeft      =   4680
   ClientTop       =   3675
   ClientWidth     =   7950
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Cryptography"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4950
   ScaleWidth      =   7950
   Begin VB.Frame encdecframe 
      Caption         =   "Encryption Decryption"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7695
      Begin VB.TextBox txt_secret_key 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4440
         TabIndex        =   9
         Top             =   2880
         Width           =   2535
      End
      Begin VB.TextBox txt_crypt 
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4440
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   1800
         Width           =   2415
      End
      Begin VB.TextBox txt_input 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   4440
         TabIndex        =   4
         Top             =   480
         Width           =   2415
      End
      Begin VB.CommandButton cmd_reset 
         Caption         =   "Reset"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5640
         TabIndex        =   3
         Top             =   3960
         Width           =   1695
      End
      Begin VB.CommandButton cmd_decrypt 
         Caption         =   "Decrypt"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3000
         TabIndex        =   2
         Top             =   3960
         Width           =   1575
      End
      Begin VB.CommandButton cmd_encrypt 
         Caption         =   "Encrypt"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   3960
         Width           =   1455
      End
      Begin VB.Label lbl_secret_key 
         Caption         =   "Secret Key"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   960
         TabIndex        =   8
         Top             =   3000
         Width           =   2295
      End
      Begin VB.Label lbl_crypted 
         AutoSize        =   -1  'True
         Caption         =   "Crypted"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   960
         TabIndex        =   7
         Top             =   1800
         Width           =   750
      End
      Begin VB.Label lbl_input 
         AutoSize        =   -1  'True
         Caption         =   "Input Text"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   960
         TabIndex        =   6
         Top             =   480
         Width           =   975
      End
   End
End
Attribute VB_Name = "Cryptography_Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim plain(150) As Integer, cipher(150) As Integer
Dim keyvalue As Integer, I As Integer, strcount As Integer

Private Sub cmd_reset_click()
txt_input.Text = ""
txt_crypt.Text = ""
txt_secret_key.Text = ""
For I = 0 To strcount
 plain(I) = 0
 cipher(I) = 0
Next I
strcount = 0
lbl_crypted.Caption = "Crypted"
End Sub

Private Sub cmd_encrypt_click()
txt_crypt.Text = ""
redo:
 Randomize (100)
 keyvalue = (Rnd(20) * 5) Mod 8
 If keyvalue = 0 Then
  GoTo redo
 End If
 I = 0
 Do While I < strcount
  cipher(I) = plain(I) + keyvalue
  txt_crypt.Text = txt_crypt.Text & Chr(cipher(I))
  I = I + 1
  txt_secret_key.Text = keyvalue
  Loop
  lbl_crypted.Caption = "Encrypted"
End Sub

Private Sub cmd_decrypt_click()
txt_crypt.Text = ""
I = 0
Do While I < strcount
 txt_crypt.Text = txt_crypt.Text & Chr(cipher(I) - keyvalue)
 I = I + 1
 txt_secret_key.Text = keyvalue
Loop
lbl_crypted.Caption = "Decrypted"
End Sub

Private Sub txt_input_keypress(keyAscii As Integer)
If keyAscii <> 8 Then
 plain(strcount) = keyAscii
 strcount = strcount + 1
End If
End Sub
