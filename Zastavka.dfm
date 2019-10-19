object Start: TStart
  Left = 0
  Top = 0
  Caption = #1042#1093#1110#1076
  ClientHeight = 210
  ClientWidth = 392
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 104
    Top = 85
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label3: TLabel
    Left = 104
    Top = 29
    Width = 60
    Height = 13
    Caption = #1050#1086#1088#1080#1089#1090#1091#1074#1072#1095
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 104
    Top = 48
    Properties.KeyFieldNames = 'NAME'
    Properties.ListColumns = <
      item
        FieldName = 'NAME'
      end>
    Properties.ListSource = Main.DSUSERS
    TabOrder = 0
    Width = 193
  end
  object cxMaskEdit1: TcxMaskEdit
    Left = 104
    Top = 104
    TabOrder = 1
    Width = 193
  end
  object cxButton1: TcxButton
    Left = 104
    Top = 144
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 222
    Top = 144
    Width = 75
    Height = 25
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 3
    OnClick = cxButton2Click
  end
end
