unit Zastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Gauges, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox,inifiles;

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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Start: TStart;
  iniFile:TIniFile;
implementation

{$R *.dfm}

uses MainForm, DataMod, SHFolder;

procedure TStart.cxButton1Click(Sender: TObject);
begin


if (cxLookupComboBox1.EditValue <> null) or (Length(cxLookupComboBox1.EditValue)<>0) then
begin
     Main.IBUSERS.Locate('NAME',cxLookupComboBox1.EditValue,[]);
     if cxMaskEdit1.Text=Main.IBUSERSPW.Value then
     begin
       if Main.IBUSERSNAME.Value<>'admin' then
       begin
         Main.dxBarButton32.Enabled:=false;

       end;

     if iniFile<>nil then
        IniFile.WriteString('User','Login',trim(cxLookupComboBox1.Text));
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

procedure TStart.FormCreate(Sender: TObject);
const
  SHGFP_TYPE_CURRENT = 0;
var folder : integer;
    Result:string;
path: array [0..MAX_PATH] of char;
begin
folder:=2;
  if SUCCEEDED(SHGetFolderPath(0,folder,0,SHGFP_TYPE_CURRENT,@path[0])) then
  begin
    iniFile:=TIniFile.Create(path+'UserReestr.ini');
    cxLookupComboBox1.EditValue:=iniFile.ReadString('User','Login',extractfilepath(paramstr(0)));
  end;

// SHGetFolderPath uses SHFolder;
// folder
//0 "[Текущий пользователь]\My Documents"
//1 "All Users\Application Data"
//2 "[User Specific]\Application Data"
//3 "Program Files"
//4 "All Users\Documents"

end;

procedure TStart.FormShow(Sender: TObject);
begin
Main.Enabled:=false;
end;

end.
