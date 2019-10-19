unit DataMod;

interface

uses
  SysUtils, Classes, DB, IBDatabase, inifiles, dialogs,forms, IBX.IBDatabaseInfo;

type
  TDataM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBDatabaseInfo1: TIBDatabaseInfo;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    iniFile:TIniFile;
    dirSoft,dirKvart:string;
  end;

var
  DataM: TDataM;

implementation

{$R *.dfm}

procedure TDataM.DataModuleCreate(Sender: TObject);
var s,ss:string;
begin
  try
  IBDatabase1.Connected:=false;
  iniFile:=TIniFile.Create(extractfilepath(paramstr(0))+'Reestr.ini');
  s:=iniFile.ReadString('Data','Database1',extractfilepath(paramstr(0))+'REESTR.GDB');
  IBDatabase1.DatabaseName:=s;
//    messagedlg(s,mtInformation,[mbOK],0);
  IBDatabase1.Open;
//  IBDatabase2.Connected:=false;


//  IBDatabase2.DatabaseName:=ss;
//    messagedlg(ss,mtInformation,[mbOK],0);
//  IBDatabase2.Open;



  except
    messagedlg('Помилка підключення до бази даних '+s,mtError,[mbCancel],0);
    Application.Terminate;
  end;

end;

end.
