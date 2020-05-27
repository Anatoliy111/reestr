unit ree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxContainer, cxLabel, cxGroupBox, Vcl.ButtonGroup, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.ToolWin, dxNavBar, cxMaskEdit, cxDropDownEdit, frxDesgn,
  frxClass, frxDBSet,dxBar, cxMemo, frxExportRTF, frxExportXLS, frxExportPDF,
  cxCustomPivotGrid, cxCheckBox,
  dxmdaset,
  Spin,
  cxGridDBDataDefinitions, cxRadioGroup, dxCore, cxDateUtils, cxCalendar,
  frxChBox, frxDCtrl;

type
  TFrmReestr = class(TAllMdiForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton5: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FAM: TcxGridDBColumn;
    cxGrid1DBTableView1IM: TcxGridDBColumn;
    cxGrid1DBTableView1OT: TcxGridDBColumn;
    cxGrid1DBTableView1MN_DATA: TcxGridDBColumn;
    cxGrid1DBTableView1MN_STRANA: TcxGridDBColumn;
    cxGrid1DBTableView1MN_OBL: TcxGridDBColumn;
    cxGrid1DBTableView1MN_RAION: TcxGridDBColumn;
    cxGrid1DBTableView1MN_GOROD: TcxGridDBColumn;
    cxGrid1DBTableView1PR_STRANA: TcxGridDBColumn;
    cxGrid1DBTableView1PR_OBL: TcxGridDBColumn;
    cxGrid1DBTableView1PR_RAION: TcxGridDBColumn;
    cxGrid1DBTableView1PR_GOROD: TcxGridDBColumn;
    cxGrid1DBTableView1PR_TIPUL: TcxGridDBColumn;
    cxGrid1DBTableView1PR_UL: TcxGridDBColumn;
    cxGrid1DBTableView1PR_DOM: TcxGridDBColumn;
    cxGrid1DBTableView1PR_KV: TcxGridDBColumn;
    cxGrid1DBTableView1PR_RDATA: TcxGridDBColumn;
    cxGrid1DBTableView1PR_ZDATA: TcxGridDBColumn;
    cxGrid1DBTableView1GROMAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRIBUV: TcxGridDBColumn;
    cxGrid1DBTableView1VIBUV: TcxGridDBColumn;
    cxGrid1DBTableView1DOCVID: TcxGridDBColumn;
    cxGrid1DBTableView1DOCSER: TcxGridDBColumn;
    cxGrid1DBTableView1DOCNOM: TcxGridDBColumn;
    cxGrid1DBTableView1DOCORG: TcxGridDBColumn;
    cxGrid1DBTableView1DOCDATA: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    PopupMenu1: TPopupMenu;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    frxReport1: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDBDataset1: TfrxDBDataset;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxGrid1DBTableView1EDDR: TcxGridDBColumn;
    cxMemo1: TcxMemo;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxDBDataset2: TfrxDBDataset;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    N1: TMenuItem;
    cxLabel8: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxComboBox1: TcxComboBox;
    cxButton2: TcxButton;
    N2: TMenuItem;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDialogControls1: TfrxDialogControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxTextEdit3PropertiesChange(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure N41Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N31Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure cxRadioButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cxTextEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxTextEdit5PropertiesChange(Sender: TObject);
    procedure cxDateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDateEdit1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
    procedure AddFilter(column:TcxGridDBColumn;text:string);
    procedure DelFilter(col:TcxGridDBColumn;s:string);
  public
    { Public declarations }
    BarBut:TdxBarButton;
  end;

var
  FrmReestr: TFrmReestr;
  Filt1,Filt2,Filt3,Filt4:integer;
//  column:TcxGridDBColumn;



implementation

{$R *.dfm}

uses MainForm,StrUtils, EditRee, Check;

procedure TFrmReestr.cxButton2Click(Sender: TObject);
var I:integer;
begin
  inherited;
  cxTextEdit1.Clear;
  cxTextEdit2.Clear;
  cxTextEdit3.Clear;
  cxTextEdit4.Clear;
  cxTextEdit5.Clear;
  cxDateEdit1.Clear;

with cxGrid1DBTableView1.DataController do
  begin
    try
      Filter.BeginUpdate;
//      cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1FAM, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      for I := Filter.Root.Count - 1 downto 0 do
        if (not Filter.Root.Items[I].IsItemList) then
           Filter.Root.Items[I].free
    finally
      Filter.EndUpdate;
    end;
  end;

  cxGrid1DBTableView1.DataController.Filter.Active := false;

end;

procedure TFrmReestr.cxButton5Click(Sender: TObject);
begin
  inherited;
  try
     main.IBREESTR.Edit;
  main.IBREESTR.Post;

   if EditR=nil then
 begin
 Application.CreateForm(TEditReeFrm,EditR);

 EditR.Caption:='Редагування реєстру';
 EditR.mode:=2;






 EditR.cxTextEdit1.Text:=Main.IBREESTRFAM.Value;
 EditR.cxTextEdit2.Text:=Main.IBREESTRIM.Value;
 EditR.cxTextEdit3.Text:=Main.IBREESTROT.Value;
 EditR.cxTextEdit4.Text:=Main.IBREESTRPR_DOM.Value;
 EditR.cxTextEdit5.Text:=Main.IBREESTRPR_KV.Value;
 EditR.cxTextEdit6.Text:=Main.IBREESTREDDR.Value;
 EditR.cxTextEdit7.Text:=Main.IBREESTRDOCSER.Value;
 EditR.cxTextEdit8.Text:=Main.IBREESTRDOCNOM.Value;
 EditR.cxButtonEdit2.Text:=Main.IBREESTRPR_STRANA.Value;
 EditR.cxButtonEdit3.Text:=Main.IBREESTRPR_OBL.Value;
 EditR.cxButtonEdit4.Text:=Main.IBREESTRPR_RAION.Value;
 EditR.cxButtonEdit12.Text:=Main.IBREESTRPR_GOROD.Value;
 EditR.cxButtonEdit5.Text:=Main.IBREESTRPR_TIPUL.Value;
 EditR.cxButtonEdit6.Text:=Main.IBREESTRPR_UL.Value;
 EditR.cxButtonEdit1.Text:=Main.IBREESTRMN_STRANA.Value;
 EditR.cxButtonEdit8.Text:=Main.IBREESTRMN_OBL.Value;
 EditR.cxButtonEdit9.Text:=Main.IBREESTRMN_RAION.Value;
 EditR.cxButtonEdit10.Text:=Main.IBREESTRMN_GOROD.Value;
 EditR.cxButtonEdit11.Text:=Main.IBREESTRGROMAD.Value;
 EditR.cxButtonEdit7.Text:=Main.IBREESTRDOCVID.Value;
 EditR.cxButtonEdit13.Text:=Main.IBREESTRDOCORG.Value;
 if not Main.IBREESTRMN_DATA.IsNull then EditR.cxDateEdit1.Date:=Main.IBREESTRMN_DATA.Value;
 if not Main.IBREESTRPR_RDATA.IsNull then EditR.cxDateEdit2.Date:=Main.IBREESTRPR_RDATA.Value;
 if not Main.IBREESTRPR_ZDATA.IsNull then EditR.cxDateEdit3.Date:=Main.IBREESTRPR_ZDATA.Value;
 if not Main.IBREESTRDOCDATA.IsNull then EditR.cxDateEdit4.Date:=Main.IBREESTRDOCDATA.Value;

 if trim(EditR.cxTextEdit1.Text)='' then begin  EditR.cxTextEdit1.Style.Color:=clYellow; end;
 if trim(EditR.cxTextEdit2.Text)='' then begin EditR.cxTextEdit2.Style.Color:=clYellow; end;
 //if trim(EditR.cxTextEdit3.Text)='' then begin err:=true; EditR.cxTextEdit3.Style.Color:=clYellow; end;
 if trim(EditR.cxTextEdit4.Text)='' then begin  EditR.cxTextEdit4.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit2.Text)='' then begin EditR.cxButtonEdit2.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit3.Text)='' then begin  EditR.cxButtonEdit3.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit12.Text)='' then begin  EditR.cxButtonEdit12.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit5.Text)='' then begin  EditR.cxButtonEdit5.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit6.Text)='' then begin  EditR.cxButtonEdit6.Style.Color:=clYellow; end;




 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(EditR);
 end
 else
 begin
 EditR.Show;
 EditR.SetFocus;
 end;


  finally

  end;



