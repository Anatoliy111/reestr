unit MainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxClasses, dxBar, ImgList, ComCtrls, Menus, cxControls, dxStatusBar,
  dxRibbonStatusBar, ToolWin, StdActns, ActnList, ExtCtrls, StdCtrls, cxGraphics,
  jpeg, cxContainer, cxEdit, cxImage, cxLabel, dxSkinsCore,
  System.Actions, System.ImageList, cxButtonEdit, cxBarEditItem, dxBarExtItems,
  Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase, cxRichEdit, cxTextEdit,
  cxHyperLinkEdit, dxRatingControl, dxSparkline, dxToggleSwitch,AllFrm,
  cxRadioGroup, cxTrackBar, dxRibbonGallery, IBX.IBQuery,
  Data.Win.ADODB,cxStyles,Spr, frxDesgn, frxClass,ree, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxLocalization;

type
  TMain = class(TForm)
    ImageList1: TImageList;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton19: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton28: TdxBarButton;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton40: TdxBarButton;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    ImageList2: TImageList;
    dxBarButton2: TdxBarButton;
    dxBarButton41: TdxBarButton;
    dxBarButton42: TdxBarButton;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    cxImageList1: TcxImageList;
    ImageList3: TImageList;
    dxBarSubItem1: TdxBarSubItem;
    cxBarEditItem1: TcxBarEditItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    dxBarStatic1: TdxBarStatic;
    cxBarEditItem4: TcxBarEditItem;
    IBTransaction1: TIBTransaction;
    dxBarSubItem11: TdxBarSubItem;
    dxBarEdit1: TdxBarEdit;
    cxBarEditItem5: TcxBarEditItem;
    dxBarStatic2: TdxBarStatic;
    dxBarSpinEdit1: TdxBarSpinEdit;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    cxBarEditItem8: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    cxBarEditItem11: TcxBarEditItem;
    cxBarEditItem12: TcxBarEditItem;
    dxBarSpinEdit2: TdxBarSpinEdit;
    cxBarEditItem13: TcxBarEditItem;
    cxBarEditItem14: TcxBarEditItem;
    cxBarEditItem15: TcxBarEditItem;
    dxBarSeparator2: TdxBarSeparator;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSubItem12: TdxBarSubItem;
    dxBarEdit2: TdxBarEdit;
    dxBarSeparator5: TdxBarSeparator;
    dxBarStatic3: TdxBarStatic;
    dxBarStatic4: TdxBarStatic;
    dxBarSpinEdit3: TdxBarSpinEdit;
    dxBarMRUListItem1: TdxBarMRUListItem;
    dxBarInPlaceSubItem1: TdxBarInPlaceSubItem;
    dxRibbonGalleryItem1: TdxRibbonGalleryItem;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    cxBarEditItem18: TcxBarEditItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    dxBarSubItem13: TdxBarSubItem;
    IBREESTR: TIBDataSet;
    DSREESTR: TDataSource;
    IBSPR_GOROD: TIBDataSet;
    DSSPR_GOROD: TDataSource;
    IBSPR_GROMAD: TIBDataSet;
    DSSPR_GROMAD: TDataSource;
    IBSPR_OBL: TIBDataSet;
    DSSPR_OBL: TDataSource;
    IBSPR_ORGDOC: TIBDataSet;
    DSSPR_ORGDOC: TDataSource;
    IBSPR_RAION: TIBDataSet;
    DSSPR_RAION: TDataSource;
    IBSPR_STRANA: TIBDataSet;
    DSSPR_STRANA: TDataSource;
    IBSPR_TIPUL: TIBDataSet;
    DSSPR_TIPUL: TDataSource;
    IBSPR_UL: TIBDataSet;
    DSSPR_UL: TDataSource;
    IBSPR_VIDDOC: TIBDataSet;
    DSSPR_VIDDOC: TDataSource;
    IBSPR_GORODID: TIntegerField;
    IBSPR_GORODNAME: TIBStringField;
    IBSPR_GROMADID: TIntegerField;
    IBSPR_GROMADNAME: TIBStringField;
    IBSPR_OBLID: TIntegerField;
    IBSPR_OBLNAME: TIBStringField;
    IBSPR_ORGDOCID: TIntegerField;
    IBSPR_ORGDOCNAME: TIBStringField;
    IBSPR_RAIONID: TIntegerField;
    IBSPR_RAIONNAME: TIBStringField;
    IBSPR_STRANAID: TIntegerField;
    IBSPR_STRANANAME: TIBStringField;
    IBSPR_TIPULID: TIntegerField;
    IBSPR_TIPULNAME: TIBStringField;
    IBSPR_ULID: TIntegerField;
    IBSPR_ULNAME: TIBStringField;
    IBSPR_VIDDOCID: TIntegerField;
    IBSPR_VIDDOCNAME: TIBStringField;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    IBUSERS: TIBDataSet;
    DSUSERS: TDataSource;
    IBUSERSID: TIntegerField;
    IBUSERSNAME: TIBStringField;
    IBUSERSPW: TIBStringField;
    frxDesigner1: TfrxDesigner;
    frxReport1: TfrxReport;
    dxBarButton13: TdxBarButton;
    IBREESTRID: TIntegerField;
    IBREESTRFAM: TIBStringField;
    IBREESTRIM: TIBStringField;
    IBREESTROT: TIBStringField;
    IBREESTRMN_DATA: TDateField;
    IBREESTRMN_STRANA: TIBStringField;
    IBREESTRMN_OBL: TIBStringField;
    IBREESTRMN_RAION: TIBStringField;
    IBREESTRMN_GOROD: TIBStringField;
    IBREESTRPR_STRANA: TIBStringField;
    IBREESTRPR_OBL: TIBStringField;
    IBREESTRPR_RAION: TIBStringField;
    IBREESTRPR_GOROD: TIBStringField;
    IBREESTRPR_TIPUL: TIBStringField;
    IBREESTRPR_UL: TIBStringField;
    IBREESTRPR_DOM: TIBStringField;
    IBREESTRPR_KORP: TIBStringField;
    IBREESTRPR_KV: TIBStringField;
    IBREESTRPR_RDATA: TDateField;
    IBREESTRPR_ZDATA: TDateField;
    IBREESTRGROMAD: TIBStringField;
    IBREESTREDDR: TIBStringField;
    IBREESTRPRIBUV: TIBStringField;
    IBREESTRVIBUV: TIBStringField;
    IBREESTRDOCVID: TIBStringField;
    IBREESTRDOCSER: TIBStringField;
    IBREESTRDOCNOM: TIBStringField;
    IBREESTRDOCORG: TIBStringField;
    IBREESTRDOCDATA: TDateField;
    IBSIMJA: TIBDataSet;
    DSSIMJA: TDataSource;
    IBSIMJAID: TIntegerField;
    IBSIMJAFAM: TIBStringField;
    IBSIMJAIM: TIBStringField;
    IBSIMJAOT: TIBStringField;
    IBSIMJAMN_DATA: TDateField;
    IBSIMJAMN_STRANA: TIBStringField;
    IBSIMJAMN_OBL: TIBStringField;
    IBSIMJAMN_RAION: TIBStringField;
    IBSIMJAMN_GOROD: TIBStringField;
    IBSIMJAPR_STRANA: TIBStringField;
    IBSIMJAPR_OBL: TIBStringField;
    IBSIMJAPR_RAION: TIBStringField;
    IBSIMJAPR_GOROD: TIBStringField;
    IBSIMJAPR_TIPUL: TIBStringField;
    IBSIMJAPR_UL: TIBStringField;
    IBSIMJAPR_DOM: TIBStringField;
    IBSIMJAPR_KORP: TIBStringField;
    IBSIMJAPR_KV: TIBStringField;
    IBSIMJAPR_RDATA: TDateField;
    IBSIMJAPR_ZDATA: TDateField;
    IBSIMJAGROMAD: TIBStringField;
    IBSIMJAEDDR: TIBStringField;
    IBSIMJAPRIBUV: TIBStringField;
    IBSIMJAVIBUV: TIBStringField;
    IBSIMJADOCVID: TIBStringField;
    IBSIMJADOCSER: TIBStringField;
    IBSIMJADOCNOM: TIBStringField;
    IBSIMJADOCORG: TIBStringField;
    IBSIMJADOCDATA: TDateField;
    IBSIMJACH: TIntegerField;
    cxLocalizer1: TcxLocalizer;
    procedure Button1Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure IBREESTRPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_GORODPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_GROMADPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_OBLPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_ORGDOCPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_RAIONPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_STRANAPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_TIPULPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_ULPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure IBSPR_VIDDOCPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    private
    { Private declarations }
    procedure ClickBarButton(Sender: TObject);

