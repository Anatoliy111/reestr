unit mytools;

interface

uses Controls,SysUtils,dbgrids,Types,Forms,DB,
     Messages, Graphics,Classes,StdCtrls,
     TypInfo,bde,dbtables;

const DELTA_YEAR=10;
{$M+}
(* Have you seen the $M+ before???This tells delphi to publish RTTI info for
   enumerated types.  Basically allowing your enumerated types to act as
   strings with GetEnumName *)
type
  TVersionType=(vtCompanyName, vtFileDescription, vtFileVersion, vtInternalName,
                vtLegalCopyright,vtLegalTradeMark, vtOriginalFileName,
                vtProductName, vtProductVersion, vtComments);
{$M-}
  TrpVersionInfo = class(TComponent)
  private
    FVersionInfo : Array [0 .. ord(high(TVersionType))] of string;
  protected
    function GetCompanyName: string;
    function GetFileDescription: string;
    function GetFileVersion: string;
    function GetInternalName: string;
    function GetLegalCopyright: string;
    function GetLegalTradeMark: string;
    function GetOriginalFileName: string;
    function GetProductName: string;
    function GetProductVersion: string;
    function GetComments: string;
    function GetVersionInfo(VersionType: TVersionType): string; virtual;
    procedure SetVersionInfo; virtual;
  public
    constructor Create(AOwner: TComponent); override;
  published
(* Label1.Caption := VersionInfo1.FileVersion;  Simple as that.
   NOTE:  ALL the properties are READONLY so you can not view them with the
   Object Inspector *)
    property CompanyName: string read GetCompanyName;
    property FileDescription: string read GetFileDescription;
    property FileVersion: string read GetFileVersion;
    property InternalName: string read GetInternalName;
    property LegalCopyright: string read GetLegalCopyright;
    property LegalTradeMark: string read GetLegalTradeMark;
    property OriginalFileName: string read GetOriginalFileName;
    property ProductName: string read GetProductName;
    property ProductVersion: string read GetProductVersion;
    property Comments: string read GetComments;
  end;


function ckDate(const s:string;curr:TDate=0):string;
procedure SetRus;
procedure SetEng;
function str2int(s:string):integer;
function str2float(s:string):double;
function int2str(i:integer):string;
function LastDayMon(date:TDate): TDate;
function FirstDayMon(date:TDate): TDate;
function YearMon2Date(yearmon:integer): TDate;
function Date2YearMon(dt:TDate): integer;
function DaysPerMonth(Date: Integer): Integer;overload;
function DaysPerMonth(AYear, AMonth: Integer): Integer;overload;
function isSunday(dt,day:integer):Boolean;overload;
function isSunday(date:TDate):boolean;overload;
function numtostr(source:string):string;overload;
function numtostr2(source:string):string;
function numtostr(numb:double):string;overload;
function BoundCurrCell(grid:TDBGrid):TRect;
function dos2win(s:string):string;
function win2dos(s:string):string;
function strFromDelimiter(s:string;delimiter:char;num:integer=1):string;
function iif(f:boolean;val1,val2:variant):variant;
procedure StartWait;
procedure StopWait(cur:TCursor=crDefault);
function Date2Str(dt:TDate;fmt:String='yyyyMMdd'):string;
function DateTime2Str(dt:TDate;fmt:String='yyyymmdd'):string;
procedure ExportFile(dg:TDBGrid);overload;
procedure ExportFile(dt:TDataSet);overload;
function getVersionInfo(tag:string):string;
procedure setYearBox(box:TComboBox;curr:TDate=0);
function roundMoney(s:currency;cent:integer):currency;
function roundMy(s:currency;cent:integer):currency;
function var2int(v:variant):integer;
function var2currency(v:variant):currency;
procedure ReindexTable(Table: TTable);
function date_slovo(date:TDate):string;
function mon_slovoSt(mon:integer):string;
function mon_slovoDt(date:TDate):string;

implementation

