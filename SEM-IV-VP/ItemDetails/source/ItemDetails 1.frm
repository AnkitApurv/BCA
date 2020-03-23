VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmItemDetails1 
   Caption         =   "Item Details"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   420
   ClientWidth     =   11055
   BeginProperty Font 
      Name            =   "Calibri"
      Size            =   12
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6780
   ScaleWidth      =   11055
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnSearch 
      Caption         =   "Search"
      Height          =   495
      Left            =   7680
      TabIndex        =   10
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CommandButton btnClear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   9360
      TabIndex        =   9
      Top             =   1200
      Width           =   1335
   End
   Begin VB.CommandButton btnViewAll 
      Caption         =   "View All"
      Height          =   495
      Left            =   6000
      TabIndex        =   8
      Top             =   1200
      Width           =   1335
   End
   Begin MSDataGridLib.DataGrid gridItemDet 
      Height          =   4215
      Left            =   360
      TabIndex        =   7
      Top             =   2160
      Width           =   10335
      _ExtentX        =   18230
      _ExtentY        =   7435
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton btnDelete 
      Caption         =   "Delete"
      Height          =   495
      Left            =   4080
      TabIndex        =   6
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton btnModify 
      Caption         =   "Modify"
      Height          =   495
      Left            =   2160
      TabIndex        =   5
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton btnAdd 
      Caption         =   "Add"
      Height          =   495
      Left            =   360
      TabIndex        =   4
      Top             =   1200
      Width           =   1455
   End
   Begin VB.TextBox txtItemID 
      Appearance      =   0  'Flat
      Height          =   405
      Left            =   7560
      TabIndex        =   3
      Top             =   360
      Width           =   2415
   End
   Begin VB.TextBox txtItemName 
      Appearance      =   0  'Flat
      Height          =   405
      Left            =   2760
      TabIndex        =   1
      Top             =   360
      Width           =   2055
   End
   Begin VB.Label lblItemID 
      AutoSize        =   -1  'True
      Caption         =   "Item ID"
      Height          =   285
      Left            =   6240
      TabIndex        =   2
      Top             =   360
      Width           =   705
   End
   Begin VB.Label lblItemName 
      AutoSize        =   -1  'True
      Caption         =   "Item Name"
      Height          =   285
      Left            =   1080
      TabIndex        =   0
      Top             =   360
      Width           =   1065
   End
End
Attribute VB_Name = "frmItemDetails1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim rsview As New ADODB.Recordset

Private Sub Form_Load()
 db.Open "VBAppDB1", "scott", "tiger"
End Sub

Private Sub btnAdd_click()
 Dim iid As Integer, iname As String
 iid = Val(Trim(txtItemID.Text))
 iname = Trim(txtItemName.Text)
 If rs.State = 1 Then
  rs.Close
  Set rs = Nothing
 End If
 rs.Open "insert into itemdet values(" & iid & "'" & iname & "')", db, 1, 2
 MsgBox "Records Saved"
 txtItemID.Text = ""
 txtItemName.Text = ""
End Sub

Private Sub btnModify_Click()
 Dim iid As Integer, iname As String
 iid = Val(Trim(txtItemID.Text))
 iname = Trim(txtItemName.Text)
 If rs.State = 1 Then
  rs.Close
  Set rs = Nothing
 End If
 rs.Open "update into itemdet values(" & iid & ",'" & iname & "')", db, 1, 2
 MsgBox "Records Modified"
 txtItemID.Text = ""
 txtItemName.Text = ""
End Sub

Private Sub btnDelete_Click()
 Dim iid As Integer, iname As String
 iid = Val(Trim(txtItemID.Text))
 iname = Trim(txtItemName.Text)
 If rs.State = 1 Then
  rs.Close
  Set rs = Nothing
 End If
 rs.Open "delete from itemdet where itemid=(" & iid & ") values(" & iid & ",'" & iname & "')", db, 1, 2
 MsgBox "Records Deleted"
 txtItemID.Text = ""
 txtItemName.Text = ""
End Sub

Private Sub btnViewAll_Click()
 txtItemID.Text = ""
 txtItemName.Text = ""
 If rsview.State = 1 Then
  rsview.Close
  Set rsview = Nothing
 End If
 rsview.Open "select * from itemdet", db, 1, 2
 Set gridItemDet.DataSource = rsview
End Sub

Private Sub btnClear_Click()
 txtItemID.Text = ""
 txtItemName.Text = ""
 If rs.State = 1 Then
  rs.Close
  Set rs = Nothing
 End If
 If rsview.State = 1 Then
  rsview.Close
  Set rsview = Nothing
 End If
 Set gridItemDet.DataSource = Nothing
End Sub

Private Sub Form_Unload(Cancel As Integer)
 If db.State = 1 Then
  db.Close
  Set db = Nothing
 End If
End Sub
