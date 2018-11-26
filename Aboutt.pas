unit Aboutt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxGraphics,
  cxLookAndFeels, cxControls, cxContainer, cxEdit, cxLabel;

type
  TAbout = class(TForm)
    cxButton1: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  About: TAbout;

implementation

{$R *.dfm}

procedure TAbout.cxButton1Click(Sender: TObject);
begin
Close;
end;

end.
