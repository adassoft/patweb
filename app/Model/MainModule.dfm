object UniMainModule: TUniMainModule
  Theme = 'crisp'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ServerMessages.LoadingMessage = 'Carregando...'
  Height = 480
  Width = 640
  object RESTDWIdDatabase: TRESTDWIdDatabase
    Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    ContentType = 'application/x-www-form-urlencoded'
    Charset = 'utf8'
    ContentEncoding = 'gzip, identity'
    Active = True
    Compression = True
    CriptOptions.Use = False
    CriptOptions.Key = 'RDWBASEKEY256'
    MyIP = '127.0.0.1'
    IgnoreEchoPooler = False
    AuthenticationOptions.AuthorizationOption = rdwAOBasic
    AuthenticationOptions.OptionParams.AuthDialog = True
    AuthenticationOptions.OptionParams.CustomDialogAuthMessage = 'Protected Space...'
    AuthenticationOptions.OptionParams.Custom404TitleMessage = '(404) The address you are looking for does not exist'
    AuthenticationOptions.OptionParams.Custom404BodyMessage = '404'
    AuthenticationOptions.OptionParams.Custom404FooterMessage = 'Take me back to <a href="./">Home REST Dataware'
    AuthenticationOptions.OptionParams.Username = 'patwebserver'
    AuthenticationOptions.OptionParams.Password = 'patwebserver'
    Proxy = False
    ProxyOptions.Port = 8888
    PoolerService = '127.0.0.1'
    PoolerPort = 8082
    PoolerName = 'TdmDados.RESTDWPoolerDB'
    StateConnection.AutoCheck = False
    StateConnection.InTime = 1000
    RequestTimeOut = 10000
    ConnectTimeOut = 3000
    EncodedStrings = True
    Encoding = esUtf8
    StrsTrim = False
    StrsEmpty2Null = False
    StrsTrim2Len = True
    PoolerNotFoundMessage = 'Pooler not found'
    HandleRedirects = False
    RedirectMaximum = 0
    ParamCreate = True
    FailOver = False
    FailOverConnections = <>
    FailOverReplaceDefaults = False
    ClientConnectionDefs.Active = False
    UseSSL = False
    SSLVersions = []
    UserAgent = 
      'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, l' +
      'ike Gecko) Chrome/41.0.2227.0 Safari/537.36'
    SSLMode = sslmUnassigned
    Left = 136
    Top = 168
  end
end
