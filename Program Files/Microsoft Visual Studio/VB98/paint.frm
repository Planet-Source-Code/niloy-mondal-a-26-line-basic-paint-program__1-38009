VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Form1"
   ClientHeight    =   5400
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   ScaleHeight     =   5400
   ScaleWidth      =   6615
   StartUpPosition =   3  'Windows Default
   Begin VB.Label Label1 
      Caption         =   "Programmer :- Niloy Mondal. Email :- niloygk@yahoo.com"
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   4800
      Width           =   5655
   End
   Begin VB.Line Line1 
      Index           =   0
      Visible         =   0   'False
      X1              =   480
      X2              =   4800
      Y1              =   360
      Y2              =   360
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'An control array of line has been made. Its visiblity is set to false.
Dim ButtonPress As Boolean
Dim lastx, lasty As Integer

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
ButtonPress = True
lastx = x
lasty = y
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, x As Single, y As Single)
If ButtonPress = True Then
    Load Line1(Line1.Count)
    Line1(Line1.UBound).X1 = lastx
    Line1(Line1.UBound).X2 = x
    Line1(Line1.UBound).Y1 = lasty
    Line1(Line1.UBound).Y2 = y
    Line1(Line1.UBound).Visible = True
    lastx = x
    lasty = y
End If
End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
ButtonPress = False
End Sub
