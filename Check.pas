unit Check;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  cxCheckBox, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls, cxContainer,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, IBX.IBCustomDataSet, frxClass,
  frxExportXLS, frxExportRTF, frxDBSet;

type
  TCheckForm = class(TAllMdiForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxGrid1DBTableView1FAM: TcxGridDBColumn;
    cxGrid1DBTableView1IM: TcxGridDBColumn;
    cxGrid1DBTableView1OT: TcxGridDBColumn;
    cxGrid1DBTableView1MN_DATA: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    IBCHECK: TIBDataSet;
    IBCHECKID: TIntegerField;
    IBCHECKFAM: TIBStringField;
    IBCHECKIM: TIBStringField;
    IBCHECKOT: TIBStringField;
    IBCHECKMN_DATA: TDateField;
    IBCHECKMN_STRANA: TIBStringField;
    IBCHECKMN_OBL: TIBStringField;
    IBCHECKMN_RAION: TIBStringField;
    IBCHECKMN_GOROD: TIBStringField;
    IBCHECKPR_STRANA: TIBStringField;
    IBCHECKPR_OBL: TIBStringField;
    IBCHECKPR_RAION: TIBStringField;
    IBCHECKPR_GOROD: TIBStringField;
    IBCHECKPR_TIPUL: TIBStringField;
    IBCHECKPR_UL: TIBStringField;
    IBCHECKPR_DOM: TIBStringField;
    IBCHECKPR_KORP: TIBStringField;
    IBCHECKPR_KV: TIBStringField;
    IBCHECKPR_RDATA: TDateField;
    IBCHECKPR_ZDATA: TDateField;
    IBCHECKGROMAD: TIBStringField;
    IBCHECKEDDR: TIBStringField;
    IBCHECKPRIBUV: TIBStringField;
    IBCHECKVIBUV: TIBStringField;
    IBCHECKDOCVID: TIBStringField;
    IBCHECKDOCSER: TIBStringField;
    IBCHECKDOCNOM: TIBStringField;
    IBCHECKDOCORG: TIBStringField;
    IBCHECKDOCDATA: TDateField;
    DSCHECK: TDataSource;
    cxLabel2: TcxLabel;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxRTFExport1: TfrxRTFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDBDataset1: TfrxDBDataset;
    cxGrid1DBTableView1CH: TcxGridDBColumn;
    IBCHECKCH: TIntegerField;
    cxLabel3: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckForm: TCheckForm;

implementation

{$R *.dfm}

uses MainForm, ree;

procedure TCheckForm.cxButton1Click(Sender: TObject);
var row:integer;
    ch:Boolean;
begin
  inherited;
 ch:=false;
 IBCHECK.First;
 while not IBCHECK.Eof do
 begin
   if IBCHECKCH.Value=1 then
      ch:=true;
   IBCHECK.Next;
 end;

 if not ch then
 begin
   ShowMessage('Виберіть позиції для друку!');
   exit;
 end;



IBCHECK.Last;
IBCHECK.RecordCount;

frxReport1.LoadFromFile('report/DovidkaMama.fr3');

//if IBCHECK.IsEmpty then
//      with TfrxMasterData(main.frxReport1.FindObject('MasterData1')) do
//      begin
//        DataSet := nil;
//        RowCount := 5;
//      end
//else
//  if IBCHECK.RecordCount<5 then
//  begin
//    row:=5-IBCHECK.RecordCount;
//    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
//      begin
//        DataSet := nil;
//        RowCount := row;
//      end;
//  end
//  else
//  begin
//    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
//      begin
//        DataSet := nil;
//        RowCount := 1;
//        visible:= false;
//      end;
//  end;






frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.Variables['count']:=''''+inttostr(IBCHECK.RecordCount)+'''';
frxReport1.ShowReport;

end;

procedure TCheckForm.cxButton2Click(Sender: TObject);
begin
  inherited;
Close;
end;

procedure TCheckForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (CheckForm <> nil) and (CheckForm.Active) then CheckForm:=nil;
end;

procedure TCheckForm.FormCreate(Sender: TObject);
begin
  inherited;

IBCHECK.Close;

//main.IBSIMJA.SelectSQL.Text:='select * from REESTR';
//IBCHECK.SelectSQL.Text:='select * from REESTR where PR_GOROD=:gorod';
IBCHECK.SelectSQL.Text:='select REESTR.*, 0 as ch from REESTR where PR_DOM='''+main.IBREESTRPR_DOM.Value+'''';
if length(main.IBREESTRPR_TIPUL.Value)<>0 then IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and PR_TIPUL='''+main.IBREESTRPR_TIPUL.Value+'''';
if length(main.IBREESTRPR_UL.Value)<>0 then IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and PR_UL='''+main.IBREESTRPR_UL.Value+'''';
if length(main.IBREESTRPR_GOROD.Value)<>0 then IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and PR_GOROD='''+main.IBREESTRPR_GOROD.Value+'''';
IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and PR_ZDATA is null';
if (Length(main.IBREESTRPR_KV.Value)<>0) then IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and PR_KV='''+main.IBREESTRPR_KV.Value+'''';

//IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' and ID<>'+IntToStr(main.IBREESTRID.Value);
IBCHECK.SelectSQL.Text:=IBCHECK.SelectSQL.Text+' order by MN_DATA';

//IBCHECK.ParamByName('id').Value:=main.IBREESTRID.Value;
//IBCHECK.ParamByName('gorod').Value:=main.IBREESTRPR_GOROD.Value;
//IBCHECK.ParamByName('tipul').Value:=main.IBREESTRPR_TIPUL.Value;
//IBCHECK.ParamByName('ul').Value:=main.IBREESTRPR_UL.Value;
//IBCHECK.ParamByName('dom').Value:=main.IBREESTRPR_DOM.Value;

IBCHECK.Open;

end;

end.
