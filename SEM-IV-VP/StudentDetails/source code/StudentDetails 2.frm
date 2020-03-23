VERSION 5.00
Begin VB.Form frmStudentDetails2 
   ClientHeight    =   5460
   ClientLeft      =   3990
   ClientTop       =   2970
   ClientWidth     =   12825
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   ScaleHeight     =   5460
   ScaleWidth      =   12825
   Begin VB.Frame frmRESULT 
      Caption         =   "Result"
      Height          =   3135
      Left            =   240
      TabIndex        =   10
      Top             =   2160
      Width           =   12375
      Begin VB.TextBox Text2 
         Height          =   405
         Left            =   1920
         TabIndex        =   16
         Text            =   "Text2"
         Top             =   2400
         Width           =   2415
      End
      Begin VB.TextBox Text1 
         Height          =   405
         Left            =   1920
         TabIndex        =   15
         Text            =   "Text1"
         Top             =   1440
         Width           =   2415
      End
      Begin VB.TextBox txtMARKS 
         Height          =   405
         Left            =   1920
         TabIndex        =   14
         Top             =   480
         Width           =   2415
      End
      Begin VB.Label lblRESULT 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "RESULT"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   48
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   960
         Left            =   7530
         TabIndex        =   17
         Top             =   1080
         Width           =   2895
      End
      Begin VB.Label lblDIVISION 
         AutoSize        =   -1  'True
         Caption         =   "Division"
         Height          =   285
         Left            =   360
         TabIndex        =   13
         Top             =   2400
         Width           =   780
      End
      Begin VB.Label lblPRECENTAGE 
         AutoSize        =   -1  'True
         Caption         =   "Precentage"
         Height          =   285
         Left            =   360
         TabIndex        =   12
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label lblMARKS 
         AutoSize        =   -1  'True
         Caption         =   "Total Marks"
         Height          =   285
         Left            =   360
         TabIndex        =   11
         Top             =   480
         Width           =   1155
      End
   End
   Begin VB.TextBox txtSUB2 
      Height          =   405
      Left            =   5880
      TabIndex        =   9
      Top             =   1320
      Width           =   2295
   End
   Begin VB.TextBox txtSUB3 
      Height          =   405
      Left            =   10080
      TabIndex        =   8
      Top             =   1320
      Width           =   2295
   End
   Begin VB.TextBox txtSUB1 
      Height          =   405
      Left            =   1800
      TabIndex        =   7
      Top             =   1320
      Width           =   2295
   End
   Begin VB.ComboBox cmbCOURSE 
      Height          =   405
      Left            =   10080
      TabIndex        =   3
      Top             =   360
      Width           =   2295
   End
   Begin VB.TextBox txtUID 
      Height          =   405
      Left            =   1800
      TabIndex        =   1
      Top             =   360
      Width           =   2295
   End
   Begin VB.Label lblSUB3 
      AutoSize        =   -1  'True
      Caption         =   "Subject 3"
      Height          =   285
      Left            =   8880
      TabIndex        =   6
      Top             =   1320
      Width           =   885
   End
   Begin VB.Label lblSUB2 
      AutoSize        =   -1  'True
      Caption         =   "Subject 2"
      Height          =   285
      Left            =   4560
      TabIndex        =   5
      Top             =   1320
      Width           =   885
   End
   Begin VB.Label lblSUB1 
      AutoSize        =   -1  'True
      Caption         =   "Subject 1"
      Height          =   285
      Left            =   480
      TabIndex        =   4
      Top             =   1320
      Width           =   885
   End
   Begin VB.Label lblCOURSE 
      AutoSize        =   -1  'True
      Caption         =   "Course"
      Height          =   285
      Left            =   8880
      TabIndex        =   2
      Top             =   360
      Width           =   675
   End
   Begin VB.Label lblUID 
      AutoSize        =   -1  'True
      Caption         =   "Unique ID"
      Height          =   285
      Left            =   480
      TabIndex        =   0
      Top             =   360
      Width           =   960
   End
End
Attribute VB_Name = "frmStudentDetails2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
