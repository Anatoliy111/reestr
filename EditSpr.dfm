object EditSprFrm: TEditSprFrm
  Left = 0
  Top = 0
  Caption = 'EditSprFrm'
  ClientHeight = 195
  ClientWidth = 457
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 184
    Top = 46
    Caption = #1042#1074#1077#1076#1110#1090#1100' '#1076#1072#1085#1110
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 82
    Top = 69
    DataBinding.DataField = 'NAME'
    DataBinding.DataSource = Main.DSREESTR
    TabOrder = 1
    Width = 281
  end
  object Panel1: TPanel
    Left = 0
    Top = 160
    Width = 457
    Height = 35
    Align = alBottom
    TabOrder = 2
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
      OnClick = cxButton2Click
    end
  end
end
