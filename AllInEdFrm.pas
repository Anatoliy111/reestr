unit AllInEdFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, dxStatusBar, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, IBX.IBDatabase;

type
  TAllInEdForm = class(TAllMdiForm)
    Panel4: TPanel;
    Panel3: TPanel;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    dxStatusBar1: TdxStatusBar;
    Panel2: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton5: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
//  fl_post:integer;
    { Public declarations }
  end;

var
  AllInEdForm: TAllInEdForm;

implementation

{$R *.dfm}

procedure TAllInEdForm.cxButton3Click(Sender: TObject);
begin
  inherited;
close;
end;

procedure TAllInEdForm.cxButton4Click(Sender: TObject);
begin
  inherited;
self.fl_post:=0;
close;
end;

end.
