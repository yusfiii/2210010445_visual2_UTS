object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 616
  Top = 151
  Height = 225
  Width = 348
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    Properties.Strings = (
      'RawStringEncoding=DB_CP')
    Connected = True
    DisableSavepoints = False
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\1UNISKA PRIDE\SEMESTER 4\Visual 2\libmysql.dll'
    Left = 24
    Top = 24
  end
  object Zsatuan: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'Select * from satuan')
    Params = <>
    Left = 112
    Top = 32
  end
  object Datasatuan: TDataSource
    DataSet = Zsatuan
    Left = 112
    Top = 96
  end
end