//    function FFile(path:string):string;

    public
    vid_doc:integer;    //вид документа (приход,расход ...)
       { Public declarations }
    Period:TDate;
    procedure AddToolbar(frm:TForm);
    procedure ExportGrid(AGrid: TcxGrid;Filename:string);

  end;

var
  Main: TMain;
  ExB: WORD;
  HiForm:integer;
//  frm:TSprav;

  SPR_GOROD: TFrmSpr;
  SPR_GROMAD: TFrmSpr;
  SPR_OBL: TFrmSpr;
  SPR_ORGDOC: TFrmSpr;
  SPR_RAION: TFrmSpr;
  SPR_STRANA: TFrmSpr;
  SPR_TIPUL: TFrmSpr;
  SPR_UL: TFrmSpr;
  SPR_VIDDOC: TFrmSpr;

  SPRV_GOROD: TFrmSpr;
  SPRV_GROMAD: TFrmSpr;
  SPRV_OBL: TFrmSpr;
  SPRV_ORGDOC: TFrmSpr;
  SPRV_RAION: TFrmSpr;
  SPRV_STRANA: TFrmSpr;
  SPRV_TIPUL: TFrmSpr;
  SPRV_UL: TFrmSpr;
  SPRV_VIDDOC: TFrmSpr;

  FrmRee:TFrmReestr;


 // TB:TToolButton;
