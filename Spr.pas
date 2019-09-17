unit Spr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllInEdFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, IBX.IBDatabase, dxStatusBar,
  Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TFrmSpr = class(TAllInEdForm)
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSpr: TFrmSpr;
  colum:TcxGridColumn;
  AColumn: TcxGridDBColumn;

implementation

{$R *.dfm}

uses MainForm;

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

end;

end.
