unit EditRee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase,//Spr,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxGroupBox, cxLabel,
  cxTextEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar, cxMemo,ree,DB;

type
  TEditReeFrm = class(TAllMdiForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxButtonEdit1: TcxButtonEdit;
    cxLabel12: TcxLabel;
    cxButtonEdit2: TcxButtonEdit;
    cxLabel13: TcxLabel;
    cxButtonEdit3: TcxButtonEdit;
    cxLabel14: TcxLabel;
    cxButtonEdit4: TcxButtonEdit;
    cxLabel16: TcxLabel;
    cxButtonEdit6: TcxButtonEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxButtonEdit8: TcxButtonEdit;
    cxLabel19: TcxLabel;
    cxButtonEdit9: TcxButtonEdit;
    cxLabel20: TcxLabel;
    cxButtonEdit10: TcxButtonEdit;
    cxLabel21: TcxLabel;
    cxButtonEdit11: TcxButtonEdit;
    cxLabel22: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel15: TcxLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxButtonEdit12: TcxButtonEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel23: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxTextEdit6: TcxTextEdit;
    cxMemo1: TcxMemo;
    cxLabel10: TcxLabel;
    cxMemo2: TcxMemo;
    cxLabel11: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel24: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxButtonEdit7: TcxButtonEdit;
    cxLabel26: TcxLabel;
    cxButtonEdit13: TcxButtonEdit;
    cxLabel27: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit2PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit8PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit9PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit12PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit10PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit11PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit5PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit6PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit7PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit13PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure cxTextEdit2PropertiesChange(Sender: TObject);
    procedure cxTextEdit4PropertiesChange(Sender: TObject);
    procedure cxButtonEdit2PropertiesChange(Sender: TObject);
    procedure cxButtonEdit3PropertiesChange(Sender: TObject);
    procedure cxButtonEdit12PropertiesChange(Sender: TObject);
    procedure cxButtonEdit5PropertiesChange(Sender: TObject);
    procedure cxButtonEdit6PropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private

    { Private declarations }
  public
    { Public declarations }
    val:TcxButtonEdit;
    mode:integer;
    Ree: TFrmReestr;
  end;

var
  EditReeFrm: TEditReeFrm;
  EditR:TEditReeFrm;
implementation

{$R *.dfm}

uses MainForm, Spr;

procedure TEditReeFrm.cxButton1Click(Sender: TObject);
var err:boolean;
    ddss:string;
begin
  inherited;
 err:=false;
 if trim(EditR.cxTextEdit1.Text)='' then begin err:=true; EditR.cxTextEdit1.Style.Color:=clYellow; end;
 if trim(EditR.cxTextEdit2.Text)='' then begin err:=true; EditR.cxTextEdit2.Style.Color:=clYellow; end;
 //if trim(EditR.cxTextEdit3.Text)='' then begin err:=true; EditR.cxTextEdit3.Style.Color:=clYellow; end;
 if trim(EditR.cxTextEdit4.Text)='' then begin err:=true; EditR.cxTextEdit4.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit2.Text)='' then begin err:=true; EditR.cxButtonEdit2.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit3.Text)='' then begin err:=true; EditR.cxButtonEdit3.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit12.Text)='' then begin err:=true; EditR.cxButtonEdit12.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit5.Text)='' then begin err:=true; EditR.cxButtonEdit5.Style.Color:=clYellow; end;
 if trim(EditR.cxButtonEdit6.Text)='' then begin err:=true; EditR.cxButtonEdit6.Style.Color:=clYellow; end;

 if err then
 begin
   ShowMessage('Заповніть обов"язкові поля');
   exit;
 end;

//
if mode=1 then
  main.IBREESTR.Append;
