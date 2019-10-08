unit EditRee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase,//Spr,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxContainer, cxEdit, cxMaskEdit, cxButtonEdit, cxGroupBox, cxLabel,
  cxTextEdit, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxCalendar;

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
    cxLabel5: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit11: TcxTextEdit;
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
    cxLabel15: TcxLabel;
    cxButtonEdit5: TcxButtonEdit;
    cxLabel16: TcxLabel;
    cxButtonEdit6: TcxButtonEdit;
    cxLabel17: TcxLabel;
    cxButtonEdit7: TcxButtonEdit;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    val:TcxButtonEdit;
  end;

var
  EditReeFrm: TEditReeFrm;

implementation

{$R *.dfm}

uses MainForm, Spr;

procedure TEditReeFrm.cxButton2Click(Sender: TObject);
begin
  inherited
  close;
end;

procedure TEditReeFrm.cxButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
 if SPR_STRANA=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_STRANA);
 SPR_STRANA.cxButton1.Visible:=true;
 SPR_STRANA.Caption:='Вибрати довідник '+main.dxBarButton3.Caption;
 SPR_STRANA.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_STRANA;
 SPR_STRANA.EditRee:=self;
 val:=cxButtonEdit1;
 //SPR_STRANA.AutoMAX;
 Main.AddToolBar(SPR_STRANA);
 end
 else
 begin
 SPR_STRANA.Show;
 SPR_STRANA.SetFocus;
 end;
end;

procedure TEditReeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (EditReeFrm <> nil) and (EditReeFrm.Active) then EditReeFrm:=nil;
end;

end.
