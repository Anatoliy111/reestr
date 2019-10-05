unit EditRee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase;

type
  TEditReeFrm = class(TAllMdiForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EditReeFrm: TEditReeFrm;

implementation

{$R *.dfm}

procedure TEditReeFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if  (EditReeFrm <> nil) and (EditReeFrm.Active) then EditReeFrm:=nil;
end;

end.