if mode=2 then
  main.IBREESTR.Edit;

 Main.IBREESTRFAM.Value:=trim(EditR.cxTextEdit1.Text);
 Main.IBREESTRIM.Value:=trim(EditR.cxTextEdit2.Text);
 Main.IBREESTROT.Value:=trim(EditR.cxTextEdit3.Text);
 Main.IBREESTRPR_DOM.Value:=trim(EditR.cxTextEdit4.Text);
 Main.IBREESTRPR_STRANA.Value:=trim(EditR.cxButtonEdit2.Text);
 Main.IBREESTRPR_OBL.Value:=trim(EditR.cxButtonEdit3.Text);
 Main.IBREESTRPR_GOROD.Value:=trim(EditR.cxButtonEdit12.Text);
 Main.IBREESTRPR_TIPUL.Value:=trim(EditR.cxButtonEdit5.Text);
 Main.IBREESTRPR_UL.Value:=trim(EditR.cxButtonEdit6.Text);
 Main.IBREESTRPR_RAION.Value:=trim(EditR.cxButtonEdit4.Text);
 Main.IBREESTRPR_KV.Value:=trim(EditR.cxTextEdit5.Text);
 if DateToStr(cxDateEdit2.Date)<>'00.00.0000' then
    Main.IBREESTRPR_RDATA.Value:=cxDateEdit2.Date
 else
    Main.IBREESTRPR_RDATA.Clear;
    //Main.IBREESTRPR_RDATA.Value:=StrToDate('00.00.0000');
 if DateToStr(cxDateEdit3.Date)<>'00.00.0000' then
    Main.IBREESTRPR_ZDATA.Value:=cxDateEdit3.Date
 else
    Main.IBREESTRPR_ZDATA.Clear;

 if DateToStr(cxDateEdit1.Date)<>'00.00.0000' then
    Main.IBREESTRMN_DATA.Value:=cxDateEdit1.Date
 else
    Main.IBREESTRMN_DATA.Clear;
 Main.IBREESTRMN_STRANA.Value:=trim(EditR.cxButtonEdit1.Text);
 Main.IBREESTRMN_OBL.Value:=trim(EditR.cxButtonEdit8.Text);
 Main.IBREESTRMN_RAION.Value:=trim(EditR.cxButtonEdit9.Text);
 Main.IBREESTRMN_GOROD.Value:=trim(EditR.cxButtonEdit10.Text);
 Main.IBREESTRGROMAD.Value:=trim(EditR.cxButtonEdit11.Text);
 Main.IBREESTREDDR.Value:=trim(EditR.cxTextEdit6.Text);
 Main.IBREESTRPRIBUV.Value:=trim(EditR.cxMemo1.Text);
 Main.IBREESTRVIBUV.Value:=trim(EditR.cxMemo2.Text);
 Main.IBREESTRDOCVID.Value:=trim(EditR.cxButtonEdit7.Text);
 Main.IBREESTRDOCORG.Value:=trim(EditR.cxButtonEdit13.Text);
 Main.IBREESTRDOCSER.Value:=trim(EditR.cxTextEdit7.Text);
 Main.IBREESTRDOCNOM.Value:=trim(EditR.cxTextEdit8.Text);
 if DateToStr(cxDateEdit4.Date)<>'00.00.0000' then
    Main.IBREESTRDOCDATA.Value:=cxDateEdit4.Date
 else
    Main.IBREESTRDOCDATA.Clear;

    if main.IBREESTR.State in [dsInsert,dsEdit] then
       main.IBREESTR.Post;

main.IBTransaction1.CommitRetaining;

close;

end;

procedure TEditReeFrm.cxButton2Click(Sender: TObject);
begin
  inherited

  close;
end;



