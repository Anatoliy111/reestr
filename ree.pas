unit ree;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, Vcl.ExtCtrls;

type
  TFrmReestr = class(TAllMdiForm)
    Panel1: TPanel;
    Panel2: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReestr: TFrmReestr;

implementation

{$R *.dfm}

end.
