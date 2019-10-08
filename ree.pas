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
  frxClass, frxDBSet,EditRee;

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
    cxGrid1DBTableView1EDDR: TcxGridDBColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxTextEdit3PropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1FilterCustomization(
      Sender: TcxCustomGridTableView; var ADone: Boolean);
    procedure cxGrid1DBTableView1FilterDialogShow(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      var ADone: Boolean);
    procedure N11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
    procedure Filter;
  public
    { Public declarations }
  end;

var
  FrmReestr: TFrmReestr;
  EditRee: TEditReeFrm;

implementation

{$R *.dfm}

uses MainForm,StrUtils;

procedure TFrmReestr.cxButton9Click(Sender: TObject);
begin
  inherited;
 if EditREE=nil then
 begin
 Application.CreateForm(TEditReeFrm,EditREE);
 EditREE.Caption:='Додати до реєстру';
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(EditREE);
 end
 else
 begin
 EditREE.Show;
 EditREE.SetFocus;
 end;
end;

procedure TFrmReestr.cxGrid1DBTableView1FilterCustomization(
  Sender: TcxCustomGridTableView; var ADone: Boolean);
begin
  inherited;
 cxLabel4.Caption;
end;

procedure TFrmReestr.cxGrid1DBTableView1FilterDialogShow(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var ADone: Boolean);
begin
  inherited;
 cxLabel4.Caption;
end;

procedure TFrmReestr.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
cxLabel4.Caption:=Main.IBREESTRFAM.Value+' '+Main.IBREESTRIM.Value+' '+Main.IBREESTROT.Value+
', '+DateToStr(Main.IBREESTRMN_DATA.Value)+' '+Main.IBREESTRMN_STRANA.Value+' '+Main.IBREESTRMN_OBL.Value+
' '+Main.IBREESTRMN_RAION.Value+' '+Main.IBREESTRMN_GOROD.Value+', '+Main.IBREESTRGROMAD.Value;
cxLabel7.Caption:='Проживає: '+Main.IBREESTRPR_STRANA.Value+' '+Main.IBREESTRPR_OBL.Value+
' '+Main.IBREESTRPR_RAION.Value+' '+Main.IBREESTRPR_GOROD.Value+' '+Main.IBREESTRPR_TIPUL.Value+
' '+Main.IBREESTRPR_UL.Value+' '+Main.IBREESTRPR_DOM.Value+', '+IfThen(Main.IBREESTRPR_KV.IsNull,'','кв.'+Main.IBREESTRPR_KV.Value)+
' '+Main.IBREESTRDOCVID.Value+' '+Main.IBREESTRDOCSER.Value+' '+Main.IBREESTRDOCNOM.Value+
' '+Main.IBREESTRDOCORG.Value+' '+IfThen(Main.IBREESTRDOCDATA.IsNull,'',DateToStr(Main.IBREESTRDOCDATA.Value));
cxLabel6.Caption:=IfThen(Main.IBREESTREDDR.IsNull,'','ЄДДР: '+IntToStr(Main.IBREESTREDDR.Value))+
IfThen(Main.IBREESTRPR_RDATA.IsNull,'',' Дата реестрації: '+DateToStr(Main.IBREESTRPR_RDATA.Value))+
IfThen(Main.IBREESTRPR_ZDATA.IsNull,'',' Дата зняття з реестрації: '+DateToStr(Main.IBREESTRPR_ZDATA.Value))+
IfThen(Main.IBREESTRPRIBUV.IsNull,'',' Прибув: '+Main.IBREESTRPRIBUV.Value)+
IfThen(Main.IBREESTRVIBUV.IsNull,'',' Вибув: '+Main.IBREESTRVIBUV.Value);

end;

procedure TFrmReestr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (FrmReestr <> nil) and (FrmReestr.Active) then FrmReestr:=nil;
end;

procedure TFrmReestr.FormCreate(Sender: TObject);
begin
  inherited;
cxGrid1DBTableView1.DataController.GotoFirst;
end;

procedure TFrmReestr.N11Click(Sender: TObject);
begin
  inherited;
//if RadioButton5.Checked then
//begin
//   IBREPMES.SelectSQL.Text:=IBREPMES.SelectSQL.Text+' order by fio,ul,dom,posl';
//   frxReport1.LoadFromFile('report/orderfioadresposlmes.fr3');
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
//frxReport1.Variables['datemes1']:=''''+mon_slovoDt(Ordposlmesdt1)+'''';
//frxReport1.Variables['datemes2']:=''''+mon_slovoDt(Ordposlmesdt2)+'''';
//frxReport1.Variables['dtmes1']:=Ordposlmesdt1;
//frxReport1.Variables['dtmes2']:=Ordposlmesdt2;
//frxReport1.Variables['org']:=''''+Form1.ORG+'''';
//frxReport1.ShowReport;
end;

procedure TFrmReestr.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
Filter;
end;

procedure TFrmReestr.cxTextEdit2PropertiesChange(Sender: TObject);
begin
  inherited;
Filter;
end;

procedure TFrmReestr.cxTextEdit3PropertiesChange(Sender: TObject);
begin
  inherited;
Filter;
end;

procedure TFrmReestr.cxTextEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
Filter;
end;

procedure TFrmReestr.Filter;
begin

  if (cxTextEdit1.Text<>'') or (cxTextEdit2.Text<>'') or (cxTextEdit3.Text<>'') or (cxTextEdit4.Text<>'') then
  begin
        cxGrid1DBTableView1.DataController.Filter.BeginUpdate;
      try
      cxGrid1DBTableView1.DataController.Filter.Root.Clear;
      if (cxTextEdit1.Text<>'') then
          cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1FAM, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      if (cxTextEdit2.Text<>'') then
          cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1PR_GOROD, foLike, '%'+cxTextEdit2.Text+'%', cxTextEdit2.Text);
      if (cxTextEdit3.Text<>'') then
          cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1PR_UL, foLike, '%'+cxTextEdit3.Text+'%', cxTextEdit3.Text);
      if (cxTextEdit4.Text<>'') then
          cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1PR_DOM, foLike, '%'+cxTextEdit4.Text+'%', cxTextEdit4.Text);

      finally
      cxGrid1DBTableView1.DataController.Filter.EndUpdate;
      end;
      cxGrid1DBTableView1.DataController.Filter.Active := true;


  end

  else
      if (cxTextEdit1.Text='') and (cxTextEdit2.Text='') and (cxTextEdit3.Text='') and (cxTextEdit4.Text='') then
      begin
        // cxGrid1DBTableView1.DataController.Filter.Root.Clear;
         cxGrid1DBTableView1.DataController.Filter.Active := false;
      end;
end;

end.