procedure TEditReeFrm.cxButtonEdit10PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_GOROD=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_GOROD);
 SPRV_GOROD.cxButton1.Visible:=true;
 SPRV_GOROD.Caption:='Вибрати довідник '+Main.dxBarButton6.Caption+' (народження)';
  SPRV_GOROD.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_GOROD;
     SPRV_GOROD.EditRee:=self;
 val:=cxButtonEdit10;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_GOROD);
 end
 else
 begin
 SPRV_GOROD.Show;
 SPRV_GOROD.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit11PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_GROMAD=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_GROMAD);
 SPRV_GROMAD.cxButton1.Visible:=true;
 SPRV_GROMAD.Caption:='Вибрати довідник '+Main.dxBarButton11.Caption;
  SPRV_GROMAD.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_GROMAD;
     SPRV_GROMAD.EditRee:=self;
 val:=cxButtonEdit11;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_GROMAD);
 end
 else
 begin
 SPRV_GROMAD.Show;
 SPRV_GROMAD.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit12PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_GOROD=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_GOROD);
 SPRV_GOROD.cxButton1.Visible:=true;
 SPRV_GOROD.Caption:='Вибрати довідник '+Main.dxBarButton6.Caption+' (проживання)';
  SPRV_GOROD.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_GOROD;
     SPRV_GOROD.EditRee:=self;
 val:=cxButtonEdit12;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_GOROD);
 end
 else
 begin
 SPRV_GOROD.Show;
 SPRV_GOROD.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit12PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxButtonEdit12.Text)<>'' then cxButtonEdit12.Style.Color:=clWindow
  else cxButtonEdit12.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxButtonEdit13PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_ORGDOC=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_ORGDOC);
 SPRV_ORGDOC.cxButton1.Visible:=true;
 SPRV_ORGDOC.Caption:='Вибрати довідник '+Main.dxBarButton9.Caption;
  SPRV_ORGDOC.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_ORGDOC;
     SPRV_ORGDOC.EditRee:=self;
 val:=cxButtonEdit13;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_ORGDOC);
 end
 else
 begin
 SPRV_ORGDOC.Show;
 SPRV_ORGDOC.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_STRANA=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_STRANA);
 SPRV_STRANA.cxButton1.Visible:=true;
 SPRV_STRANA.Caption:='Вибрати довідник '+main.dxBarButton3.Caption+' (народження)';
 SPRV_STRANA.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_STRANA;
 SPRV_STRANA.EditRee:=self;
 val:=cxButtonEdit1;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_STRANA);
 end
 else
 begin
 SPRV_STRANA.Show;
 SPRV_STRANA.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit2PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_STRANA=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_STRANA);
 SPRV_STRANA.cxButton1.Visible:=true;
 SPRV_STRANA.Caption:='Вибрати довідник '+main.dxBarButton3.Caption+' (проживання)';
 SPRV_STRANA.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_STRANA;
 SPRV_STRANA.EditRee:=self;
 val:=cxButtonEdit2;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_STRANA);
 end
 else
 begin
 SPRV_STRANA.Show;
 SPRV_STRANA.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit2PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxButtonEdit2.Text)<>'' then cxButtonEdit2.Style.Color:=clWindow
  else cxButtonEdit2.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_OBL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_OBL);
 SPRV_OBL.cxButton1.Visible:=true;
 SPRV_OBL.Caption:='Вибрати довідник '+Main.dxBarButton4.Caption+' (проживання)';
  SPRV_OBL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_OBL;
   SPRV_OBL.EditRee:=self;
 val:=cxButtonEdit3;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_OBL);
 end
 else
 begin
 SPRV_OBL.Show;
 SPRV_OBL.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit3PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxButtonEdit3.Text)<>'' then cxButtonEdit3.Style.Color:=clWindow
  else cxButtonEdit3.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxButtonEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_RAION=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_RAION);
 SPRV_RAION.cxButton1.Visible:=true;
 SPRV_RAION.Caption:='Вибрати довідник '+Main.dxBarButton5.Caption+' (проживання)';
  SPRV_RAION.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_RAION;
     SPRV_RAION.EditRee:=self;
 val:=cxButtonEdit4;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_RAION);
 end
 else
 begin
 SPRV_RAION.Show;
 SPRV_RAION.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit5PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_TIPUL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_TIPUL);
 SPRV_TIPUL.cxButton1.Visible:=true;
 SPRV_TIPUL.Caption:='Вибрати довідник '+Main.dxBarButton7.Caption;
  SPRV_TIPUL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_TIPUL;
     SPRV_TIPUL.EditRee:=self;
 val:=cxButtonEdit5;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_TIPUL);
 end
 else
 begin
 SPRV_TIPUL.Show;
 SPRV_TIPUL.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit5PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxButtonEdit5.Text)<>'' then cxButtonEdit5.Style.Color:=clWindow
  else cxButtonEdit5.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxButtonEdit6PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_UL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_UL);
 SPRV_UL.cxButton1.Visible:=true;
 SPRV_UL.Caption:='Вибрати довідник '+Main.dxBarButton8.Caption;
  SPRV_UL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_UL;
     SPRV_UL.EditRee:=self;
 val:=cxButtonEdit6;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_UL);
 end
 else
 begin
 SPRV_UL.Show;
 SPRV_UL.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit6PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxButtonEdit6.Text)<>'' then cxButtonEdit6.Style.Color:=clWindow
  else cxButtonEdit6.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxButtonEdit7PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_VIDDOC=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_VIDDOC);
 SPRV_VIDDOC.cxButton1.Visible:=true;
 SPRV_VIDDOC.Caption:='Вибрати довідник '+Main.dxBarButton9.Caption;
  SPRV_VIDDOC.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_VIDDOC;
     SPRV_VIDDOC.EditRee:=self;
 val:=cxButtonEdit7;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_VIDDOC);
 end
 else
 begin
 SPRV_VIDDOC.Show;
 SPRV_VIDDOC.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit8PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_OBL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_OBL);
 SPRV_OBL.cxButton1.Visible:=true;
 SPRV_OBL.Caption:='Вибрати довідник '+Main.dxBarButton4.Caption+' (народження)';
  SPRV_OBL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_OBL;
     SPRV_OBL.EditRee:=self;
 val:=cxButtonEdit8;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_OBL);
 end
 else
 begin
 SPRV_OBL.Show;
 SPRV_OBL.SetFocus;
 end;
