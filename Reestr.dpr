program Reestr;

uses
  Forms,
  MainForm in 'MainForm.pas' {Main},
  DataMod in 'DataMod.pas' {DataM: TDataModule},
  Zastavka in 'Zastavka.pas' {Start},
  Aboutt in 'Aboutt.pas' {About},
  MyLibrary in 'MyLibrary.pas',
  mytools in 'mytools.pas',
  Progress in 'Progress.pas' {Prores},
  AllFrm in 'AllFrm.pas' {AllForm},
  AllMdiFrm in 'AllMdiFrm.pas' {AllMdiForm},
  AllInEdFrm in 'AllInEdFrm.pas' {AllInEdForm},
  EditFrm in 'EditFrm.pas' {EditForm},
  ree in 'ree.pas' {FrmReestr},
  Spr in 'Spr.pas' {FrmSpr},
  EditRee in 'EditRee.pas' {EditReeFrm},
  Setting in 'Setting.pas' {SettingFrm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Start := TStart.Create(Application);
  Application.Title := 'Розрахунок тарифів';
  Application.CreateForm(TDataM, DataM);
  //Application.CreateForm(TFrmReestr, FrmReestr);
 // Application.CreateForm(TFrmSpr, FrmSpr);
  application.ProcessMessages;
  Start.Show;
//  for i:=1 to 1000000 do
//  Start.Gauge1.Progress:= i div 10000;
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TAbout, About);
  Application.CreateForm(TProres, Prores);
  Start.Free;
  Application.Run;
end.