end;

procedure TFrmReestr.cxButton6Click(Sender: TObject);
begin
  inherited;
Main.ExportGrid(cxGrid1,self.Caption);
end;

procedure TFrmReestr.cxButton7Click(Sender: TObject);
var rec:integer;
    Bookmark: TBookmark;
begin
  inherited;
//rec:=Main.IBREESTRID.Value;
//Main.IBREESTR.Close;
//Main.IBREESTR.Open;
//Main.IBREESTR.Locate('ID',rec,[]);
//cxGrid1DBTableView1.DataController.GotoFirst;
  rec:=cxGrid1DBTableView1.Controller.FocusedRowIndex;
//  Bookmark := Main.IBREESTR.GetBookmark;
//  Main.IBREESTR.Refresh;
  Main.IBREESTR.Close;
  Main.IBREESTR.Open;
//  Main.IBREESTR.GotoBookmark(Bookmark);
   cxGrid1DBTableView1.Controller.FocusedRowIndex:=rec;



end;

procedure TFrmReestr.cxButton8Click(Sender: TObject);
var rec:integer;
Bookmark: TBookmark;
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES:
    begin

    cxGrid1.FocusedView.DataController.DeleteFocused;
//    cxGrid1.FocusedView.DataController.
//      rec:=cxGrid1DBTableView1.Controller.FocusedRowIndex;
//    Bookmark := cxGrid1DBTableView1.DataController.Bookmark;
//      cxGrid1DBTableView1.DataController.DataSource.DataSet.
      //cxGrid1DBTableView1.DataController.DataSource.DataSet.Delete;
     // cxGrid1DBTableView1.DataController.DeleteRecord(cxGrid1DBTableView1.Controller.FocusedRowIndex);
