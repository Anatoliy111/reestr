unit Setting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AllMdiFrm, IBX.IBDatabase, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer,
  cxEdit, cxProgressBar, Vcl.StdCtrls, cxButtons, cxTextEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls;

type
  TSettingFrm = class(TAllMdiForm)
    cxButton1: TcxButton;
    OpenDialog1: TOpenDialog;
    cxProgressBar1: TcxProgressBar;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    Panel2: TPanel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1NAME: TcxGridDBColumn;
    cxGrid1DBTableView1PW: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SettingFrm: TSettingFrm;

implementation

{$R *.dfm}

uses MainForm, ComObj, mytools, MyLibrary;

procedure TSettingFrm.cxButton1Click(Sender: TObject);
var i,ns,kolst:integer;
    sum:currency;
    str,nam,tip,cex,st1,klasf,vid_rob,n_kres,gost,dekada:string;
    MsExcel,kolwith,rowh,rowh1:Variant;
    f1:boolean;
    st:pchar;
begin
  inherited;
  f1:=true;
  kolst:=1;
  if OpenDialog1.Execute then
  begin

    MsExcel := CreateOleObject('Excel.Application');
    MsExcel.Workbooks.Add;
    MsExcel.Workbooks.Open[OpenDialog1.FileName];
    while f1 do
    begin
    if (Length(MsExcel.WorkSheets[1].Cells[kolst,1])=0) and (Length(MsExcel.WorkSheets[1].Cells[kolst,2])=0) and (Length(MsExcel.WorkSheets[1].Cells[kolst,3])=0) then
       f1:=False
    else
    begin
    kolst:=kolst+1;
    cxTextEdit1.Text:=int2str(kolst);
    cxTextEdit2.Text:=int2str(Length(MsExcel.WorkSheets[1].Cells[kolst,1]));
    cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[kolst,1];
    Application.ProcessMessages;
    end;
    end;
    cxProgressBar1.Properties.Min:=0;
    cxProgressBar1.Properties.Max:=kolst-1;
    cxProgressBar1.Position:=1;
    for I := 2 to kolst-1 do
    begin
      cxProgressBar1.Position:=cxProgressBar1.Position+1;
