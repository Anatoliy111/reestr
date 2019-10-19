inherited FrmSpr: TFrmSpr
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  ClientWidth = 475
  ExplicitWidth = 491
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel4: TPanel
    Width = 475
    ExplicitWidth = 475
    inherited Panel3: TPanel
      Left = 399
      ExplicitLeft = 399
      inherited cxButton3: TcxButton
        Top = 7
        ExplicitTop = 7
      end
    end
    inherited dxStatusBar1: TdxStatusBar
      Width = 467
      ExplicitWidth = 467
    end
  end
  inherited Panel2: TPanel
    Width = 475
    Height = 39
    ExplicitWidth = 475
    ExplicitHeight = 39
    inherited cxButton6: TcxButton
      Height = 37
      OnClick = cxButton6Click
      ExplicitLeft = 261
      ExplicitHeight = 37
    end
    inherited cxButton7: TcxButton
      Height = 37
      OnClick = cxButton7Click
      ExplicitLeft = 219
      ExplicitHeight = 37
    end
    inherited cxButton8: TcxButton
      Height = 37
      OnClick = cxButton8Click
      ExplicitLeft = 137
      ExplicitHeight = 37
    end
    inherited cxButton9: TcxButton
      Height = 37
      OnClick = cxButton9Click
      ExplicitLeft = 97
      ExplicitHeight = 37
    end
    inherited cxButton5: TcxButton
      Height = 37
      OnClick = cxButton5Click
      ExplicitLeft = 177
      ExplicitHeight = 37
    end
    inherited cxButton1: TcxButton
      Height = 37
      OnClick = cxButton1Click
      ExplicitHeight = 37
    end
  end
  inherited cxGrid1: TcxGrid
    Top = 73
    Width = 475
    Height = 392
    ExplicitLeft = 0
    ExplicitTop = 73
    ExplicitWidth = 475
    ExplicitHeight = 392
    inherited cxGrid1DBTableView1: TcxGridDBTableView
      FilterBox.Visible = fvNever
      OnCellDblClick = cxGrid1DBTableView1CellDblClick
      DataController.DataSource = Main.DSSPR_GOROD
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      OptionsData.Editing = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1NAME: TcxGridDBColumn
        Caption = #1053#1072#1081#1084#1077#1085#1091#1074#1072#1085#1085#1103
        DataBinding.FieldName = 'NAME'
        Width = 89
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 39
    Width = 475
    Height = 34
    Align = alTop
    TabOrder = 3
    object cxTextEdit1: TcxTextEdit
      Left = 72
      Top = 7
      Properties.OnChange = cxTextEdit1PropertiesChange
      TabOrder = 0
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 28
      Top = 8
      Caption = #1060#1110#1083#1100#1090#1088
    end
  end
end