end;

procedure TEditReeFrm.cxButtonEdit9PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPRV_RAION=nil then
 begin
 Application.CreateForm(TFrmSpr,SPRV_RAION);
 SPRV_RAION.cxButton1.Visible:=true;
 SPRV_RAION.Caption:='Вибрати довідник '+Main.dxBarButton5.Caption+' (народження)';
  SPRV_RAION.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_RAION;
     SPRV_RAION.EditRee:=self;
 val:=cxButtonEdit9;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPRV_RAION);
 end
 else
 begin
 SPRV_RAION.Show;
 SPRV_RAION.SetFocus;
 end;
end;

procedure TEditReeFrm.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxTextEdit1.Text)<>'' then cxTextEdit1.Style.Color:=clWindow
  else cxTextEdit1.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxTextEdit2PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxTextEdit2.Text)<>'' then cxTextEdit2.Style.Color:=clWindow
  else cxTextEdit2.Style.Color:=clYellow;
end;

procedure TEditReeFrm.cxTextEdit4PropertiesChange(Sender: TObject);
begin
  inherited;
  if trim(cxTextEdit4.Text)<>'' then cxTextEdit4.Style.Color:=clWindow
  else cxTextEdit4.Style.Color:=clYellow;
end;

procedure TEditReeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
FrmRee.Enabled:=true;
FrmRee.BarBut.Enabled:=true;
if  (EditReeFrm <> nil) and (EditReeFrm.Active) then EditReeFrm:=nil;
if  (EditR <> nil) and (EditR.Active) then EditR:=nil;

end;

procedure TEditReeFrm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
//    if main.IBREESTR.State in [dsInsert,dsEdit] then
//    else main.IBTransaction1.RollbackRetaining;


end;

procedure TEditReeFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FrmRee.Enabled:=false;
  FrmRee.BarBut.Enabled:=false;


end;

end.
