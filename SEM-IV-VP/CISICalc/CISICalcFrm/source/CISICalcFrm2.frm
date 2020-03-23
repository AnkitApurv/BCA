VERSION 5.00
Begin VB.Form CISICalcFrm2 
   Caption         =   "Intrest Calculator"
   ClientHeight    =   4770
   ClientLeft      =   5100
   ClientTop       =   4095
   ClientWidth     =   5895
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "CISICalcFrm2"
   ScaleHeight     =   4770
   ScaleWidth      =   5895
   Begin VB.TextBox txt_intrest_amt 
      BorderStyle     =   0  'None
      Enabled         =   0   'False
      Height          =   375
      Left            =   3240
      TabIndex        =   10
      Top             =   2880
      Width           =   2055
   End
   Begin VB.CommandButton cmd_reset 
      Caption         =   "Reset"
      Height          =   495
      Left            =   4080
      TabIndex        =   8
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmd_si 
      Caption         =   "SI"
      Height          =   495
      Left            =   2160
      TabIndex        =   7
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton cmd_ci 
      Caption         =   "CI"
      Height          =   495
      Left            =   240
      TabIndex        =   6
      Top             =   3840
      Width           =   1575
   End
   Begin VB.TextBox txt_tenure 
      BorderStyle     =   0  'None
      Height          =   405
      Left            =   3240
      TabIndex        =   5
      Top             =   2040
      Width           =   2055
   End
   Begin VB.TextBox txt_rate 
      BorderStyle     =   0  'None
      Height          =   405
      Left            =   3240
      TabIndex        =   4
      Top             =   1200
      Width           =   2055
   End
   Begin VB.TextBox txt_principal 
      BorderStyle     =   0  'None
      Height          =   405
      Left            =   3240
      TabIndex        =   3
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lbl_intrest_amt 
      AutoSize        =   -1  'True
      Caption         =   "Intrest Amount"
      Height          =   285
      Left            =   480
      TabIndex        =   9
      Top             =   2880
      Width           =   1440
   End
   Begin VB.Label lbl_tenure 
      AutoSize        =   -1  'True
      Caption         =   "Tenure (Years)"
      Height          =   285
      Left            =   480
      TabIndex        =   2
      Top             =   2040
      Width           =   1425
   End
   Begin VB.Label lbl_rate 
      AutoSize        =   -1  'True
      Caption         =   "Intrest Rate (%)"
      Height          =   285
      Left            =   480
      TabIndex        =   1
      Top             =   1200
      Width           =   1515
   End
   Begin VB.Label lbl_principal 
      AutoSize        =   -1  'True
      Caption         =   "Principal (Currency)"
      Height          =   285
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   1905
   End
End
Attribute VB_Name = "CISICalcFrm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd_ci_Click()
Dim P As Single, T As Integer, R As Single
Dim c_i As Single
P = Val(Trim(txt_principal.Text))
T = txt_tenure.Text
R = Val(Trim(txt_rate.Text))
c_i = CISICalcLib1.CI(P, T, R)
txt_intrest_amt.Text = c_i
End Sub

Private Sub cmd_reset_Click()
txt_principal.Text = ""
txt_rate.Text = ""
txt_tenure = ""
txt_intrest_amt = ""
End Sub

Private Sub cmd_si_Click()
Dim P As Single, T As Integer, R As Single
Dim s_i As Single
P = Val(Trim(txt_principal.Text))
T = txt_tenure.Text
R = Val(Trim(txt_rate.Text))
s_i = CISICalcLib1.SI(P, T, R)
txt_intrest_amt.Text = s_i
End Sub