implementation

uses Aboutt, DataMod, mytools, Progress, UITypes, Setting, comobj, registry, cxGridExportLink, Zastavka;

{$R *.dfm}

procedure TMain.ExportGrid(AGrid: TcxGrid;Filename:string);
var
  sd:TSaveDialog;
  Excel: Variant;
  Reg: TRegistry;
  path,fdata:string;
  i:integer;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if not Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders' , False) then
      //ShowMessage('Error in opening key')
      path := '.\'
    else
    begin
      path := Reg.Readstring('Personal')+'\'
    end;
  finally
    Reg.Free;
  end;

  sd:=TSaveDialog.Create(application);
  try
    if FileName<>'' then
    begin
      DateTimeToString(fdata,'mmddhhmm',now);
//      DateTimeToString(Filename,'dd mm yyyy',now);
//        DateTimeToString(Filename,'mm yyyy',cxLookupComboBox1.EditValue);
      Filename:=Filename+' ('+fdata+').xls'
    end;
    sd.FileName := path + Filename;
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;

  ExportGridToExcel(filename, AGrid,false,true,true);

  try
    Excel := CreateOLEObject('Excel.Application');
    Excel.Visible := True;

    Excel.WorkBooks.Open(FileName);
    Excel.ActiveWindow.DisplayGridlines := True;

    Excel.columns.NumberFormat:='0,00';

//    for i:=9 to Excel.columns.count-4 do
//    begin
//       Excel.columns[i].NumberFormat:='0,00';
//    end;

