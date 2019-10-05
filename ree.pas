unit ree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, Vcl.ExtCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons;

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
    cxGrid1DBTableView1PR_KORP: TcxGridDBColumn;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReestr: TFrmReestr;

implementation

{$R *.dfm}

uses MainForm;

procedure TFrmReestr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (FrmReestr <> nil) and (FrmReestr.Active) then FrmReestr:=nil;
end;

end.
