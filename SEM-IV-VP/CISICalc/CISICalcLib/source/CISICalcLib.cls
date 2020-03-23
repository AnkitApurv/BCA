VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 1  'Persistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "CISICalcLib1"
Attribute VB_GlobalNameSpace = True
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Public Function SI(P As Single, T As Integer, R As Single) As Integer
SI = (P * T * R) / 100
End Function

Public Function CI(P As Single, T As Integer, R As Single) As Integer
Dim AMT As Integer
AMT = P * (1 + R / 100) ^ T
CI = AMT - P
End Function

