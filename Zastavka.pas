unit Zastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TStart = class(TForm)
    cxLookupComboBox1: TcxLookupComboBox;
    Label2: TLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Start: TStart;

implementation

{$R *.dfm}

uses MainForm;

procedure TStart.cxButton1Click(Sender: TObject);
begin
if cxLookupComboBox1.EditValue <> null then
begin
     Main.IBUSERS.Locate('ID',cxLookupComboBox1.EditValue,[]);
     if cxMaskEdit1.Text=Main.IBUSERSPW.Value then
     begin
       if Main.IBUSERSNAME.Value<>'admin' then
       begin
         Main.dxBarButton32.Enabled:=false;

       end;


     Main.cxBarEditItem4.Caption:=Main.IBUSERSNAME.Value;
     Main.Enabled:=true;
     Main.dxBarButton12.Click;
     Start.Hide;
     end
     else
   ShowMessage('Неправильний пароль!');
end
else
   ShowMessage('Виберіть користувача!');
end;

procedure TStart.cxButton2Click(Sender: TObject);
begin
Main.Close;
end;

procedure TStart.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Main.Close;
end;

procedure TStart.FormShow(Sender: TObject);
begin
Main.Enabled:=false;
end;

end.
