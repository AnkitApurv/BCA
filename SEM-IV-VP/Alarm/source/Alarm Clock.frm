VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{C1A8AF28-1257-101B-8FB0-0020AF039CA3}#1.1#0"; "MCI32.OCX"
Begin VB.Form Alarm 
   Caption         =   "Alarm"
   ClientHeight    =   3225
   ClientLeft      =   4860
   ClientTop       =   3885
   ClientWidth     =   8685
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
   ScaleHeight     =   3225
   ScaleWidth      =   8685
   Begin VB.Frame alarm_frame 
      Caption         =   "Alarm"
      Height          =   3135
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   8535
      Begin MCI.MMControl alarm_player 
         Height          =   330
         Left            =   360
         TabIndex        =   5
         Top             =   1560
         Visible         =   0   'False
         Width           =   390
         _ExtentX        =   688
         _ExtentY        =   582
         _Version        =   393216
         BorderStyle     =   0
         PrevVisible     =   0   'False
         NextVisible     =   0   'False
         PlayVisible     =   0   'False
         PauseVisible    =   0   'False
         BackVisible     =   0   'False
         StepVisible     =   0   'False
         StopVisible     =   0   'False
         RecordVisible   =   0   'False
         EjectVisible    =   0   'False
         DeviceType      =   ""
         FileName        =   ""
      End
      Begin VB.TextBox hide_alarm 
         BackColor       =   &H80000004&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         ForeColor       =   &H80000004&
         Height          =   975
         Left            =   6960
         TabIndex        =   4
         Top             =   360
         Width           =   975
      End
      Begin VB.Timer timer 
         Interval        =   1000
         Left            =   7200
         Top             =   600
      End
      Begin VB.CommandButton stop_alarm 
         Caption         =   "Stop Alarm"
         Height          =   375
         Left            =   4920
         TabIndex        =   3
         Top             =   2040
         Width           =   1935
      End
      Begin VB.CommandButton set_alarm 
         Caption         =   "Set Alarm"
         Height          =   375
         Left            =   1440
         TabIndex        =   2
         Top             =   2040
         Width           =   1935
      End
      Begin MSComCtl2.DTPicker time_picker 
         Height          =   375
         Left            =   2400
         TabIndex        =   1
         Top             =   600
         Width           =   3615
         _ExtentX        =   6376
         _ExtentY        =   661
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Calibri"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   75038722
         CurrentDate     =   0.5
      End
      Begin VB.Label lbl_now 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Current Time"
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
         Left            =   3555
         TabIndex        =   6
         Top             =   1320
         Width           =   1275
      End
   End
End
Attribute VB_Name = "Alarm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_load()
alarm_player.DeviceType = "waveaudio"
alarm_player.FileName = AppPath + ".\siren.wav"
End Sub

Private Sub timer_Timer()
 Dim alarmtime As String
 alarmtime = time_picker
 lbl_now.Caption = Format(Now, "hh:mm:ss AM/PM")
 If alarmtime = lbl_now.Caption Then
  alarm_player.Command = "play"
 End If
End Sub

Private Sub set_alarm_click()
alarm_player.Command = "open"
End Sub

Private Sub stop_alarm_click()
 alarm_player.Command = "close"
End Sub