uses DateUtils,Windows,Dialogs,activex,comobj,variants,math;



function dos2win(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);
   if (l>=128) and (l<=192)then l:=l+64 else
   if (l>=224) and (l<240) then l:=l+16 else
   if l=241 then l:=184 else
   if l=240 then l:=168;
   dd:=chr(l);
   c:=c+dd;
 end;
 Result:=c;
end;

function win2dos(s:string):string;
var c:STRING;
    I:INTEGeR;
    l:byte;
    dd:char;
begin
 i:=1;
 c:='';
 while i< length(s)+1 do
 begin
   l:=ord(s[i]);
   inc(i);
   if (l>=192) and (l<240)then l:=l-64 else
   if (l>=240) and (l<256) then l:=l-16 else
   if l=184 then l:=241 else
   if l=168 then l:=240;
   dd:=chr(l);
   c:=c+dd;
 end;
 result:=c;
end;

{
const win='≤≥ѓњ™ЇјЅ¬√ƒ≈∆«»… ЋћЌќѕ–—“”‘’÷„ЎўЏџ№Ёёяабвгдежзийклмнопрстуфхцчшщъыьэю€|++++++|++++++++-++++++++-+++++++++++++';
const dos='IiфхтуАБВГДЕЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ†°Ґ£§•¶І®©™Ђђ≠Ѓѓабвгдежзийклмноп≥іµґЈЄєЇїљЊњјЅ¬√ƒ≈∆«»… ЋћЌќѕ–—“”‘’÷„ЎўЏ';

function dos2win(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,dos);
    if i<>0 then s[j]:=win[i];
  end;
  result :=s;
end;

function win2dos(s:string):string;
var
  i,j:integer;
  c:char;
begin
  for j:=1 to length(s) do
  begin
    c:=s[j];
    i:=pos(c,win);
    if i<>0 then s[j]:=dos[i];
  end;
  result :=s;
end;
}


function ckDate(const s:string;curr:TDate):string;
var r:string;
    i,cnt:integer;
begin
  if curr=0 then curr:=now;
  r:=trim(s);
  if length(r)=0 then
  begin
    result:='';
    exit;
  end;

  cnt:=0;
  for i:=1 to length(r) do
  begin
    case r[i] of
      '0'..'9':;
      else
      begin
        inc(cnt);
        r[i]:='.';
        if cnt=3 then setlength(r,i);
      end;
    end;
  end;

  if cnt=0 then r:=r+'.';
  if (cnt<=1) and (r[length(r)]='.') then // no month
    r:=r+inttostr(MonthOf(curr))+'.';
  if (cnt<=2) and (r[length(r)]='.') then // no year
    r:=r+inttostr(YearOf(curr));

  result:=r;
end;

procedure SetRus;
begin
  LoadKeyboardLayout('00000419', KLF_ACTIVATE); //rus
end;

procedure SetEng;
begin
//  LoadKeyboardLayout('00000422', KLF_ACTIVATE); //ukr
  LoadKeyboardLayout('00000409', KLF_ACTIVATE); //eng
end;

function str2int(s:string):integer;
var i,c:integer;
begin
  val(s,i,c);
  Result:=i;
end;


function int2str(i:integer):string;
begin
  result:=inttostr(i);
end;


function LastDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  inc(Month);
  if Month=13 then
  begin
    Month:=1;
    inc(year);
  end;
  Result := EncodeDate(year,month,1)-1;
end;

function FirstDayMon(date:TDate): TDate;
var
  Year, Month, Day: Word;
begin
  DecodeDate(date, Year, Month, Day);
  Result := EncodeDate(year,month,1);
end;

function YearMon2Date(yearmon:integer): TDate;
begin
  Result := EncodeDate(yearmon div 100 ,yearmon mod 100,1);
end;

function Date2YearMon(dt:TDate):integer;
var
  Year, Month, Day: Word;
begin
  DecodeDate(dt, Year, Month, Day);
  Result := Year*100+Month;
end;

