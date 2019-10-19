unit Spr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllInEdFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxContainer, cxLabel, cxTextEdit,EditRee;

type
  TFrmSpr = class(TAllInEdForm)
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    Panel1: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExportValue;
  public
    { Public declarations }
    form:TFrmSpr;
    EditRee: TEditReeFrm;
    value:TObject;
//    value1:TcxbuttonEditReeFrm;
  end;

var
  FrmSpr: TFrmSpr;
  colum:TcxGridColumn;
  AColumn: TcxGridDBColumn;



implementation

{$R *.dfm}

uses MainForm, EditSpr;

procedure TFrmSpr.cxButton1Click(Sender: TObject);
begin
  inherited;
ExportValue;
end;

procedure TFrmSpr.ExportValue;
begin
if EditRee<>nil then
begin
  EditRee.val.Text:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldByName('name').Value;
  close;
end;

end;

procedure TFrmSpr.cxButton5Click(Sender: TObject);
begin
  inherited;
EditSprFrm.Caption:='Редагування '+self.Caption;
try
cxGrid1DBTableView1.DataController.DataSource.DataSet.Edit;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Post;

   EditSprFrm.cxDBTextEdit1.DataBinding.DataSource:=cxGrid1DBTableView1.DataController.DataSource;
EditSprFrm.ShowModal;
finally

end;



end;

procedure TFrmSpr.cxButton6Click(Sender: TObject);
begin
  inherited;
Main.ExportGrid(cxGrid1,self.Caption);
end;

procedure TFrmSpr.cxButton7Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Open;
end;

procedure TFrmSpr.cxButton8Click(Sender: TObject);
begin
  inherited;
  case MessageBox(handle,pchar('Ви дійсно бажаєте видалити запис?'),pchar(''),36) of
    IDYES: cxGrid1DBTableView1.DataController.DataSource.DataSet.Delete;
  end;

end;

procedure TFrmSpr.cxButton9Click(Sender: TObject);
begin
  inherited;
EditSprFrm.Caption:='Додати '+self.Caption;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Append;
EditSprFrm.cxDBTextEdit1.DataBinding.DataSource:=cxGrid1DBTableView1.DataController.DataSource;
EditSprFrm.Show;


end;

procedure TFrmSpr.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
ExportValue;
end;

procedure TFrmSpr.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
//View.DataControler.Filter.Options.lcoCaseInsensitive=True
//View.DataControler.Options.dcoCaseInsensitive=True
//отменить регистр символов

  if cxTextEdit1.Text<>'' then
  begin
        cxGrid1DBTableView1.DataController.Filter.BeginUpdate;
      try
      cxGrid1DBTableView1.DataController.Filter.Root.Clear;
      cxGrid1DBTableView1.DataController.Filter.Root.AddItem(cxGrid1DBTableView1NAME, foLike, '%'+cxTextEdit1.Text+'%', cxTextEdit1.Text);
      finally
      cxGrid1DBTableView1.DataController.Filter.EndUpdate;
      end;
      cxGrid1DBTableView1.DataController.Filter.Active := true;


  end

  else
    cxGrid1DBTableView1.DataController.Filter.Active := false;
end;

procedure TFrmSpr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if  (SPR_GOROD <> nil) and (SPR_GOROD.Active) then SPR_GOROD:=nil;
  if  (SPR_GROMAD <> nil) and (SPR_GROMAD.Active) then SPR_GROMAD:=nil;
  if  (SPR_OBL <> nil) and (SPR_OBL.Active) then SPR_OBL:=nil;
  if  (SPR_ORGDOC <> nil) and (SPR_ORGDOC.Active) then SPR_ORGDOC:=nil;
  if  (SPR_RAION <> nil) and (SPR_RAION.Active) then SPR_RAION:=nil;
  if  (SPR_STRANA <> nil) and (SPR_STRANA.Active) then SPR_STRANA:=nil;
  if  (SPR_TIPUL <> nil) and (SPR_TIPUL.Active) then SPR_TIPUL:=nil;
  if  (SPR_UL <> nil) and (SPR_UL.Active) then SPR_UL:=nil;
  if  (SPR_VIDDOC <> nil) and (SPR_VIDDOC.Active) then SPR_VIDDOC:=nil;

  if  (SPRV_GOROD <> nil) and (SPRV_GOROD.Active) then SPRV_GOROD:=nil;
  if  (SPRV_GROMAD <> nil) and (SPRV_GROMAD.Active) then SPRV_GROMAD:=nil;
  if  (SPRV_OBL <> nil) and (SPRV_OBL.Active) then SPRV_OBL:=nil;
  if  (SPRV_ORGDOC <> nil) and (SPRV_ORGDOC.Active) then SPRV_ORGDOC:=nil;
  if  (SPRV_RAION <> nil) and (SPRV_RAION.Active) then SPRV_RAION:=nil;
  if  (SPRV_STRANA <> nil) and (SPRV_STRANA.Active) then SPRV_STRANA:=nil;
  if  (SPRV_TIPUL <> nil) and (SPRV_TIPUL.Active) then SPRV_TIPUL:=nil;
  if  (SPRV_UL <> nil) and (SPRV_UL.Active) then SPRV_UL:=nil;
  if  (SPRV_VIDDOC <> nil) and (SPRV_VIDDOC.Active) then SPRV_VIDDOC:=nil;

end;

end.
