unit AllFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IBX.IBDatabase,DB,dxBar;

type
  TAllForm = class(TForm)
    IBTransaction1: TIBTransaction;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDeactivate(Sender: TObject);
  private
    LastHeight,LastWidth:integer;
    procedure WinProc1(var Msg: TMessage); message WM_SYSCOMMAND;
    { Private declarations }
  public
        ABar: TdxBar;
        fl_post:integer;
        procedure AutoMAX;
    { Public declarations }
  end;

var
  AllForm: TAllForm;
  ExB: WORD;

implementation

uses DataMod, MainForm;

procedure TAllForm.FormActivate(Sender: TObject);
 var i:integer;
begin
  if ABar<>nil then
  for I := 0 to ABar.ItemLinks.Count - 1 do
    if ABar.ItemLinks[i].Item.Data=Self then
    begin
//      TdxBarButton(ABar.ItemLinks[i].Item).Down:=true;
        TdxBarButton(ABar.ItemLinks[i].Item).Style:=main.cxStyle1;
      exit;
    end;
end;

procedure TAllForm.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin//  ExB:=MessageBox(handle,pchar('Сохранить все изменения?'),pchar(''),65);

//  AllMDICh.Cascade;

    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
          begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          //TdxBarButton(ABar.ItemLinks[i].Item).Enabled:=false;
          break;
          end;
    Action := caFree;
    AllForm := nil;
end;

procedure TAllForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var i:integer;
Action: TCloseAction;
begin
  CanClose:=true;
  if self.fl_post=1 then
  begin
  self.SetFocus;
  case MessageBox(handle,pchar('Зберегти всі зміни? (Форма буде закрита)'),pchar(''),51) of
    IDYES:ModalResult:=mrYes;
    IDNO:ModalResult:=mrNo;
    IDCANCEL:CanClose:=false;
  end;
  end;

  if ModalResult=mrYES then
  begin
    IBTransaction1.Commit;
    self.fl_post:=0;
    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
        begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
        end;
  end;
  if ModalResult=mrNO then
  begin
    IBTransaction1.Rollback;
    self.fl_post:=0;
    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
        begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
        end;
  end;

end;

procedure TAllForm.FormDeactivate(Sender: TObject);
var i:integer;
begin
  if ABar<>nil then
  for I := 0 to ABar.ItemLinks.Count - 1 do
    if ABar.ItemLinks[i].Item.Data=Self then
    begin
//      TdxBarButton(ABar.ItemLinks[i].Item).Down:=false;
        TdxBarButton(ABar.ItemLinks[i].Item).Style:=main.cxStyle2;
      exit;
    end;
end;



procedure TAllForm.WinProc1(var Msg: TMessage);
begin
  if (Msg.wParam = SC_MAXIMIZE) then
    begin
      // тут выполнится код при разворачивании
      AutoMAX;
    end
  else
    inherited;
end;


procedure TAllForm.AutoMax;
begin
 if self.Height=(main.ClientHeight-70) then
 begin
   self.Height:=LastHeight;
   self.Width:=LastWidth;
 end
 else
 begin
 self.WindowState:=wsNormal;
 self.top:=0;
 self.Left:=0;
 LastHeight:=self.Height;
 LastWidth:=self.Width;
 self.Height:=main.ClientHeight-70;
 self.Width:=main.ClientWidth-5;
 end;
end;

{$R *.dfm}

end.
