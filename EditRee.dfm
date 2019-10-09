inherited EditReeFrm: TEditReeFrm
  Caption = 'EditReeFrm'
  ClientHeight = 636
  ClientWidth = 528
  Position = poMainFormCenter
  OnCreate = FormCreate
  ExplicitWidth = 544
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 601
    Width = 528
    Height = 35
    Align = alBottom
    TabOrder = 0
    object Panel2: TPanel
      Left = 356
      Top = 1
      Width = 171
      Height = 33
      Align = alRight
      TabOrder = 0
      object cxButton1: TcxButton
        Left = 8
        Top = 3
        Width = 75
        Height = 25
        Caption = 'OK'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 89
        Top = 3
        Width = 75
        Height = 25
        Caption = #1042#1110#1076#1084#1110#1085#1072
        TabOrder = 1
        OnClick = cxButton2Click
      end
    end
  end
  object cxTextEdit1: TcxTextEdit [1]
    Left = 84
    Top = 15
    Properties.ClearKey = 46
    Properties.MaxLength = 100
    Properties.OnChange = cxTextEdit1PropertiesChange
    Style.BorderColor = clWindowFrame
    Style.Color = clWindow
    TabOrder = 1
    Width = 436
  end
  object cxLabel1: TcxLabel [2]
    Left = 32
    Top = 16
    Caption = #1055#1088#1110#1079#1074#1080#1097#1077
  end
  object cxLabel2: TcxLabel [3]
    Left = 61
    Top = 45
    Caption = #1030#1084#39#1103
  end
  object cxTextEdit2: TcxTextEdit [4]
    Left = 84
    Top = 42
    Properties.ClearKey = 46
    Properties.MaxLength = 100
    Properties.OnChange = cxTextEdit2PropertiesChange
    TabOrder = 4
    Width = 166
  end
  object cxLabel3: TcxLabel [5]
    Left = 256
    Top = 43
    Caption = #1055#1086#1073#1072#1090#1100#1082#1086#1074#1110
  end
  object cxTextEdit3: TcxTextEdit [6]
    Left = 323
    Top = 42
    Properties.ClearKey = 46
    Properties.MaxLength = 100
    TabOrder = 6
    Width = 197
  end
  object cxGroupBox1: TcxGroupBox [7]
    Left = 24
    Top = 223
    Caption = #1052#1110#1089#1094#1077' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
    TabOrder = 7
    Height = 108
    Width = 496
    object cxLabel4: TcxLabel
      Left = 12
      Top = 43
      Caption = #1050#1088#1072#1111#1085#1072
    end
    object cxButtonEdit1: TcxButtonEdit
      Left = 60
      Top = 42
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      TabOrder = 1
      Width = 166
    end
    object cxLabel18: TcxLabel
      Left = 12
      Top = 70
      Caption = #1054#1073#1083#1072#1089#1090#1100
    end
    object cxButtonEdit8: TcxButtonEdit
      Left = 60
      Top = 69
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit8PropertiesButtonClick
      TabOrder = 3
      Width = 166
    end
    object cxLabel19: TcxLabel
      Left = 276
      Top = 22
      Caption = #1056#1072#1081#1086#1085
    end
    object cxButtonEdit9: TcxButtonEdit
      Left = 316
      Top = 21
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit9PropertiesButtonClick
      TabOrder = 5
      Width = 166
    end
    object cxLabel20: TcxLabel
      Left = 254
      Top = 49
      Caption = #1053#1072#1089'.'#1087#1091#1085#1082#1090
    end
    object cxButtonEdit10: TcxButtonEdit
      Left = 316
      Top = 48
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit10PropertiesButtonClick
      TabOrder = 7
      Width = 166
    end
    object cxLabel21: TcxLabel
      Left = 234
      Top = 75
      Caption = #1043#1088#1086#1084#1072#1076#1103#1085#1089#1090#1074#1086
    end
    object cxButtonEdit11: TcxButtonEdit
      Left = 316
      Top = 75
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit11PropertiesButtonClick
      TabOrder = 9
      Width = 166
    end
    object cxLabel22: TcxLabel
      Left = 12
      Top = 16
      Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
    end
    object cxDateEdit1: TcxDateEdit
      Left = 114
      Top = 15
      Properties.ClearKey = 46
      TabOrder = 11
      Width = 112
    end
  end
  object cxGroupBox2: TcxGroupBox [8]
    Left = 24
    Top = 79
    Caption = #1052#1110#1089#1094#1077' '#1087#1088#1086#1078#1080#1074#1072#1085#1085#1103
    ParentBackground = False
    ParentColor = False
    Style.Color = clBtnFace
    TabOrder = 8
    Height = 138
    Width = 496
    object cxLabel12: TcxLabel
      Left = 22
      Top = 22
      Caption = #1050#1088#1072#1111#1085#1072
    end
    object cxButtonEdit2: TcxButtonEdit
      Left = 60
      Top = 18
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit2PropertiesButtonClick
      Properties.OnChange = cxButtonEdit2PropertiesChange
      TabOrder = 1
      Width = 166
    end
    object cxLabel13: TcxLabel
      Left = 12
      Top = 46
      Caption = #1054#1073#1083#1072#1089#1090#1100
    end
    object cxButtonEdit3: TcxButtonEdit
      Left = 60
      Top = 45
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit3PropertiesButtonClick
      Properties.OnChange = cxButtonEdit3PropertiesChange
      TabOrder = 3
      Width = 166
    end
    object cxLabel14: TcxLabel
      Left = 25
      Top = 72
      Caption = #1056#1072#1081#1086#1085
    end
    object cxButtonEdit4: TcxButtonEdit
      Left = 60
      Top = 72
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit4PropertiesButtonClick
      TabOrder = 5
      Width = 166
    end
    object cxLabel16: TcxLabel
      Left = 230
      Top = 47
      Caption = #1043#1077#1086#1085#1110#1084'('#1074#1091#1083#1080#1094#1103')'
    end
    object cxButtonEdit6: TcxButtonEdit
      Left = 316
      Top = 46
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit6PropertiesButtonClick
      Properties.OnChange = cxButtonEdit6PropertiesChange
      TabOrder = 7
      Width = 166
    end
    object cxLabel17: TcxLabel
      Left = 263
      Top = 73
      Caption = #1041#1091#1076#1080#1085#1086#1082
    end
    object cxLabel15: TcxLabel
      Left = 248
      Top = 20
      Caption = #1058#1080#1087' '#1075#1077#1086#1085#1110#1084#1091
    end
    object cxButtonEdit5: TcxButtonEdit
      Left = 316
      Top = 19
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit5PropertiesButtonClick
      Properties.OnChange = cxButtonEdit5PropertiesChange
      TabOrder = 10
      Width = 166
    end
    object cxLabel5: TcxLabel
      Left = 3
      Top = 99
      Caption = #1053#1072#1089'.'#1087#1091#1085#1082#1090
    end
    object cxButtonEdit12: TcxButtonEdit
      Left = 60
      Top = 99
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit12PropertiesButtonClick
      Properties.OnChange = cxButtonEdit12PropertiesChange
      TabOrder = 12
      Width = 166
    end
    object cxTextEdit4: TcxTextEdit
      Left = 316
      Top = 73
      Properties.ClearKey = 46
      Properties.MaxLength = 10
      Properties.OnChange = cxTextEdit4PropertiesChange
      TabOrder = 13
      Width = 45
    end
    object cxLabel6: TcxLabel
      Left = 367
      Top = 73
      Caption = #1050#1074#1072#1088#1090#1080#1088#1072
    end
    object cxTextEdit5: TcxTextEdit
      Left = 421
      Top = 73
      Properties.ClearKey = 46
      Properties.MaxLength = 10
      TabOrder = 15
      Width = 45
    end
  end
  object cxGroupBox3: TcxGroupBox [9]
    Left = 24
    Top = 337
    Caption = #1030#1085#1096#1077
    TabOrder = 9
    Height = 256
    Width = 496
    object cxLabel7: TcxLabel
      Left = 55
      Top = 42
      Caption = #1028#1044#1044#1056
    end
    object cxLabel8: TcxLabel
      Left = 12
      Top = 70
      Caption = #1047#1074#1110#1076#1082#1080' '#1087#1088#1080#1073#1091#1074
    end
    object cxLabel23: TcxLabel
      Left = 5
      Top = 16
      Caption = #1044#1072#1090#1072' '#1088#1077#1108#1089#1090#1088#1072#1094#1110#1111
    end
    object cxDateEdit2: TcxDateEdit
      Left = 94
      Top = 15
      Properties.ClearKey = 46
      TabOrder = 3
      Width = 112
    end
    object cxLabel9: TcxLabel
      Left = 234
      Top = 16
      Caption = #1044#1072#1090#1072' '#1079#1085#1103#1090#1090#1103' '#1079' '#1088#1077#1108#1089#1090#1088#1072#1094#1110#1111
    end
    object cxDateEdit3: TcxDateEdit
      Left = 367
      Top = 15
      Properties.ClearKey = 46
      TabOrder = 5
      Width = 112
    end
    object cxTextEdit6: TcxTextEdit
      Left = 94
      Top = 42
      Properties.ClearKey = 46
      Properties.MaxLength = 15
      TabOrder = 6
      Width = 166
    end
    object cxMemo1: TcxMemo
      Left = 94
      Top = 69
      Properties.ClearKey = 46
      Properties.MaxLength = 200
      TabOrder = 7
      Height = 44
      Width = 387
    end
    object cxLabel10: TcxLabel
      Left = 25
      Top = 120
      Caption = #1050#1091#1076#1080' '#1074#1080#1073#1091#1074
    end
    object cxMemo2: TcxMemo
      Left = 94
      Top = 119
      Properties.ClearKey = 46
      Properties.MaxLength = 200
      TabOrder = 9
      Height = 42
      Width = 387
    end
    object cxLabel11: TcxLabel
      Left = 199
      Top = 167
      Caption = #1057#1077#1088#1110#1103
    end
    object cxTextEdit7: TcxTextEdit
      Left = 236
      Top = 167
      Properties.ClearKey = 46
      Properties.MaxLength = 10
      TabOrder = 11
      Width = 93
    end
    object cxLabel24: TcxLabel
      Left = 337
      Top = 167
      Caption = #8470
    end
    object cxTextEdit8: TcxTextEdit
      Left = 360
      Top = 167
      Properties.ClearKey = 46
      Properties.MaxLength = 20
      TabOrder = 13
      Width = 121
    end
    object cxLabel25: TcxLabel
      Left = 7
      Top = 170
      Caption = #1042#1080#1076' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
    end
    object cxButtonEdit7: TcxButtonEdit
      Left = 94
      Top = 167
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit7PropertiesButtonClick
      TabOrder = 15
      Width = 99
    end
    object cxLabel26: TcxLabel
      Left = 19
      Top = 197
      Caption = #1050#1080#1084' '#1074#1080#1076#1072#1085#1080#1081
    end
    object cxButtonEdit13: TcxButtonEdit
      Left = 94
      Top = 194
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxButtonEdit13PropertiesButtonClick
      TabOrder = 17
      Width = 387
    end
    object cxLabel27: TcxLabel
      Left = 13
      Top = 222
      Caption = #1050#1086#1083#1080' '#1074#1080#1076#1072#1085#1080#1081
    end
    object cxDateEdit4: TcxDateEdit
      Left = 94
      Top = 221
      Properties.ClearKey = 46
      TabOrder = 19
      Width = 112
    end
  end
  inherited IBTransaction1: TIBTransaction
    Top = 560
  end
end