//    Excel.columns[9].NumberFormat:='0,00';
//    Excel.columns[10].NumberFormat:='0,00';
//    Excel.columns[11].NumberFormat:='0,00';
//    Excel.columns[12].NumberFormat:='0,00';
//    Excel.columns[13].NumberFormat:='0,00';
//    Excel.columns[14].NumberFormat:='0,00';
//    Excel.columns[15].NumberFormat:='0,00';
//    Excel.columns[16].NumberFormat:='0,00';
//    Excel.columns[17].NumberFormat:='0,00';
//    Excel.columns[18].NumberFormat:='0,00';
//    Excel.columns[19].NumberFormat:='0,00';
//    Excel.columns[20].NumberFormat:='0,00';
//    Excel.columns[21].NumberFormat:='0,00';
//    Excel.columns[22].NumberFormat:='0,00';
//    Excel.columns[23].NumberFormat:='0,00';
//    Excel.columns[24].NumberFormat:='0,00';
//    Excel.columns[25].NumberFormat:='0,00';

    Excel.ActiveWindow.View := 2;
    if Excel.ActiveSheet.VPageBreaks.count <> 0 then
       Excel.ActiveSheet.VPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    if Excel.ActiveSheet.HPageBreaks.count <> 0 then
       Excel.ActiveSheet.HPageBreaks[1].DragOff(Direction:=1, RegionIndex:=1);
    Excel.ActiveWindow.View := 1;

  except
  end;
end;




procedure TMain.ClickBarButton;
var Button:TdxBarButton;
begin
  Button := TdxBarButton(sender);
  if Button.Data<>nil then
  begin
    TForm(Button.Data).show;
  end;
end;

procedure TMain.AddToolbar(frm:TForm);
var
  NewItemLink : TdxBarItemLink;
  NewButton : TdxBarButton;
begin
  NewButton := TdxBarButton(dxBarManager1.AddItem(TdxBarButton));
  NewItemLink := dxBarManager1Bar2.ItemLinks.Add;
  NewItemLink.Item := NewButton;

//  NewButton.ButtonStyle := bsChecked;
  NewButton.OnClick:=ClickBarButton;
  NewButton.Down:=true;
  NewButton.Caption:=frm.Caption;
  NewButton.Data:=frm;

//  if frm.Caption=dxBarButton12.Caption then
//     frm.barbut:=NewButton;



  TAllForm(frm).ABar := dxBarManager1Bar2;



 // TInsert(frm).ABar := dxBarManager1Bar2;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
  self.TileMode:=tbHorizontal;//, tbVertical)
  self.TileMode:=tbVertical;
  self.Tile;

end;


procedure TMain.dxBarButton10Click(Sender: TObject);
begin
 if SPR_ORGDOC=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_ORGDOC);
 SPR_ORGDOC.cxButton1.Visible:=false;
 SPR_ORGDOC.Caption:='Довідник '+dxBarButton10.Caption;
  SPR_ORGDOC.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_ORGDOC;
  Main.IBSPR_ORGDOC.Close;
 Main.IBSPR_ORGDOC.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_ORGDOC);
 end
 else
 begin
 SPR_ORGDOC.Show;
 SPR_ORGDOC.SetFocus;
 end;
end;

procedure TMain.dxBarButton11Click(Sender: TObject);
begin
 if SPR_GROMAD=nil then
 begin

 Application.CreateForm(TFrmSpr,SPR_GROMAD);
 SPR_GROMAD.cxButton1.Visible:=false;
 SPR_GROMAD.Caption:='Довідник '+dxBarButton11.Caption;
  SPR_GROMAD.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_GROMAD;
  Main.IBSPR_GROMAD.Close;
 Main.IBSPR_GROMAD.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_GROMAD);


 end
 else
 begin
 SPR_GROMAD.Show;
 SPR_GROMAD.SetFocus;
 end;
end;

procedure TMain.dxBarButton12Click(Sender: TObject);
var I:integer;
begin
 if FrmRee=nil then
 begin
 Application.CreateForm(TFrmReestr,FrmRee);
 FrmRee.AutoMAX;
      //запись кнопки на нижней панели в переменную

 AddToolBar(FrmRee);

       if FrmRee.ABar<>nil then
      for I := 0 to FrmRee.ABar.ItemLinks.Count - 1 do
        if FrmRee.ABar.ItemLinks[i].Item.Data=FrmRee then
          begin
          //TdxBarButton(ABar.ItemLinks[i].Item).free;
          FrmRee.BarBut:=TdxBarButton(FrmRee.ABar.ItemLinks[i].Item);
          break;
          end;
 end
 else
 begin
 FrmRee.Show;
 FrmRee.SetFocus;
 end;
