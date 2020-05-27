inherited CheckForm: TCheckForm
  Caption = 'CheckForm'
  ClientHeight = 595
  OnCreate = FormCreate
  ExplicitHeight = 633
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 728
    Height = 89
    Align = alTop
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 296
      Top = 0
      Caption = 'cxLabel1'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 66
      Caption = #1042#1080#1073#1077#1088#1110#1090#1100' '#1075#1072#1083#1086#1095#1082#1072#1084#1080' '#1087#1086#1079#1080#1094#1110#1111' '#1076#1083#1103' '#1076#1088#1091#1082#1091
    end
  end
  object cxGrid1: TcxGrid [1]
    Left = 0
    Top = 89
    Width = 728
    Height = 465
    Align = alClient
    TabOrder = 1
    ExplicitTop = 41
    ExplicitHeight = 249
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = DSCHECK
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object cxGrid1DBTableView1CH: TcxGridDBColumn
        DataBinding.FieldName = 'CH'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        Width = 37
      end
      object cxGrid1DBTableView1FAM: TcxGridDBColumn
        Caption = #1055#1088#1110#1079#1074#1080#1097#1077
        DataBinding.FieldName = 'FAM'
        Options.Editing = False
        Width = 206
      end
      object cxGrid1DBTableView1IM: TcxGridDBColumn
        Caption = #1030#1084#39#1103
        DataBinding.FieldName = 'IM'
        Options.Editing = False
        Width = 155
      end
      object cxGrid1DBTableView1OT: TcxGridDBColumn
        Caption = #1055#1086#1073#1072#1090#1100#1082#1086#1074#1110
        DataBinding.FieldName = 'OT'
        Options.Editing = False
        Width = 223
      end
      object cxGrid1DBTableView1MN_DATA: TcxGridDBColumn
        Caption = '('#1052#1053') '#1044#1072#1090#1072
        DataBinding.FieldName = 'MN_DATA'
        Options.Editing = False
        Width = 105
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 554
    Width = 728
    Height = 41
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 290
    object cxButton1: TcxButton
      Left = 216
      Top = 6
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 371
      Top = 6
      Width = 75
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1072
      TabOrder = 1
      OnClick = cxButton2Click
    end
  end
  object cxLabel2: TcxLabel [3]
    Left = 32
    Top = 32
    Caption = 'cxLabel2'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
  end
  inherited IBTransaction1: TIBTransaction
    Active = True
    Left = 104
    Top = 232
  end
  object IBCHECK: TIBDataSet
    Database = DataM.IBDatabase1
    Transaction = Main.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from REESTR'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into REESTR'
      
        '  (ID, FAM, IM, OT, MN_DATA, MN_STRANA, MN_OBL, MN_RAION, MN_GOR' +
        'OD, PR_STRANA, '
      
        '   PR_OBL, PR_RAION, PR_GOROD, PR_TIPUL, PR_UL, PR_DOM, PR_KORP,' +
        ' PR_KV, '
      
        '   PR_RDATA, PR_ZDATA, GROMAD, EDDR, PRIBUV, VIBUV, DOCVID, DOCS' +
        'ER, DOCNOM, '
      '   DOCORG, DOCDATA)'
      'values'
      
        '  (:ID, :FAM, :IM, :OT, :MN_DATA, :MN_STRANA, :MN_OBL, :MN_RAION' +
        ', :MN_GOROD, '
      
        '   :PR_STRANA, :PR_OBL, :PR_RAION, :PR_GOROD, :PR_TIPUL, :PR_UL,' +
        ' :PR_DOM, '
      
        '   :PR_KORP, :PR_KV, :PR_RDATA, :PR_ZDATA, :GROMAD, :EDDR, :PRIB' +
        'UV, :VIBUV, '
      '   :DOCVID, :DOCSER, :DOCNOM, :DOCORG, :DOCDATA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  FAM,'
      '  IM,'
      '  OT,'
      '  MN_DATA,'
      '  MN_STRANA,'
      '  MN_OBL,'
      '  MN_RAION,'
      '  MN_GOROD,'
      '  PR_STRANA,'
      '  PR_OBL,'
      '  PR_RAION,'
      '  PR_GOROD,'
      '  PR_TIPUL,'
      '  PR_UL,'
      '  PR_DOM,'
      '  PR_KORP,'
      '  PR_KV,'
      '  PR_RDATA,'
      '  PR_ZDATA,'
      '  GROMAD,'
      '  EDDR,'
      '  PRIBUV,'
      '  VIBUV,'
      '  DOCVID,'
      '  DOCSER,'
      '  DOCNOM,'
      '  DOCORG,'
      '  DOCDATA'
      'from REESTR '
      'where'
      '  ID = :ID')
    SelectSQL.Strings = (
      
        'select REESTR.*, 0 as ch from REESTR where PR_GOROD='#39#1084'.'#1044#1086#1083#1080#1085#1089#1100#1082#1072 +
        #39)
    ModifySQL.Strings = (
      'update REESTR'
      'set'
      '  ID = :ID,'
      '  FAM = :FAM,'
      '  IM = :IM,'
      '  OT = :OT,'
      '  MN_DATA = :MN_DATA,'
      '  MN_STRANA = :MN_STRANA,'
      '  MN_OBL = :MN_OBL,'
      '  MN_RAION = :MN_RAION,'
      '  MN_GOROD = :MN_GOROD,'
      '  PR_STRANA = :PR_STRANA,'
      '  PR_OBL = :PR_OBL,'
      '  PR_RAION = :PR_RAION,'
      '  PR_GOROD = :PR_GOROD,'
      '  PR_TIPUL = :PR_TIPUL,'
      '  PR_UL = :PR_UL,'
      '  PR_DOM = :PR_DOM,'
      '  PR_KORP = :PR_KORP,'
      '  PR_KV = :PR_KV,'
      '  PR_RDATA = :PR_RDATA,'
      '  PR_ZDATA = :PR_ZDATA,'
      '  GROMAD = :GROMAD,'
      '  EDDR = :EDDR,'
      '  PRIBUV = :PRIBUV,'
      '  VIBUV = :VIBUV,'
      '  DOCVID = :DOCVID,'
      '  DOCSER = :DOCSER,'
      '  DOCNOM = :DOCNOM,'
      '  DOCORG = :DOCORG,'
      '  DOCDATA = :DOCDATA'
      'where'
      '  ID = :OLD_ID')
    ParamCheck = True
    UniDirectional = False
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_REESTR_ID'
    Left = 160
    Top = 200
    object IBCHECKID: TIntegerField
      FieldName = 'ID'
      Origin = '"REESTR"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBCHECKFAM: TIBStringField
      FieldName = 'FAM'
      Origin = '"REESTR"."FAM"'
      Size = 100
    end
    object IBCHECKIM: TIBStringField
      FieldName = 'IM'
      Origin = '"REESTR"."IM"'
      Size = 100
    end
    object IBCHECKOT: TIBStringField
      FieldName = 'OT'
      Origin = '"REESTR"."OT"'
      Size = 100
    end
    object IBCHECKMN_DATA: TDateField
      FieldName = 'MN_DATA'
      Origin = '"REESTR"."MN_DATA"'
    end
    object IBCHECKMN_STRANA: TIBStringField
      FieldName = 'MN_STRANA'
      Origin = '"REESTR"."MN_STRANA"'
      Size = 100
    end
    object IBCHECKMN_OBL: TIBStringField
      FieldName = 'MN_OBL'
      Origin = '"REESTR"."MN_OBL"'
      Size = 150
    end
    object IBCHECKMN_RAION: TIBStringField
      FieldName = 'MN_RAION'
      Origin = '"REESTR"."MN_RAION"'
      Size = 150
    end
    object IBCHECKMN_GOROD: TIBStringField
      FieldName = 'MN_GOROD'
      Origin = '"REESTR"."MN_GOROD"'
      Size = 150
    end
    object IBCHECKPR_STRANA: TIBStringField
      FieldName = 'PR_STRANA'
      Origin = '"REESTR"."PR_STRANA"'
      Size = 100
    end
    object IBCHECKPR_OBL: TIBStringField
      FieldName = 'PR_OBL'
      Origin = '"REESTR"."PR_OBL"'
      Size = 150
    end
    object IBCHECKPR_RAION: TIBStringField
      FieldName = 'PR_RAION'
      Origin = '"REESTR"."PR_RAION"'
      Size = 150
    end
    object IBCHECKPR_GOROD: TIBStringField
      FieldName = 'PR_GOROD'
      Origin = '"REESTR"."PR_GOROD"'
      Size = 150
    end
    object IBCHECKPR_TIPUL: TIBStringField
      FieldName = 'PR_TIPUL'
      Origin = '"REESTR"."PR_TIPUL"'
    end
    object IBCHECKPR_UL: TIBStringField
      FieldName = 'PR_UL'
      Origin = '"REESTR"."PR_UL"'
      Size = 100
    end
    object IBCHECKPR_DOM: TIBStringField
      FieldName = 'PR_DOM'
      Origin = '"REESTR"."PR_DOM"'
      Size = 10
    end
    object IBCHECKPR_KORP: TIBStringField
      FieldName = 'PR_KORP'
      Origin = '"REESTR"."PR_KORP"'
      Size = 10
    end
    object IBCHECKPR_KV: TIBStringField
      FieldName = 'PR_KV'
      Origin = '"REESTR"."PR_KV"'
      Size = 10
    end
    object IBCHECKPR_RDATA: TDateField
      FieldName = 'PR_RDATA'
      Origin = '"REESTR"."PR_RDATA"'
    end
    object IBCHECKPR_ZDATA: TDateField
      FieldName = 'PR_ZDATA'
      Origin = '"REESTR"."PR_ZDATA"'
    end
    object IBCHECKGROMAD: TIBStringField
      FieldName = 'GROMAD'
      Origin = '"REESTR"."GROMAD"'
      Size = 50
    end
    object IBCHECKEDDR: TIBStringField
      FieldName = 'EDDR'
      Origin = '"REESTR"."EDDR"'
      Size = 15
    end
    object IBCHECKPRIBUV: TIBStringField
      FieldName = 'PRIBUV'
      Origin = '"REESTR"."PRIBUV"'
      Size = 200
    end
    object IBCHECKVIBUV: TIBStringField
      FieldName = 'VIBUV'
      Origin = '"REESTR"."VIBUV"'
      Size = 200
    end
    object IBCHECKDOCVID: TIBStringField
      FieldName = 'DOCVID'
      Origin = '"REESTR"."DOCVID"'
    end
    object IBCHECKDOCSER: TIBStringField
      FieldName = 'DOCSER'
      Origin = '"REESTR"."DOCSER"'
      Size = 10
    end
    object IBCHECKDOCNOM: TIBStringField
      FieldName = 'DOCNOM'
      Origin = '"REESTR"."DOCNOM"'
    end
    object IBCHECKDOCORG: TIBStringField
      FieldName = 'DOCORG'
      Origin = '"REESTR"."DOCORG"'
      Size = 200
    end
    object IBCHECKDOCDATA: TDateField
      FieldName = 'DOCDATA'
      Origin = '"REESTR"."DOCDATA"'
    end
    object IBCHECKCH: TIntegerField
      FieldName = 'CH'
      ProviderFlags = []
    end
  end
  object DSCHECK: TDataSource
    DataSet = IBCHECK
    Left = 176
    Top = 272
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FAM=FAM'
      'IM=IM'
      'OT=OT'
      'MN_DATA=MN_DATA'
      'MN_STRANA=MN_STRANA'
      'MN_OBL=MN_OBL'
      'MN_RAION=MN_RAION'
      'MN_GOROD=MN_GOROD'
      'PR_STRANA=PR_STRANA'
      'PR_OBL=PR_OBL'
      'PR_RAION=PR_RAION'
      'PR_GOROD=PR_GOROD'
      'PR_TIPUL=PR_TIPUL'
      'PR_UL=PR_UL'
      'PR_DOM=PR_DOM'
      'PR_KORP=PR_KORP'
      'PR_KV=PR_KV'
      'PR_RDATA=PR_RDATA'
      'PR_ZDATA=PR_ZDATA'
      'GROMAD=GROMAD'
      'EDDR=EDDR'
      'PRIBUV=PRIBUV'
      'VIBUV=VIBUV'
      'DOCVID=DOCVID'
      'DOCSER=DOCSER'
      'DOCNOM=DOCNOM'
      'DOCORG=DOCORG'
      'DOCDATA=DOCDATA'
      'CH=CH')
    DataSet = IBCHECK
    BCDToCurrency = False
    Left = 268
    Top = 232
  end
  object frxReport1: TfrxReport
    Version = '5.3.16'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43746.410721782400000000
    ReportOptions.LastChange = 43978.367398657410000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function DateToPropis(dDate: Extended):string;'
      'var                                         '
      ' d, m, y : word;'
      ' mess:string;'
      'begin'
      ''
      '  if DateToStr(dDate)='#39'30.12.1899'#39' then'
      '     Result := '#39'____ ________ 20 __ '#1088'.'#39'  '
      '  else'
      '  begin            '
      '  '
      '       DecodeDate(dDate,y,m,d);'
      ''
      '       case m of'
      '        1: mess:='#39#1089#1110#1095#1085#1103#39';'
      '        2: mess:='#39#1083#1102#1090#1086#1075#1086#39';'
      '        3: mess:='#39#1073#1077#1088#1077#1079#1085#1103#39';'
      '        4: mess:='#39#1082#1074#1110#1090#1085#1103#39';'
      '        5: mess:='#39#1090#1088#1072#1074#1085#1103#39';'
      '        6: mess:='#39#1095#1077#1088#1074#1085#1103#39';'
      '        7: mess:='#39#1083#1080#1087#1085#1103#39';'
      '        8: mess:='#39#1089#1077#1088#1087#1085#1103#39';'
      '        9: mess:='#39#1074#1077#1088#1077#1089#1085#1103#39';'
      '        10: mess:='#39#1078#1086#1074#1090#1085#1103#39';'
      '        11: mess:='#39#1083#1080#1089#1090#1086#1087#1072#1076#1072#39';'
      '        12: mess:='#39#1075#1088#1091#1076#1085#1103#39';'
      '       end;'
      ''
      
        '        Result := IntToStr(d) + '#39' '#39' + mess + '#39' '#39' + IntToStr(y) +' +
        ' '#39' '#1088'.'#39';'
      
        '      //  Result := Format("%.2d %s %.4d", [d, MonthNames[mess],' +
        ' y]);              '
      '  end;                  '
      'end;   '
      ''
      'begin'
      ''
      'end.')
    OnRunDialogs = 'frxReport1OnRunDialogs'
    Left = 328
    Top = 256
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      BackPicturePrintable = False
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Top = 0.425170000000001400
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1054#1042#1030#1044#1050#1040' '#8470' __________')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 0.559060000000000000
          Top = 124.354360000000000000
          Width = 718.110504720000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              '[frxDBDataset1."PR_STRANA"] [frxDBDataset1."PR_OBL"] [frxDBDatas' +
              'et1."PR_RAION"] [frxDBDataset1."PR_GOROD"] [frxDBDataset1."PR_TI' +
              'PUL"] [frxDBDataset1."PR_UL"] [frxDBDataset1."PR_DOM"] [iif(trim' +
              '(<frxDBDataset1."PR_KV">)<>'#39#39','#39#1082#1074'.'#39'+<frxDBDataset1."PR_KV">,'#39#39')]')
          ParentFont = False
          VAlign = vaBottom
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo24: TfrxMemoView
          Top = 34.015770000000010000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1097#1086#1076#1086' '#1088#1077#1108#1089#1090#1088#1072#1094#1110#1111' '#1084#1110#1089#1094#1103' '#1087#1088#1086#1078#1080#1074#1072#1085#1085#1103' '#1084#1072#1090#1077#1088#1110' ('#1086#1087#1110#1082#1091#1085#1072')'
            #1090#1072' '#1076#1110#1090#1077#1081' ('#1087#1110#1076#1086#1087#1110#1095#1085#1080#1093')')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '     '#1044#1110#1081#1089#1085#1072' '#1076#1086#1074#1110#1076#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1075#1088'.')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 204.094620000000000000
          Top = 75.590600000000000000
          Width = 517.795414720000000000
          Height = 18.897650000000000000
          DataSet = FrmReestr.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."FAM"] [frxDBDataset1."IM"] [frxDBDataset1."OT"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo29: TfrxMemoView
          Top = 98.267780000000000000
          Width = 396.850454720000000000
          Height = 18.897650000000000000
          DataSet = FrmReestr.frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo5: TfrxMemoView
          Left = 396.850650000000000000
          Top = 97.267780000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1074' '#1090#1110#1084', '#1097#1086' '#1074#1110#1085' ('#1074#1086#1085#1072') '#1079#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1110' '#1079#1072' '#1072#1076#1088#1077#1089#1086#1102':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 151.181200000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '     '#1056#1072#1079#1086#1084' '#1079' '#1085#1080#1084' '#1079#1072#1088#1077#1108#1089#1090#1088#1086#1074#1072#1085#1110':')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        Filter = '<frxDBDataset2."CH">=1'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          Left = 34.015770000000010000
          Width = 476.220780000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            
              '[<frxDBDataset2."FAM">] [<frxDBDataset2."IM">] [<frxDBDataset2."' +
              'OT">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Width = 34.015770000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 510.236550000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[IIF(<frxDBDataset2."MN_DATA">=0,'#39#39',<frxDBDataset2."MN_DATA">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 121.708720000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo17: TfrxMemoView
          Left = 351.496290000000000000
          Top = 64.252009999999990000
          Width = 366.614214720000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[user]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 11.338590000000010000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1059#1089#1100#1086#1075#1086' [COUNT(MasterData1)] '#1086#1089#1110#1073' ')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo30: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1044#1086#1074#1110#1076#1082#1072' '#1074#1080#1076#1072#1085#1072' '#1076#1083#1103' '#1087#1088#1077#1076#39#1103#1074#1083#1077#1085#1085#1103' '#1076#1086' '#1086#1088#1075#1072#1085#1091' '#1087#1088#1072#1094#1110' '#1090#1072' '#1089#1086#1094#1110#1072#1083#1100#1085#1086#1075#1086' '#1079 +
              #1072#1093#1080#1089#1090#1091' '#1085#1072#1089#1077#1083#1077#1085#1085#1103'.')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Top = 64.252009999999990000
          Width = 351.496290000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1056#1077#1108#1089#1090#1088#1072#1090#1086#1088' '#1050#1055' '#171#1044#1086#1083#1080#1085#1089#1100#1082#1080#1081' '#1084#1110#1089#1100#1082#1082#1086#1084#1091#1085#1075#1086#1089#1087#187)
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 260.787570000000000000
          Top = 94.488250000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1074#1080#1076#1072#1095#1110' : [DateToPropis(Date)]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 34.015770000000010000
          Width = 476.220780000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1110#1079#1074#1080#1097#1077', '#1110#1084#8217#1103', '#1087#1086'-'#1073#1072#1090#1100#1082#1086#1074#1110' '#1095#1083#1077#1085#1110#1074' '#1089#1110#1084#8217#1111)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Width = 34.015770000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470' '#1079'/'#1087)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 510.236550000000000000
          Width = 117.165430000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1086#1076#1080#1085#1085#1110' '#1089#1090#1086#1089#1091#1085#1082#1080)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000010000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1110#1082' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103)
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 304
    Top = 328
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 392
    Top = 328
  end
  object frxDBDataset1: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FAM=FAM'
      'IM=IM'
      'OT=OT'
      'MN_DATA=MN_DATA'
      'MN_STRANA=MN_STRANA'
      'MN_OBL=MN_OBL'
      'MN_RAION=MN_RAION'
      'MN_GOROD=MN_GOROD'
      'PR_STRANA=PR_STRANA'
      'PR_OBL=PR_OBL'
      'PR_RAION=PR_RAION'
      'PR_GOROD=PR_GOROD'
      'PR_TIPUL=PR_TIPUL'
      'PR_UL=PR_UL'
      'PR_DOM=PR_DOM'
      'PR_KORP=PR_KORP'
      'PR_KV=PR_KV'
      'PR_RDATA=PR_RDATA'
      'PR_ZDATA=PR_ZDATA'
      'GROMAD=GROMAD'
      'EDDR=EDDR'
      'PRIBUV=PRIBUV'
      'VIBUV=VIBUV'
      'DOCVID=DOCVID'
      'DOCSER=DOCSER'
      'DOCNOM=DOCNOM'
      'DOCORG=DOCORG'
      'DOCDATA=DOCDATA')
    DataSet = Main.IBREESTR
    BCDToCurrency = False
    Left = 420
    Top = 232
  end
end
