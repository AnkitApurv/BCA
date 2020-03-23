VERSION 5.00
Begin VB.Form sanck_dispencer 
   Caption         =   "Snack Dispencer"
   ClientHeight    =   8505
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11745
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   8505
   ScaleWidth      =   11745
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame dispencer_frame 
      Caption         =   "Snack Dispencer"
      Height          =   8535
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11775
      Begin VB.Frame bill_frame 
         Caption         =   "Bill"
         Height          =   3135
         Left            =   240
         TabIndex        =   18
         Top             =   5280
         Width           =   11415
         Begin VB.Label lbl_bill 
            AutoSize        =   -1  'True
            BeginProperty Font 
               Name            =   "Calibri"
               Size            =   14.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   345
            Left            =   480
            TabIndex        =   19
            Top             =   600
            Width           =   60
         End
      End
      Begin VB.CommandButton cmd_new_order 
         Caption         =   "New Order"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6840
         TabIndex        =   17
         Top             =   4560
         Width           =   2655
      End
      Begin VB.CommandButton cmd_dispence 
         Caption         =   "Dispence Snack"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   1320
         TabIndex        =   16
         Top             =   4560
         Width           =   2655
      End
      Begin VB.TextBox txt_qty5 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   9480
         TabIndex        =   15
         Top             =   3600
         Width           =   1455
      End
      Begin VB.TextBox txt_qty4 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   7320
         TabIndex        =   14
         Top             =   3600
         Width           =   1455
      End
      Begin VB.TextBox txt_qty3 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   5040
         TabIndex        =   13
         Top             =   3600
         Width           =   1455
      End
      Begin VB.TextBox txt_qty2 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2880
         TabIndex        =   12
         Top             =   3600
         Width           =   1455
      End
      Begin VB.TextBox txt_qty1 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   600
         TabIndex        =   11
         Top             =   3600
         Width           =   1455
      End
      Begin VB.Image imgCHAAT 
         Height          =   975
         Left            =   9480
         Top             =   480
         Width           =   1815
      End
      Begin VB.Image imgSAMOSA 
         Height          =   975
         Left            =   7320
         Top             =   480
         Width           =   1815
      End
      Begin VB.Image imgNOODLES 
         Height          =   975
         Left            =   5040
         Top             =   480
         Width           =   1815
      End
      Begin VB.Image imgBURGER 
         Height          =   975
         Left            =   2880
         Top             =   480
         Width           =   1815
      End
      Begin VB.Image imgPIZZA 
         Height          =   975
         Left            =   600
         Top             =   480
         Width           =   1815
      End
      Begin VB.Label lbl_price5 
         AutoSize        =   -1  'True
         Caption         =   "Rs. 20/plate"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   9480
         TabIndex        =   10
         Top             =   2520
         Width           =   1380
      End
      Begin VB.Label lbl_price4 
         AutoSize        =   -1  'True
         Caption         =   "Rs. 10/pcs"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   7320
         TabIndex        =   9
         Top             =   2520
         Width           =   1200
      End
      Begin VB.Label lbl_price3 
         AutoSize        =   -1  'True
         Caption         =   "Rs. 50/bowl"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   5040
         TabIndex        =   8
         Top             =   2520
         Width           =   1380
      End
      Begin VB.Label lbl_price2 
         AutoSize        =   -1  'True
         Caption         =   "Rs. 80/pcs"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   2880
         TabIndex        =   7
         Top             =   2520
         Width           =   1200
      End
      Begin VB.Label lbl_price1 
         AutoSize        =   -1  'True
         Caption         =   "Rs. 250/pcs"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   600
         TabIndex        =   6
         Top             =   2520
         Width           =   1350
      End
      Begin VB.Label lbl_name5 
         AutoSize        =   -1  'True
         Caption         =   "Tomato Chaat"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   9480
         TabIndex        =   5
         Top             =   1680
         Width           =   1605
      End
      Begin VB.Label lbl_name4 
         AutoSize        =   -1  'True
         Caption         =   "Samosa"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   7320
         TabIndex        =   4
         Top             =   1680
         Width           =   900
      End
      Begin VB.Label lbl_name3 
         AutoSize        =   -1  'True
         Caption         =   "Noodles"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   5040
         TabIndex        =   3
         Top             =   1680
         Width           =   945
      End
      Begin VB.Label lbl_name2 
         AutoSize        =   -1  'True
         Caption         =   "Burger"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   2880
         TabIndex        =   2
         Top             =   1680
         Width           =   780
      End
      Begin VB.Label lbl_name1 
         AutoSize        =   -1  'True
         Caption         =   "Pizza"
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   600
         TabIndex        =   1
         Top             =   1680
         Width           =   585
      End
   End
End
Attribute VB_Name = "sanck_dispencer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
