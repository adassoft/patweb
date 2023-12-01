object dmDados: TdmDados
  Encoding = esUtf8
  QueuedRequest = False
  Height = 372
  Width = 404
  object FireDacCon: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\adail\Documents\GitHub\patweb\servidor\dados\P' +
        'ATWEB.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=127.0.0.1'
      'DriverID=FB')
    Left = 32
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 128
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 248
    Top = 24
  end
  object RESTDWPoolerDB: TRESTDWPoolerDB
    RESTDriver = RESTDWFireDACDriver
    Compression = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    Active = True
    PoolerOffMessage = 'RESTPooler not active.'
    ParamCreate = True
    Left = 56
    Top = 112
  end
  object RESTDWFireDACDriver: TRESTDWFireDACDriver
    Connection = FireDacCon
    ConectionType = dbtFirebird
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = False
    Compression = False
    EncodeStringsJSON = False
    Encoding = esASCII
    ParamCreate = True
    CommitRecords = 100
    Left = 56
    Top = 208
  end
end