function DaysPerMonth(Date: Integer): Integer;
begin
  Result:=DaysPerMonth(Date div 100,Date mod 100);
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer =
    (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap-year Feb isspecial }
end;

function isSunday(dt,day:integer):Boolean;
begin
  Result:=isSunday(EncodeDate(dt div 100,dt mod 100,Day));
end;

function isSunday(date:TDate):boolean;
var d: Word;
begin
  d:= DayOfWeek(date);
  if (d=1) or (d=7) then Result := true
  else Result:=false;
end;

function str2float(s:string):double;
begin
  result:=0;
  try
    result:=strtofloat(s);
  except;
  end;
end;



function numtostr(numb:double):string;
begin
  result := numtostr(trim(format('%16.2f',[numb])));
end;

function numtostr(source:string):string;
const
  nul:string='нуль';
  kop:array[1..3] of string=('коп.','коп.','коп.');
  dengi:array [1..3] of string=('грн.','грн.','грн.');
  ed:array [1..9] of string=('один','два','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  ed1:array [1..9] of string=('одна','двi','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  cat:array [1..10] of string=('дес€ть','одиннадц€ть','дванадц€ть','тринадц€ть',
  'чотирнадц€ть','п`€тнадц€ть','шiстнадц€ть','сiмнадц€ть','вiсiмнадц€ть',
  'дев`€тнадц€ть');
  dec:array [1..8] of string=('двадц€ть','тридц€ть','сорок','п`€тдес€т','шiстдес€т',
  'сiмдес€т','вiсiмдес€т','дев`€носто');
  sto:array [1..9] of string=('сто','двiстi','триста','чотириста','п`€тсот','шiстсот','сiмсот',
  'вiсiмсот','дев`€тсот');
  tis:array [1..4] of string=('тис€ч','мiльйонiв','мiль€рдiв','трильонiв');
  tis1:array [1..4] of string=('тис€ча','мiльйон','мiль€рд','трильон');
  tis2:array [1..4] of string=('тис€чi','мiльйони','мiль€рди','трильони');
var point,l,i:integer;
  gr,ost:integer;
  last,c:integer;
  ff,fl:integer;
  dd:integer;
  kp:string;

begin
  kp := '';
  point:=pos(',',source);
  if point>0 then
  begin
    kp:= copy(source,point+1,2);
    source:=copy(source,1,point-1);
  end;

  result:='';
  l := length(source);
  if (l=0) then exit;

  gr := l div 3;
  ost := l mod 3;
  if ost=0 then gr:=gr-1;  // в gr - количество групп по три 12.345.234 gr=3

  last := 0;
  fl:=0;
  ff:=0;
  c:=0;
////////  char c;

  for i:=1 to length(source) do //(char *p=source;*p;p++)
  begin
    c := ord(source[i])-48;
    case ost of
      0:       // сотни
        begin
          if (c<>0) then
          begin
            result:=result+sto[c]+' ';
            fl:=1;
          end;
          ost:=2;
        end;
      2:       // дес€тки
        begin
          if (c<>0) then
          begin
            if (c<>1) then
              result:=result + dec[c-1]+' ';
            fl:=1;
          end;
          ost:=1;
        end;
      1:        // единицы
        begin
          if (last=1) then
            result:=result+cat[c+1]+' '
          else
          begin
            if ((c)<>0) then
            begin
              if (gr<=1) and (c<3) then
              begin
                result:=result+ed1[c]+ ' ';
              end
              else
              begin
                result:=result+ed[c]+ ' ';
              end;
              fl:=1;
            end;
          end;
          ost:=0;
          gr:=gr-1;
          if (gr<0) then break;
          if (length(result)<>0) then
          begin
            ff:=0;
            if (c=1) and (last<>1) then begin ff:=1;result := result+tis1[gr+1];end;
            if (c>1) and (c<5) and (last<>1) then begin ff:=1;result:=result+tis2[gr+1];end;
            if (c>=5) or  (last=1) or ((c=0) and (fl>0)) then begin ff:=1;result:=result+tis[gr+1];end;
            if (ff>0) then result:=result+' ';
          end;
          fl:=0;
        end;
    end;
    if (gr<0) then break;
    last := c;
  end;

  if length(result)=0 then result:=nul+' ';
  if (c=1) and (last<>1) then result := result+dengi[1];
  if (c>1) and (c<5) and (last<>1) then result:=result+dengi[2];
  if (c>=5) or  (last=1) or (c=0) then result:=result+dengi[3];
  if (ff>0) then result:=result+' ';

  if (point>0) then
  begin
    result := result + ' ' + kp+ ' ';
    i := str2int(kp);
    dd := (i div 10)*10;
    ost := i mod 10;
    if (dd<>10) and (ost=1) then result := result + kop[1];
    if (dd<>10) and ((ost>1) and  (ost<5)) then result := result + kop[2];
    if (dd=10) or (ost>=5) or (ost=0) then result := result + kop[3];
    //result := result + '.';
  end;
result[1]:=UpCase(result[1]);
end;




function numtostr2(source:string):string;
const
  nul:string='нуль';
  ed:array [1..9] of string=('один','два','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  ed1:array [1..9] of string=('одна','двi','три','чотири','п`€ть','шiсть','сiм','вiсiм','дев`€ть');
  cat:array [1..10] of string=('дес€ть','одиннадц€ть','дванадц€ть','тринадц€ть',
  'чотирнадц€ть','п`€тнадц€ть','шiстнадц€ть','сiмнадц€ть','вiсiмнадц€ть',
  'дев`€тнадц€ть');
  dec:array [1..8] of string=('двадц€ть','тридц€ть','сорок','п`€тдес€т','шiстдес€т',
  'сiмдес€т','вiсiмдес€т','дев`€носто');
  sto:array [1..9] of string=('сто','двiстi','триста','чотириста','п`€тсот','шiстсот','сiмсот',
  'вiсiмсот','дев`€тсот');
  tis:array [1..4] of string=('тис€ч','мiльйонiв','мiль€рдiв','трильонiв');
  tis1:array [1..4] of string=('тис€ча','мiльйон','мiль€рд','трильон');
  tis2:array [1..4] of string=('тис€чi','мiльйони','мiль€рди','трильони');



var point,l,i:integer;
  gr,ost:integer;
  last,c:integer;
  ff,fl:integer;
  dd:integer;
  pp,kp,dr,dr_num:string;

begin
  kp := '';
  point:=pos(',',source);
  if point>0 then
  begin
    kp:= copy(source,point+1,2);
    dr_num:=copy(source,point+1,length(source)-point);
    dr:=numtostr2(dr_num);
    source:=copy(source,1,point-1);
  end;

  result:='';
  l := length(source);
  if (l=0) then exit;

  gr := l div 3;
  ost := l mod 3;
  if ost=0 then gr:=gr-1;  // в gr - количество групп по три 12.345.234 gr=3

  last := 0;
  fl:=0;
  ff:=0;
  c:=0;
////////  char c;

  for i:=1 to length(source) do //(char *p=source;*p;p++)
  begin
    c := ord(source[i])-48;
    case ost of
      0:       // сотни
        begin
          if (c<>0) then
          begin
            result:=result+sto[c]+' ';
            fl:=1;
          end;
          ost:=2;
        end;
      2:       // дес€тки
        begin
          if (c<>0) then
          begin
            if (c<>1) then
              result:=result + dec[c-1]+' ';
            fl:=1;
          end;
          ost:=1;
        end;
      1:        // единицы
        begin
          if (last=1) then
            result:=result+cat[c+1]+' '
          else
          begin
            if ((c)<>0) then
            begin
              if (gr<=1) and (c<3) then
              begin
                result:=result+ed1[c]+ ' ';
              end
              else
              begin
                result:=result+ed[c]+ ' ';
              end;
              fl:=1;
            end;
          end;
          ost:=0;
          gr:=gr-1;
          if (gr<0) then break;
          if (length(result)<>0) then
          begin
            ff:=0;
            if (c=1) and (last<>1) then begin ff:=1;result := result+tis1[gr+1];end;
            if (c>1) and (c<5) and (last<>1) then begin ff:=1;result:=result+tis2[gr+1];end;
            if (c>=5) or  (last=1) or ((c=0) and (fl>0)) then begin ff:=1;result:=result+tis[gr+1];end;
            if (ff>0) then result:=result+' ';
          end;
          fl:=0;
        end;
    end;
    if (gr<0) then break;
    last := c;

  end;
  if source='0' then result:=nul+' ';
   if dr<>'' then
  begin
    if (source[length(source)]='1') and (source[length(source)-1]<>'1') then
        result:=result+'ц≥ла '+dr
   else result:=result+'ц≥лих '+dr;

    if (dr_num[length(dr_num)]='1') and (dr_num[length(dr_num)-1]<>'1') then
       case length(dr_num) of
        1: result:=result+'дес€та';
        2: result:=result+'сота';
        3: result:=result+'тис€чна';
       end
    else
       case length(dr_num) of
        1: result:=result+'дес€тих';
        2: result:=result+'сотих';
        3: result:=result+'тис€чних';
       end
 end;
pp:=result[1];
result[1]:=AnsiUpperCase(pp)[1];
end;








type
  TCrackClass = class(TDBGrid);


function BoundCurrCell(grid:TDBGrid):TRect;
begin

  result.Left:=0;
  result.Top:=0;
  result.Right:=0;
  result.Bottom:=0;

  if (Grid.DataSource=nil) or (grid.DataSource.DataSet=nil) or
     (grid.DataSource.DataSet.Active=false) then exit;

  result:=TCrackClass(Grid).CellRect(TCrackClass(Grid).col,TCrackClass(Grid).row);

  result.TopLeft:=grid.ClientToScreen(result.TopLeft);
  result.BottomRight:=grid.ClientToScreen(result.BottomRight);


end;

function strFromDelimiter(s:string;delimiter:char;num:integer):string;
var i:integer;
  n:integer;
begin
  result:='';
  n:=1;
  for i:=1 to length(s) do
  begin
    if s[i]=delimiter then inc(n)
    else
      if n=num then result:=result+s[i];

    if n>num then break;
  end;
end;


function iif(f:boolean;val1,val2:variant):variant;
begin
  if f then Result:=val1
  else Result:=val2;
end;

procedure StartWait;
begin
  Screen.Cursor := crHourGlass;
end;

procedure StopWait(cur:TCursor=crDefault);
begin
  Screen.Cursor := cur;
end;

function DateTime2Str(dt:TDate;fmt:string):string;
begin
  DateTimeToString(Result,fmt,dt);
end;

function Date2Str(dt:TDate;fmt:string):string;
{begin
  DateTimeToString(Result,fmt,dt);
end;}
var tt:TSystemTime;
  ret:array[1..255] of char;
  Year, Month, Day, Hour, Min, Sec, MSec: Word;
  i:integer;
begin
  i:=pos('m',fmt);
  while i>0 do
  begin
    fmt[i]:='M';
    i:=pos('m',fmt);
  end;


  DecodeDate(dt, Year, Month, Day);

  tt.wYear:=year;
  tt.wMonth:=month;
  tt.wDay:=day;

  GetDateFormat(LOCALE_SYSTEM_DEFAULT,
                LOCALE_USE_CP_ACP,
                @tt,
                pchar(fmt),
                @ret,
                255);

  result:=pchar(@ret);
end;



function date_slovo(date:TDate):string;
var s,s1:string;
begin

s:=date2str(date,'ddMMyyyy');
s1:=inttostr(strtoint(copy(s,1,2)));

case strtoint(copy(s,3,2)) of
01:s1:=s1+'            с≥чн€     ';
02:s1:=s1+'            лютого    ';
03:s1:=s1+'            березн€   ';
04:s1:=s1+'            кв≥тн€    ';
05:s1:=s1+'            травн€    ';
06:s1:=s1+'            червн€    ';
07:s1:=s1+'            липн€     ';
08:s1:=s1+'            серпн€    ';
09:s1:=s1+'            вересн€   ';
10:s1:=s1+'            жовтн€    ';
11:s1:=s1+'            листопада ';
12:s1:=s1+'            грудн€    ';

end;

result:=s1+'                         '+copy(s,7,2);

end;









procedure ExportFile(dg:TDBGrid);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  dt:TDataSet;
  fld:TField;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;


  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('Ќе могу создать файл ', mtError, [mbCancel], 0);
    exit;
  end;

}
  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
  dt:=dg.DataSource.DataSet;

//  MainForm.Progress.Min:=1;
//  MainForm.Progress.Max:=dt.RecordCount;
//  MainForm.Progress.Position:=1;

//  MainForm.StatusBar.Visible:=false;
//  MainForm.PanelProgress.Visible:=true;
  Application.ProcessMessages;



  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');
  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
        Sheet.cells[row,col].value:=dg.Columns[i].Field.DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dg.Columns.Count-1 do
      begin
//        sheet.cells[row,col].color:=dg.Columns[i].Color;

        fld:=dg.Columns[i].Field;
        if (VarType(fld.Value)=varOleStr) or (VarType(fld.Value)=varString)
        then sheet.cells[row,col].value:=String(fld.Value)
        else if (VarType(fld.Value) in [varSmallint,varInteger,varLongWord,varShortInt]) then sheet.cells[row,col].value:=fld.asInteger
        else if (VarType(fld.Value) in [varSingle,varDouble,varCurrency]) then sheet.cells[row,col].value:=fld.asFloat
        else sheet.cells[row,col].value:=fld.Value;
//        sheet.Cells[row,col].NumberFormat:='0.00';

        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.Progress.Position:=dt.RecNo;
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;



//    MainForm.Progress.Min:=1;
//    MainForm.Progress.Max:=26;
//    MainForm.Progress.Position:=1;

//    MainForm.StatusBar.Visible:=true;
//    MainForm.PanelProgress.Visible:=false;

    StopWait;

  end;
end;


procedure ExportFile(dt:TDataSet);
var excel,book,sheet:oleVariant;
  filename:string;
  i:integer;
  row,col:integer;
  sd:TSaveDialog;
//  NeedToUninitialize:boolean;

begin

{  sd:=TSaveDialog.Create(application);
  try
    sd.FileName := 'Table.xls';
    sd.Filter := 'Excel files (*.xls)|*.XLS';
    if not sd.Execute then exit;
    filename:=sd.FileName;
  finally
    sd.Free;
  end;
//  NeedToUninitialize:boolean;

  DeleteFile(PAnsiChar(filename));
  if FileExists(filename) then
  begin
    MessageDlg('Ќе могу создать файл ', mtError, [mbCancel], 0);
    exit;
  end;
 }

  Succeeded(CoInitialize(nil));
//  NeedToUninitialize := Succeeded(CoInitialize(nil));

  StartWait;
//  MainForm.StartProgress(1,dt.RecordCount);
  Application.ProcessMessages;


  dt.DisableControls;
  excel := CreateOleObject('Excel.Application');

  try
    book := excel.Workbooks.Add;
    sheet := book.Worksheets[1];

    row:=1;

    dt.First;

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        Sheet.cells[row,col].value:=dt.Fields[i].DisplayLabel;// .FullName;
        inc(col);
      end;
      inc(row);

    while not dt.eof do
    begin

      col:=1;
      for i:=0 to dt.Fields.Count-1 do
      begin
        if (VarType(dt.Fields[i].Value)=varOleStr) or (VarType(dt.Fields[i].Value)=varString)
        then sheet.cells[row,col].value:=String(dt.Fields[i].Value)
        else sheet.cells[row,col].value:=dt.Fields[i].Value;
        sheet.cells[row,col].NumberFormat := 'General';
        inc(col);
      end;

      dt.next;
      inc(row);

//      MainForm.UpdateProgress(dt.RecNo);
//      Application.ProcessMessages;
    end;

  finally
    dt.enableControls;
//    try book.saveas(filename,$0000002b,'','',false,true,0,3,false); except end;
//    excel.quit;
    excel.visible:=true;


//    MainForm.StopProgress;

    StopWait;
  end;
end;

function getVersionInfo(tag:string):string;
var
  Stream: TCustomMemoryStream;
  Size:Smallint	;
  s:array[1..2048] of char;
  s1:array[1..2048] of char;
//  st:string;
  i,j:integer;
//  p:PChar;
  res:string;
  n:integer;

function memPos(m:array of char;s:string):integer;
function cpy(m:array of char;st,len:integer):string;
var i:integer;
begin
  result:='';
  for i:=st to st+len-1 do
    result:=result+m[i];
end;

var i:integer;
ss:string;
begin
  result:=-1;
  for i:=low(m) to high(m)-length(s) do
  begin
  ss:=cpy(m,i,length(s));
  if cpy(m,i,length(s))=s then
  begin
    result:=i;
    break;
  end;
  end;
end;



begin
  res:='';
  Stream := TResourceStream.CreateFromId(HInstance, 1, RT_VERSION);
  try
    stream.Read(size, 2);
    stream.Read(s,size-2);
  finally
    Stream.Free;
  end;

  j:=0;
  for i:=(156 div 2)  to (size div 2)  do
  begin
    inc(j);
    s1[j]:=s[i*2+1];
  end;
  s1[j+1]:=#0;
  i:=mempos(s1,tag);
  if i<>-1 then
  begin
    j:=i+3+length('CompanyName');
    res:='';
    n:=0;
    while s1[j]<>#0 do
    begin
      if (s1[j]='.') then
        if n=3 then break
        else inc(n);

      res:=res+s1[j];
      inc(j);
    end;
  end;

  result:=res;
end;


constructor TrpVersionInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  SetVersionInfo;
end;

function TrpVersionInfo.GetCompanyName: string;
begin
  result := GeTVersionInfo(vtCompanyName);
end;

function TrpVersionInfo.GetFileDescription: string;
begin
  result := GeTVersionInfo(vtFileDescription);
end;

function TrpVersionInfo.GetFileVersion: string;
begin
  result := GeTVersionInfo(vtFileVersion);
end;

function TrpVersionInfo.GetInternalName: string;
begin
  result := GeTVersionInfo(vtInternalName);
end;

function TrpVersionInfo.GetLegalCopyright: string;
begin
  result := GeTVersionInfo(vtLegalCopyright);
end;

function TrpVersionInfo.GetLegalTradeMark: string;
begin
  result := GeTVersionInfo(vtLegalTradeMark);
end;

function TrpVersionInfo.GetOriginalFileName: string;
begin
  result := GeTVersionInfo(vtOriginalFileName);
end;

function TrpVersionInfo.GetProductName: string;
begin
  result := GeTVersionInfo(vtProductName);
end;

function TrpVersionInfo.GetProductVersion: string;
begin
  result := GeTVersionInfo(vtProductVersion);
end;

function TrpVersionInfo.GetComments: string;
begin
  result := GeTVersionInfo(vtComments);
end;

function TrpVersionInfo.GeTVersionInfo(VersionType: TVersionType): string;
begin
  result := FVersionInfo[ord(VersionType)];
end;

procedure TrpVersionInfo.SeTVersionInfo;
var
  sAppName,sVersionType : string;
  iAppSize, iLenOfValue, i: integer;
  pcBuf,pcValue: PChar;
begin
  sAppName := Application.ExeName;
  iAppSize:= GetFileVersionInfoSize(PChar(sAppName),DWORD(iAppSize));
  if iAppSize > 0 then
  begin
    pcBuf := AllocMem(iAppSize);
    GetFileVersionInfo(PChar(sAppName),0,iAppSize,pcBuf);
    for i := 0 to Ord(High(TVersionType)) do
    begin
      sVersionType := GetEnumName(TypeInfo(TVersionType),i);
      sVersionType := Copy(sVersionType,3,length(sVersionType));
      if VerQueryValue(pcBuf,PChar('StringFileInfo\040904E4\'+
         sVersionType), Pointer(pcValue),DWORD(iLenOfValue))
         then
        FVersionInfo[i] := pcValue;
    end;
    FreeMem(pcBuf,iAppSize);
  end;
end;

procedure setYearBox(box:TComboBox;curr:TDate);
var i:integer;
begin
  if curr=0 then curr:=now;
  Box.Items.Clear;
  for i:=yearof(curr)-DELTA_YEAR to yearof(curr) do
    Box.Items.Add(inttostr(i));
  Box.ItemIndex:=Box.Items.Count-1;

end;


function roundMoney(s:currency;cent:integer):currency;
var kop:integer;
  ost:integer;
  part:integer;
begin
  if cent>1 then
  begin
    kop := floor(s*100);
    ost := kop mod cent;
    part := cent div 2 + cent mod 2;
    if ost < part then kop := kop-ost
    else kop := kop + (cent-ost);
    result:=kop/100;
  end
  else
    result:=s;
end;

function roundMy(s:currency;cent:integer):currency;
var kop:integer;
  ost:integer;
  part:integer;
begin
  if cent>1 then
  begin
    kop := floor(s*100);
    ost := kop mod cent;
    part := cent div 2 + cent mod 2;
    if ost < part then kop := kop-ost
    else kop := kop + (cent-ost);
    result:=kop/100;
  end
  else
    result:=s;
end;

function var2int(v:variant):integer;
begin
  result:=0;
  if vartype(v) in [varSmallint,varInteger] then
    result:=v;
end;

function var2currency(v:variant):currency;
begin
  result:=0;
  if vartype(v) in [varSmallint,varInteger,varSingle,varDouble,varCurrency] then
    result:=v;
end;

procedure ReindexTable(Table: TTable);
var
  WasActive: Boolean;
  WasExclusive: Boolean;
begin
  with Table do begin
    WasActive := Active;
    WasExclusive := Exclusive;
    DisableControls;
    try
      if not (WasActive and WasExclusive) then Close;
      try
        Exclusive := True;
        Open;
        Check(dbiRegenIndexes(Handle));
      finally
        if not (WasActive and WasExclusive) then begin
          Close;
          Exclusive := WasExclusive;
          Active := WasActive;
        end;
      end;
    finally
      EnableControls;
    end;
  end;
end;

function mon_slovoSt(mon:integer):string;
var s,s1:string;
begin



case mon of
01:s1:='с≥чень';
02:s1:='лютий';
03:s1:='березень';
04:s1:='кв≥тень';
05:s1:='травень';
06:s1:='червень';
07:s1:='липень';
08:s1:='серпень';
09:s1:='вересень';
10:s1:='жовтень';
11:s1:='листопад';
12:s1:='грудень';

end;

result:=s1;

end;

function mon_slovoDt(date:TDate):string;
var s,s1:string;
begin

s:=date2str(date,'ddMMyyyy');
s1:=inttostr(strtoint(copy(s,1,2)));

case strtoint(copy(s,3,2)) of
01:s1:='с≥чень';
02:s1:='лютий';
03:s1:='березень';
04:s1:='кв≥тень';
05:s1:='травень';
06:s1:='червень';
07:s1:='липень';
08:s1:='серпень';
09:s1:='вересень';
10:s1:='жовтень';
11:s1:='листопад';
12:s1:='грудень';

end;

result:=s1+' '+copy(s,5,4);

end;


end.
