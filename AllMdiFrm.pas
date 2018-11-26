unit AllMdiFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllFrm, IBX.IBDatabase, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls;

type
  TAllMdiForm = class(TAllForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AllMdiForm: TAllMdiForm;

implementation

{$R *.dfm}

end.