//    main.IBREESTR.Delete;
//      cxGrid1DBTableView1.Controller.FocusedRowIndex:=rec;
//    cxGrid1DBTableView1.DataController.GotoBookmark;
//    cxGrid1DBTableView1.DataController.DataSource.DataSet.ff
    //main.IBREESTR.FetchAll;
    Main.IBTransaction1.CommitRetaining;

    end;
  end;
end;

procedure TFrmReestr.cxButton9Click(Sender: TObject);
var I:integer;
begin
  inherited;
 if EditR=nil then
 begin
 Application.CreateForm(TEditReeFrm,EditR);
 EditR.Caption:='Додати до реєстру';

  EditR.mode:=1;


 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(EditR);


 end
 else
 begin
 EditR.Show;
 EditR.SetFocus;
 end;
//main.IBREESTR.Append;
end;

procedure TFrmReestr.cxDateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
DelFilter(cxGrid1DBTableView1MN_DATA,DateToStr(cxDateEdit1.Date));
end;

procedure TFrmReestr.cxDateEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
   DelFilter(cxGrid1DBTableView1MN_DATA,'');
if (cxDateEdit1.EditValue<>null) then
   AddFilter(cxGrid1DBTableView1MN_DATA,DateToStr(cxDateEdit1.Date));
end;

procedure TFrmReestr.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;

     if not (AViewInfo.GridRecord.Values[cxGrid1DBTableView1PR_ZDATA.Index] = null) then
    ACanvas.Brush.Color := clScrollBar;
end;

