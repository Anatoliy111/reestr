object Prores: TProres
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Progres'
  ClientHeight = 162
  ClientWidth = 450
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 45
    Width = 37
    Height = 13
    Caption = #1048#1084#1087#1086#1088#1090
  end
  object cxButton2: TcxButton
    Left = 309
    Top = 118
    Width = 137
    Height = 33
    Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
    Caption = 'Stop'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = cxButton2Click
  end
  object cxProgressBar1: TcxProgressBar
    Left = 8
    Top = 64
    TabOrder = 1
    Width = 434
  end
end