end;

procedure TMain.dxBarButton19Click(Sender: TObject);
begin
Close;
end;

procedure TMain.dxBarButton28Click(Sender: TObject);
begin
frxReport1.DesignReport;
end;

procedure TMain.dxBarButton32Click(Sender: TObject);
begin
 if SettingFrm=nil then
 begin
 Application.CreateForm(TSettingFrm,SettingFrm);
 AddToolBar(SettingFrm);
 end
 else
 begin
 SettingFrm.Show;
 SettingFrm.SetFocus;
 end;
end;

procedure TMain.dxBarButton34Click(Sender: TObject);
begin
  About.ShowModal;
end;

procedure TMain.dxBarButton3Click(Sender: TObject);
begin
 if SPR_STRANA=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_STRANA);
 SPR_STRANA.cxButton1.Visible:=false;
 SPR_STRANA.Caption:='Довідник '+dxBarButton3.Caption;
 SPR_STRANA.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_STRANA;
 Main.IBSPR_STRANA.Close;
 Main.IBSPR_STRANA.Open;

 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_STRANA);
 end
 else
 begin
 SPR_STRANA.Show;
 SPR_STRANA.SetFocus;
 end;
end;

procedure TMain.dxBarButton42Click(Sender: TObject);
var i: integer;
begin
for i:= 0 to MdiChildCount - 1 do
  MDIChildren[i].Close;
end;

procedure TMain.dxBarButton4Click(Sender: TObject);
begin
 if SPR_OBL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_OBL);
 SPR_OBL.cxButton1.Visible:=false;
 SPR_OBL.Caption:='Довідник '+dxBarButton4.Caption;
  SPR_OBL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_OBL;
  Main.IBSPR_OBL.Close;
 Main.IBSPR_OBL.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_OBL);
 end
 else
 begin
 SPR_OBL.Show;
 SPR_OBL.SetFocus;
 end;
end;

procedure TMain.dxBarButton5Click(Sender: TObject);
begin
 if SPR_RAION=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_RAION);
 SPR_RAION.cxButton1.Visible:=false;
 SPR_RAION.Caption:='Довідник '+dxBarButton5.Caption;
  SPR_RAION.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_RAION;
  Main.IBSPR_RAION.Close;
 Main.IBSPR_RAION.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_RAION);
 end
 else
 begin
 SPR_RAION.Show;
 SPR_RAION.SetFocus;
 end;
end;

procedure TMain.dxBarButton6Click(Sender: TObject);
begin
 if SPR_GOROD=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_GOROD);
 SPR_GOROD.cxButton1.Visible:=false;
 SPR_GOROD.Caption:='Довідник '+dxBarButton6.Caption;
  SPR_GOROD.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_GOROD;
  Main.IBSPR_GOROD.Close;
 Main.IBSPR_GOROD.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_GOROD);
 end
 else
 begin
 SPR_GOROD.Show;
 SPR_GOROD.SetFocus;
 end;
end;

procedure TMain.dxBarButton7Click(Sender: TObject);
begin
 if SPR_TIPUL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_TIPUL);
 SPR_TIPUL.cxButton1.Visible:=false;
 SPR_TIPUL.Caption:='Довідник '+dxBarButton7.Caption;
  SPR_TIPUL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_TIPUL;
  Main.IBSPR_TIPUL.Close;
 Main.IBSPR_TIPUL.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_TIPUL);
 end
 else
 begin
 SPR_TIPUL.Show;
 SPR_TIPUL.SetFocus;
 end;
end;

procedure TMain.dxBarButton8Click(Sender: TObject);
begin
 if SPR_UL=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_UL);
 SPR_UL.cxButton1.Visible:=false;
 SPR_UL.Caption:='Довідник '+dxBarButton8.Caption;
  SPR_UL.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_UL;
  Main.IBSPR_UL.Close;
 Main.IBSPR_UL.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_UL);
 end
 else
 begin
 SPR_UL.Show;
 SPR_UL.SetFocus;
 end;
end;