procedure TFrmReestr.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//cxLabel4.Caption:=Main.IBREESTRFAM.Value+' '+Main.IBREESTRIM.Value+' '+Main.IBREESTROT.Value+
//', '+DateToStr(Main.IBREESTRMN_DATA.Value)+' '+Main.IBREESTRMN_STRANA.Value+' '+Main.IBREESTRMN_OBL.Value+
//' '+Main.IBREESTRMN_RAION.Value+' '+Main.IBREESTRMN_GOROD.Value+', '+Main.IBREESTRGROMAD.Value;
//cxLabel7.Caption:='Проживає: '+Main.IBREESTRPR_STRANA.Value+' '+Main.IBREESTRPR_OBL.Value+
//' '+Main.IBREESTRPR_RAION.Value+' '+Main.IBREESTRPR_GOROD.Value+' '+Main.IBREESTRPR_TIPUL.Value+
//' '+Main.IBREESTRPR_UL.Value+' '+Main.IBREESTRPR_DOM.Value+', '+IfThen(Main.IBREESTRPR_KV.IsNull,'','кв.'+Main.IBREESTRPR_KV.Value)+
//' '+Main.IBREESTRDOCVID.Value+' '+Main.IBREESTRDOCSER.Value+' '+Main.IBREESTRDOCNOM.Value+
//' '+Main.IBREESTRDOCORG.Value+' '+IfThen(Main.IBREESTRDOCDATA.IsNull,'',DateToStr(Main.IBREESTRDOCDATA.Value));
//cxLabel6.Caption:=IfThen(Main.IBREESTREDDR.IsNull,'','ЄДДР: '+Main.IBREESTREDDR.Value)+
//IfThen(Main.IBREESTRPR_RDATA.IsNull,'',' Дата реестрації: '+DateToStr(Main.IBREESTRPR_RDATA.Value))+
//IfThen(Main.IBREESTRPR_ZDATA.IsNull,'',' Дата зняття з реестрації: '+DateToStr(Main.IBREESTRPR_ZDATA.Value))+
//IfThen(Main.IBREESTRPRIBUV.IsNull,'',' Прибув: '+Main.IBREESTRPRIBUV.Value)+
//IfThen(Main.IBREESTRVIBUV.IsNull,'',' Вибув: '+Main.IBREESTRVIBUV.Value);

cxmemo1.Text:=Main.IBREESTRFAM.Value+' '+Main.IBREESTRIM.Value+' '+Main.IBREESTROT.Value+
', '+DateToStr(Main.IBREESTRMN_DATA.Value)+' '+Main.IBREESTRMN_STRANA.Value+' '+Main.IBREESTRMN_OBL.Value+
' '+Main.IBREESTRMN_RAION.Value+' '+Main.IBREESTRMN_GOROD.Value+', '+Main.IBREESTRGROMAD.Value+
' Проживає: '+Main.IBREESTRPR_STRANA.Value+' '+Main.IBREESTRPR_OBL.Value+
' '+Main.IBREESTRPR_RAION.Value+' '+Main.IBREESTRPR_GOROD.Value+' '+Main.IBREESTRPR_TIPUL.Value+
' '+Main.IBREESTRPR_UL.Value+' '+Main.IBREESTRPR_DOM.Value+', '+IfThen(Main.IBREESTRPR_KV.IsNull,'','кв.'+Main.IBREESTRPR_KV.Value)+
' '+Main.IBREESTRDOCVID.Value+' '+Main.IBREESTRDOCSER.Value+' '+Main.IBREESTRDOCNOM.Value+
' '+Main.IBREESTRDOCORG.Value+' '+IfThen(Main.IBREESTRDOCDATA.IsNull,'',DateToStr(Main.IBREESTRDOCDATA.Value))+
' '+IfThen(Main.IBREESTREDDR.IsNull,'','ЄДДР: '+Main.IBREESTREDDR.Value)+
IfThen(Main.IBREESTRPR_RDATA.IsNull,'',' Дата реестрації: '+DateToStr(Main.IBREESTRPR_RDATA.Value))+
IfThen(Main.IBREESTRPR_ZDATA.IsNull,'',' Дата зняття з реестрації: '+DateToStr(Main.IBREESTRPR_ZDATA.Value))+
IfThen(Main.IBREESTRPRIBUV.IsNull,'',' Прибув: '+Main.IBREESTRPRIBUV.Value)+
IfThen(Main.IBREESTRVIBUV.IsNull,'',' Вибув: '+Main.IBREESTRVIBUV.Value);

end;

procedure TFrmReestr.cxRadioButton1Click(Sender: TObject);
var rec:integer;
begin
  inherited;
  rec:= main.IBREESTRID.Value;

    main.IBREESTR.SelectSQL.Text:='select * from REESTR order by pr_gorod,pr_tipul,pr_ul,pr_dom,pr_kv';
    main.IBREESTR.Close;
    main.IBREESTR.Open;


  main.IBREESTR.Locate('ID',rec,[]);

end;

