object DataM: TDataM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 341
  Width = 645
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'D:\WORK\KOMUN\reestr\REESTR.GDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    AllowStreamedConnected = False
    Left = 40
    Top = 24
  end
  object IBDatabaseInfo1: TIBDatabaseInfo
    Database = IBDatabase1
    Left = 40
    Top = 80
  end
end