procedure TMain.dxBarButton9Click(Sender: TObject);
begin
 if SPR_VIDDOC=nil then
 begin
 Application.CreateForm(TFrmSpr,SPR_VIDDOC);
 SPR_VIDDOC.cxButton1.Visible:=false;
 SPR_VIDDOC.Caption:='Довідник '+dxBarButton9.Caption;
  SPR_VIDDOC.cxGrid1DBTableView1.DataController.DataSource:=Main.DSSPR_VIDDOC;
  Main.IBSPR_VIDDOC.Close;
 Main.IBSPR_VIDDOC.Open;
 //SPR_STRANA.AutoMAX;
 AddToolBar(SPR_VIDDOC);
 end
 else
 begin
 SPR_VIDDOC.Show;
 SPR_VIDDOC.SetFocus;
 end;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
var i: integer;
begin
//for i:= 0 to MdiChildCount - 1 do
//  MDIChildren[i].Close;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
//  CanClose:=true;
//  case MessageBox(handle,pchar('Закрити програму? Всі не збережені дані будуть втрачені.'),pchar(''),36) of
//    IDYES:ModalResult:=mrYes;
//    IDNO:CanClose:=false;
//  end;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
if not IBTransaction1.Active then
IBTransaction1.StartTransaction;

IBSPR_GOROD.Open;
IBSPR_GROMAD.Open;
IBSPR_OBL.Open;
IBSPR_ORGDOC.Open;
IBSPR_RAION.Open;
IBSPR_STRANA.Open;
IBSPR_TIPUL.Open;
IBSPR_UL.Open;
IBSPR_VIDDOC.Open;
IBREESTR.Open;
IBUSERS.Open;
IBSIMJA.Open;

cxLocalizer1.Active:=false;
cxLocalizer1.FileName:=GetCurrentDir+'\Ukr.INI';
cxLocalizer1.Active:=true;
cxLocalizer1.Locale:=1058;





end;

procedure TMain.FormShow(Sender: TObject);
begin
Start.Show;
end;

procedure TMain.IBREESTRPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin

ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBREESTR.Cancel;
end;

procedure TMain.IBSPR_GORODPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_GOROD.Cancel;
end;

procedure TMain.IBSPR_GROMADPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_GROMAD.Cancel;
end;

procedure TMain.IBSPR_OBLPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_OBL.Cancel;
end;

procedure TMain.IBSPR_ORGDOCPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_ORGDOC.Cancel;
end;

procedure TMain.IBSPR_RAIONPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_RAION.Cancel;
end;

procedure TMain.IBSPR_STRANAPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_STRANA.Cancel;
end;

procedure TMain.IBSPR_TIPULPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
   ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_TIPUL.Cancel;
end;

procedure TMain.IBSPR_ULPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_UL.Cancel;
end;

procedure TMain.IBSPR_VIDDOCPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
 ShowMessage('На даний момент цей запис редагується іншим користувачем! ');
Action:=daabort;
IBSPR_VIDDOC.Cancel;
end;

//
//Report1.cxLookupComboBox1.EditValue:= IBPERIODDATA.Value;
//Report1.cxGrid1DBTableView1.DataController.DataSource:=Report1.DSQuery1;
//Report1.cxGrid1DBTableView1.DataController.CreateAllItems(True);
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('ID').Visible:=false;
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('UL').Caption:='Вулиця';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('DOM').Caption:='Будинок';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif').Caption:='Тариф';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif_end').Caption:='Нарах. тариф';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('tarif_endpdv').Caption:='Нарах. тариф з ПДВ';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('sumot').Caption:='Вартість';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('sumotpdv').Caption:='Вартість з ПДВ';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('vid').Caption:='Вид абон.';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('mzk').Caption:='МЗК';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('kotel').Caption:='Котельня';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('TARIF_PLAN').Caption:='Плановий тариф';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('TARIF_FACT').Caption:='Фактичний тариф';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('NORMA').Caption:='Норма';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('END_BL').Caption:='Без ліфта';
//Report1.cxGrid1DBTableView1.GetColumnByFieldName('END_L').Caption:='Ліфт';

end.
