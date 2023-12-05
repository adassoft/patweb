object UniServerModule: TUniServerModule
  TempFolder = 'temp\'
  Title = 'Controle Patrimonial Pat Web'
  AjaxTimeout = 60000
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap' +
      '.min.css'
    'https://use.fontawesome.com/releases/v5.8.1/css/all.css'
    '/files/css/customcss.css')
  ServerLimits.SessionRestrict = srOnePerPC
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvSSLv23
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1, sslvTLSv1_2]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 480
  Width = 640
end