procedure TFrmReestr.cxRadioButton2Click(Sender: TObject);
var rec:integer;
begin
  inherited;
  rec:= main.IBREESTRID.Value;

    main.IBREESTR.SelectSQL.Text:='select * from REESTR where pr_zdata is null order by pr_gorod,pr_tipul,pr_ul,pr_dom,pr_kv';
    main.IBREESTR.Close;
    main.IBREESTR.Open;


  main.IBREESTR.Locate('ID',rec,[]);

end;

procedure TFrmReestr.cxRadioButton3Click(Sender: TObject);
var rec:integer;
begin
  inherited;
  rec:= main.IBREESTRID.Value;
    main.IBREESTR.SelectSQL.Text:='select * from REESTR where pr_zdata is not null order by pr_gorod,pr_tipul,pr_ul,pr_dom,pr_kv';
    main.IBREESTR.Close;
    main.IBREESTR.Open;


  main.IBREESTR.Locate('ID',rec,[]);

end;

procedure TFrmReestr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (FrmReestr <> nil) and (FrmReestr.Active) then FrmReestr:=nil;
if  (FrmRee <> nil) and (FrmRee.Active) then FrmRee:=nil;
end;

procedure TFrmReestr.FormCreate(Sender: TObject);
begin
  inherited;

main.IBREESTR.Close;
main.IBREESTR.Open;
cxGrid1DBTableView1.DataController.GotoFirst;

end;

procedure TFrmReestr.N11Click(Sender: TObject);
begin
  inherited;
//if RadioButton5.Checked then
//begin
//   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,ul,dom,posl';
   frxReport1.LoadFromFile('report/DovidkaMP.fr3');
//end;
//
//
//
//IBREPMES.ParamByName('dt1').Value:=Ordposlmesdt1;
//IBREPMES.ParamByName('dt2').Value:=Ordposlmesdt2;
//IBREPMES.ParamByName('bg').Value:=Ordposlmesbg;
//IBREPMES.Open;
//
//
////  frxXLSExport1.FileName:='Звіт за період '+Datename1+' '+Datename2;
//
//frxReport1.Variables['datemes1']:=cxBarEditItem4mon_slovoDt(Ordposlmesdt1)+'''';
//frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposlmesdt2)+'''';
//frxReport1.Variables['dtmes1']:=Ordposlmesdt1;
//frxReport1.Variables['dtmes2']:=Ordposlmesdt2;
//frxReport1.Variables['org']:=''''+Form1.ORG+'''';
frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.ShowReport;
end;

procedure TFrmReestr.N1Click(Sender: TObject);
var row:integer;
begin
  inherited;
main.IBSIMJA.Close;

