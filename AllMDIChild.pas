unit AllMDIChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar, cxGraphics, cxControls, dxStatusBar, cxClasses, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls, cxContainer, cxEdit,
  cxGroupBox, IBDatabase, cxLabel, DB, IBCustomDataSet, cxLookAndFeels,
  Vcl.Buttons;

type
  TAllMDICh = class(TForm)
    IBTransaction1: TIBTransaction;
    Panel2: TPanel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    Panel4: TPanel;
    Panel3: TPanel;
    dxStatusBar1: TdxStatusBar;
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDeactivate(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
  private
    LastHeight,LastWidth:integer;
    procedure WinProc1(var Msg: TMessage); message WM_SYSCOMMAND;

    { Private declarations }
  public
    { Public declarations }
 //номер документа
        ABar: TdxBar;
        fl_post:integer;
//        constructor Create(Sender: TComponent); virtual;
    procedure AutoMAX;

  end;

var
  AllMDICh: TAllMDICh;
    ExB: WORD;
implementation

uses DataMod, MainForm;

{$R *.dfm}

//constructor TAllMDICh.Create(Sender: TComponent);
//begin
//    inherited Create(Sender);
//    // do other
//end;

procedure TAllMDICh.WinProc1(var Msg: TMessage);
begin
  if (Msg.wParam = SC_MAXIMIZE) then
    begin
      // тут выполнитс€ код при разворачивании
      AutoMAX;
    end
  else
    inherited;
end;


procedure TAllMDICh.AutoMax;
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

procedure TAllMDICh.cxButton3Click(Sender: TObject);
begin
close;
end;

procedure TAllMDICh.cxButton4Click(Sender: TObject);
begin
  if self.fl_post=1 then
  begin
    case MessageBox(handle,pchar('«берегти зм≥ни?'),pchar(''),MB_OKCANCEL) of
      mrOK:begin
            IBTransaction1.CommitRetaining;
//            IBTransaction1.close;
//            IBTransaction1.Active:=true;
            self.fl_post:=0;
           end;
    end;
  end;

end;

procedure TAllMDICh.FormActivate(Sender: TObject);
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

procedure TAllMDICh.FormClose(Sender: TObject; var Action: TCloseAction);
var i:integer;
begin//  ExB:=MessageBox(handle,pchar('—охранить все изменени€?'),pchar(''),65);

//  AllMDICh.Cascade;

    if ABar<>nil then
      for I := 0 to ABar.ItemLinks.Count - 1 do
        if ABar.ItemLinks[i].Item.Data=Self then
          begin
          TdxBarButton(ABar.ItemLinks[i].Item).free;
          break;
          end;
    Action := caFree;
    AllMDICh := nil;

end;

procedure TAllMDICh.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var i:integer;
Action: TCloseAction;
begin
  CanClose:=true;
  if self.fl_post=1 then
  begin
  self.SetFocus;
  case MessageBox(handle,pchar('«берегти вс≥ зм≥ни? (‘орма буде закрита)'),pchar(''),51) of
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

procedure TAllMDICh.FormDeactivate(Sender: TObject);
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

end.
