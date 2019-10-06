inherited EditForm: TEditForm
  Caption = 'EditForm'
  ClientHeight = 179
  ClientWidth = 461
  ExplicitWidth = 477
  ExplicitHeight = 217
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 144
    Width = 461
    Height = 35
    Align = alBottom
    TabOrder = 0
    object cxButton1: TcxButton
      Left = 288
      Top = 3
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 369
      Top = 3
      Width = 75
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1072
      TabOrder = 1
    end
  end
  object cxTextEdit1: TcxTextEdit [1]
    Left = 82
    Top = 64
    TabOrder = 1
    Width = 281
  end
  object cxLabel1: TcxLabel [2]
    Left = 184
    Top = 41
    Caption = #1042#1074#1077#1076#1110#1090#1100' '#1076#1072#1085#1110
  end
  object cxDBTextEdit1: TcxDBTextEdit [3]
    Left = 82
    Top = 104
    TabOrder = 3
    Width = 281
  end
  inherited IBTransaction1: TIBTransaction
    Left = 24
    Top = 136
  end
end