//main.IBSIMJA.SelectSQL.Text:='select * from REESTR';
//main.IBSIMJA.SelectSQL.Text:='select * from REESTR where PR_GOROD=:gorod';
main.IBSIMJA.SelectSQL.Text:='select * from REESTR where PR_DOM='''+main.IBREESTRPR_DOM.Value+'''';
if length(main.IBREESTRPR_TIPUL.Value)<>0 then main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_TIPUL='''+main.IBREESTRPR_TIPUL.Value+'''';
if length(main.IBREESTRPR_UL.Value)<>0 then main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_UL='''+main.IBREESTRPR_UL.Value+'''';
if length(main.IBREESTRPR_GOROD.Value)<>0 then main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_GOROD='''+main.IBREESTRPR_GOROD.Value+'''';
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_ZDATA is null';
if (Length(main.IBREESTRPR_KV.Value)<>0) then main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_KV='''+main.IBREESTRPR_KV.Value+'''';

//main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and ID<>'+IntToStr(main.IBREESTRID.Value);
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' order by MN_DATA';

//main.IBSIMJA.ParamByName('id').Value:=main.IBREESTRID.Value;
//main.IBSIMJA.ParamByName('gorod').Value:=main.IBREESTRPR_GOROD.Value;
//main.IBSIMJA.ParamByName('tipul').Value:=main.IBREESTRPR_TIPUL.Value;
//main.IBSIMJA.ParamByName('ul').Value:=main.IBREESTRPR_UL.Value;
//main.IBSIMJA.ParamByName('dom').Value:=main.IBREESTRPR_DOM.Value;

main.IBSIMJA.Open;
main.IBSIMJA.Last;
main.IBSIMJA.RecordCount;

frxReport1.LoadFromFile('report/DovidkaSimja.fr3');

//if main.IBSIMJA.IsEmpty then
//      with TfrxMasterData(frxReport1.FindObject('MasterData1')) do
//      begin
//        DataSet := nil;
//        RowCount := 5;
//      end
//else
  if main.IBSIMJA.RecordCount<5 then
  begin
    row:=5-main.IBSIMJA.RecordCount;
    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
      begin
        DataSet := nil;
        RowCount := row;
      end;
  end
  else
  begin
    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
      begin
        DataSet := nil;
        RowCount := 1;
        visible:= false;
      end;
  end;






frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.Variables['count']:=''''+inttostr(main.IBSIMJA.RecordCount)+'''';
frxReport1.ShowReport;


end;

procedure TFrmReestr.N21Click(Sender: TObject);

begin
  inherited;
   frxReport1.LoadFromFile('report/PovidomZMP.fr3');
frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.ShowReport;
end;

procedure TFrmReestr.N2Click(Sender: TObject);
begin
  inherited;
 if CheckForm=nil then
 begin
 Application.CreateForm(TCheckForm,CheckForm);
 CheckForm.Caption:=N2.Caption;
 CheckForm.cxLabel1.Caption:=N2.Caption;
 CheckForm.cxLabel2.Caption:=Main.IBREESTRFAM.Value+' '+Main.IBREESTRIM.Value+' '+Main.IBREESTROT.Value+' '+DateToStr(Main.IBREESTRMN_DATA.Value)+' р.';
 Main.AddToolBar(CheckForm);
 end
 else
 begin
 CheckForm.Show;
 CheckForm.SetFocus;
 end;

end;

procedure TFrmReestr.N31Click(Sender: TObject);
var row:integer;
begin
  inherited;
main.IBSIMJA.Close;

//main.IBSIMJA.SelectSQL.Text:='select * from REESTR';
//main.IBSIMJA.SelectSQL.Text:='select * from REESTR where PR_GOROD=:gorod';
main.IBSIMJA.SelectSQL.Text:='select * from REESTR where PR_GOROD='''+main.IBREESTRPR_GOROD.Value+'''';
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_TIPUL='''+main.IBREESTRPR_TIPUL.Value+'''';
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_UL='''+main.IBREESTRPR_UL.Value+'''';
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_DOM='''+main.IBREESTRPR_DOM.Value+'''';
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_ZDATA is null';
if (Length(main.IBREESTRPR_KV.Value)<>0) then
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and PR_KV='''+main.IBREESTRPR_KV.Value+'''';

main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' and ID<>'+IntToStr(main.IBREESTRID.Value);
main.IBSIMJA.SelectSQL.Text:=main.IBSIMJA.SelectSQL.Text+' order by MN_DATA';

//main.IBSIMJA.ParamByName('id').Value:=main.IBREESTRID.Value;
//main.IBSIMJA.ParamByName('gorod').Value:=main.IBREESTRPR_GOROD.Value;
//main.IBSIMJA.ParamByName('tipul').Value:=main.IBREESTRPR_TIPUL.Value;
//main.IBSIMJA.ParamByName('ul').Value:=main.IBREESTRPR_UL.Value;
//main.IBSIMJA.ParamByName('dom').Value:=main.IBREESTRPR_DOM.Value;

main.IBSIMJA.Open;
main.IBSIMJA.Last;
main.IBSIMJA.RecordCount;

frxReport1.LoadFromFile('report/DovidkaVilna.fr3');

//if main.IBSIMJA.IsEmpty then
//      with TfrxMasterData(frxReport1.FindObject('MasterData1')) do
//      begin
//        DataSet := nil;
//        RowCount := 8;
//      end
//else
  if main.IBSIMJA.RecordCount<8 then
  begin
    row:=8-main.IBSIMJA.RecordCount;
    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
      begin
        DataSet := nil;
        RowCount := row;
      end;
  end
  else
  begin
    with TfrxMasterData(frxReport1.FindObject('MasterData2')) do
      begin
        DataSet := nil;
        RowCount := 1;
        visible:= false;
      end;
  end;






frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.ShowReport;


end;

procedure TFrmReestr.N41Click(Sender: TObject);
begin
  inherited;
   frxReport1.LoadFromFile('report/DovidkaZMP.fr3');
frxReport1.Variables['user']:=''''+Main.cxBarEditItem4.Caption+'''';
frxReport1.ShowReport;
end;

procedure TFrmReestr.cxTextEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  DelFilter(cxGrid1DBTableView1FAM,cxTextEdit1.Text);
end;

procedure TFrmReestr.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
AddFilter(cxGrid1DBTableView1FAM,cxTextEdit1.Text);
end;

procedure TFrmReestr.cxTextEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 DelFilter(cxGrid1DBTableView1PR_GOROD,cxTextEdit2.Text);
end;

procedure TFrmReestr.cxTextEdit2PropertiesChange(Sender: TObject);
begin
  inherited;
AddFilter(cxGrid1DBTableView1PR_GOROD,cxTextEdit2.Text);;
end;

procedure TFrmReestr.cxTextEdit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 DelFilter(cxGrid1DBTableView1PR_UL,cxTextEdit3.Text);
end;

procedure TFrmReestr.cxTextEdit3PropertiesChange(Sender: TObject);
begin
  inherited;
AddFilter(cxGrid1DBTableView1PR_UL,cxTextEdit3.Text);;
end;

procedure TFrmReestr.cxTextEdit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
DelFilter(cxGrid1DBTableView1PR_DOM,cxTextEdit4.Text);
end;

procedure TFrmReestr.cxTextEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
AddFilter(cxGrid1DBTableView1PR_DOM,cxTextEdit4.Text);
end;

procedure TFrmReestr.cxTextEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
DelFilter(cxGrid1DBTableView1PR_KV,cxTextEdit5.Text);
end;

procedure TFrmReestr.cxTextEdit5PropertiesChange(Sender: TObject);
begin
  inherited;
AddFilter(cxGrid1DBTableView1PR_KV,cxTextEdit5.Text);
end;

procedure TFrmReestr.DelFilter(col:TcxGridDBColumn;s:string);
var I:integer;
begin

with cxGrid1DBTableView1.DataController do
  begin
    try
      Filter.BeginUpdate;
//      cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1FAM, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      for I := Filter.Root.Count - 1 downto 0 do
        if (not Filter.Root.Items[I].IsItemList) then
        begin
          if (col=cxGrid1DBTableView1PR_DOM) or (col=cxGrid1DBTableView1PR_KV)then
          begin
          if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = s) and
             ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
              Filter.Root.Items[I].free;
          end
          else
            if (col=cxGrid1DBTableView1MN_DATA)then
            begin
            if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
                Filter.Root.Items[I].free;
            end
            else
               if ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).Value = '%'+s+'%') and
                  ((Filter.Root.Items[I] as TcxGridDBDataFilterCriteriaItem).ItemLink = col) then
                  Filter.Root.Items[I].free

        end;
    finally
      Filter.EndUpdate;
    end;
  end;
  cxGrid1DBTableView1.DataController.Filter.Active := true;



end;

procedure TFrmReestr.AddFilter(column:TcxGridDBColumn;text:string);
var    I:integer;
begin

  cxGrid1DBTableView1.DataController.Filter.Active := true;

  if (Text<>'') then
  begin
        cxGrid1DBTableView1.DataController.Filter.BeginUpdate;
      try
          if (column=cxGrid1DBTableView1PR_DOM) or (column=cxGrid1DBTableView1PR_KV)then
             cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text)
          else
          if (column=cxGrid1DBTableView1MN_DATA) then
          begin
             if cxComboBox1.Text='=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foEqual, Text, Text);
             if cxComboBox1.Text='<>' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foNotEqual, Text, Text);
             if cxComboBox1.Text='>=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foGreaterEqual, Text, Text);
             if cxComboBox1.Text='<=' then cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foLessEqual, Text, Text);
          end
             else
                cxGrid1DBTableView1.DataController.Filter.Root.AddItem(column, foLike, '%'+Text+'%', Text);
      finally
      cxGrid1DBTableView1.DataController.Filter.EndUpdate;
      end;
//      cxGrid1DBTableView1.DataController.Filter.Active := true;
//

  end;

end;

end.