//    cxTextEdit1.Text:=int2str(i);
//    cxTextEdit2.Text:=int2str(Length(MsExcel.WorkSheets[1].Cells[i,1]));
//    cxTextEdit3.Text:=MsExcel.WorkSheets[1].Cells[i,1];
      Application.ProcessMessages;
      if Length(MsExcel.WorkSheets[1].Cells[i,1])<>0 then
      begin
        Main.IBREESTR.Append;
        Main.IBREESTRFAM.Value:=MsExcel.WorkSheets[1].Cells[i,1];
        if Length(MsExcel.WorkSheets[1].Cells[i,2])<>0 then Main.IBREESTRIM.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,2]);
        if Length(MsExcel.WorkSheets[1].Cells[i,3])<>0 then Main.IBREESTROT.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,3]);
        if Length(MsExcel.WorkSheets[1].Cells[i,4])<>0 then Main.IBREESTRMN_DATA.AsDateTime:=StrToDate(Trim(MsExcel.WorkSheets[1].Cells[i,4]));
        if Length(MsExcel.WorkSheets[1].Cells[i,5])<>0 then
        begin
           Main.IBREESTRMN_STRANA.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,5]);
           if not Main.IBSPR_STRANA.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,5]),[]) then
           begin
           Main.IBSPR_STRANA.Append;
           Main.IBSPR_STRANANAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,5]);
           Main.IBSPR_STRANA.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,6])<>0 then
        begin
           Main.IBREESTRMN_OBL.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,6]);
           if not Main.IBSPR_OBL.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,6]),[]) then
           begin
           Main.IBSPR_OBL.Append;
           Main.IBSPR_OBLNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,6]);
           Main.IBSPR_OBL.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,7])<>0 then
        begin
           Main.IBREESTRMN_RAION.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,7]);
           if not Main.IBSPR_RAION.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,7]),[]) then
           begin
           Main.IBSPR_RAION.Append;
           Main.IBSPR_RAIONNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,7]);
           Main.IBSPR_RAION.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,8])<>0 then
        begin
           Main.IBREESTRMN_GOROD.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,8]);
           if not Main.IBSPR_GOROD.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,8]),[]) then
           begin
           Main.IBSPR_GOROD.Append;
           Main.IBSPR_GORODNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,8]);
           Main.IBSPR_GOROD.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,9])<>0 then
        begin
           Main.IBREESTRPR_STRANA.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,9]);
           if not Main.IBSPR_STRANA.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,9]),[]) then
           begin
           Main.IBSPR_STRANA.Append;
           Main.IBSPR_STRANANAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,9]);
           Main.IBSPR_STRANA.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,10])<>0 then
        begin
           Main.IBREESTRPR_OBL.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,10]);
           if not Main.IBSPR_OBL.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,10]),[]) then
           begin
           Main.IBSPR_OBL.Append;
           Main.IBSPR_OBLNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,10]);
           Main.IBSPR_OBL.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,11])<>0 then
        begin
           Main.IBREESTRPR_RAION.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,11]);
           if not Main.IBSPR_RAION.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,11]),[]) then
           begin
           Main.IBSPR_RAION.Append;
           Main.IBSPR_RAIONNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,11]);
           Main.IBSPR_RAION.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,12])<>0 then
        begin
           Main.IBREESTRPR_GOROD.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,12]);
           if not Main.IBSPR_GOROD.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,12]),[]) then
           begin
           Main.IBSPR_GOROD.Append;
           Main.IBSPR_GORODNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,12]);
           Main.IBSPR_GOROD.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,13])<>0 then
        begin
           Main.IBREESTRPR_TIPUL.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,13]);
           if not Main.IBSPR_TIPUL.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,13]),[]) then
           begin
           Main.IBSPR_TIPUL.Append;
           Main.IBSPR_TIPULNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,13]);
           Main.IBSPR_TIPUL.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,14])<>0 then
        begin
           Main.IBREESTRPR_UL.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,14]);
           if not Main.IBSPR_UL.Locate('name',Trim(MsExcel.WorkSheets[1].Cells[i,14]),[]) then
           begin
           Main.IBSPR_UL.Append;
           Main.IBSPR_ULNAME.Value:=Trim(MsExcel.WorkSheets[1].Cells[i,14]);
           Main.IBSPR_UL.Post;
           end;
        end;
        if Length(MsExcel.WorkSheets[1].Cells[i,15])<>0 then Main.IBREESTRPR_DOM.Value:=MsExcel.WorkSheets[1].Cells[i,15];
        if Length(MsExcel.WorkSheets[1].Cells[i,16])<>0 then Main.IBREESTRPR_KV.Value:=MsExcel.WorkSheets[1].Cells[i,16];

        Main.IBREESTR.Post;
      end;



 //         if Length(MsExcel.WorkSheets[1].Cells[i,5])<>0 then
 //            if Pos('пусто',MsExcel.WorkSheets[1].Cells[i,5])<>0 then
 //               tip:=''
 //           else tip:=MsExcel.WorkSheets[1].Cells[i,5];
 //         if Length(MsExcel.WorkSheets[1].Cells[i,6])<>0 then
 //            if Pos('пусто',MsExcel.WorkSheets[1].Cells[i,6])<>0 then
 //               n_kres:=''
 //           else n_kres:='№'+MsExcel.WorkSheets[1].Cells[i,6];
 //         if Length(MsExcel.WorkSheets[1].Cells[i,7])<>0 then
 //            if Pos('пусто',MsExcel.WorkSheets[1].Cells[i,7])<>0 then
 //               gost:=''
 //           else gost:=MsExcel.WorkSheets[1].Cells[i,7];



   //       IBZAYAVTMC.Value:=nam+' '+tip+' '+MsExcel.WorkSheets[1].Cells[i,6]+' '+MsExcel.WorkSheets[1].Cells[i,7];
       //   IBZAYAVKLASIF.Value:=MsExcel.WorkSheets[1].Cells[i,4];
       //   IBZAYAVED_IZM.Value:=MsExcel.WorkSheets[1].Cells[i,5];



    end;




    MsExcel.ActiveWorkbook.Close;
    MsExcel.Application.Quit;
    //MsExcel := null;
  end;

  ShowMessage('Завантаження закінчено');
end;

procedure TSettingFrm.cxButton7Click(Sender: TObject);
begin
  inherited;
Main.IBUSERS.Close;
Main.IBUSERS.Open;
end;

procedure TSettingFrm.cxButton8Click(Sender: TObject);
begin
  inherited;
Main.IBUSERS.Delete;
end;

procedure TSettingFrm.cxButton9Click(Sender: TObject);
begin
  inherited;
Main.IBUSERS.Append;
end;

procedure TSettingFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
if Main.IBUSERS.State in [dsInsert,dsEdit] then
   Main.IBUSERS.Post;

  if  (SettingFrm <> nil) and (SettingFrm.Active) then SettingFrm:=nil;
end;

end.
