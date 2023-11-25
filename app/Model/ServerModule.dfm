object UniServerModule: TUniServerModule
  TempFolder = 'temp\'
  Title = 'New Application'
  AjaxTimeout = 60000
  DefaultImageFormat = cfPNG
  SuppressErrors = []
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    ''
    '.CorPadraoBotao{'
    '  background-position: 20px 20px; '
    '  background-repeat: no-repeat;'
    '  '
    '}'
    ''
    '.mGridCliente .x-grid-column {'
    '    height: 25px;'
    '    line-height: 30px;'
    '    padding: 0 8px;'
    '    vertical-align: middle;'
    '    width: 100%;'
    '    text-align: center;'
    '    background-color: #4CAF50;'
    '    color: white;'#9
    '}'
    ''
    '.mGridCliente .x-grid-cell {'
    '    height: 20px !important;'
    '    line-height: 20px !important;'
    '    color: black;'
    '    border-collapse: collapse;'
    '    width: 100%;'#9
    '    background-color: #fff;'
    '}'
    ''
    '.mGridCliente .x-grid {'
    '    background-color: #4CAF50;'
    '}'
    ''
    '.btn-success2 {'
    '    color: #fff;'
    '    background-color: #ffc107;'
    '    border-color: #fff;'
    '}'
    ''
    '.btn-success:hover {'
    '    color: #fff;'
    '    background-color: #fd7e14;'
    '    border-color: #fff;'
    '}'
    ''
    ''
    ''
    
      '/* arredonda os elementos e remove a borda que fica em volta do ' +
      'edit */'
    '.x-form-item-body div,'
    '.x-form-field,'
    '.x-form-text-wrap,'
    'fieldset, '
    'input[type="text"], input[type="password"]  {'
    '    border-radius: 4px !important; '
    '    border:0px;'
    '}'
    ''
    ''
    '.x-form-text-wrap, fieldset  { '
    '    box-shadow: 1px 1px 4px #CCCCCC; /* sombra do edit, etc */'
    '}'
    ''
    ''
    '/* n'#227'o '#233' classe, portanto n'#227'o use ponto no in'#237'cio */'
    
      'input[type="text"], input[type="password"], textarea, fieldset  ' +
      ' {'
    
      '    padding: 6px !important; /* espa'#231'amento interno do edit - op' +
      'cional */'
    '    border: 1px #CCC solid !important; /*cor da borda do edit */'
    
      '    color:#000  !important; /* cor do texto do edit - opcional *' +
      '/'
    
      '    background: #FFF !important; /* cor de fundo, browser compat' +
      'ibility - opcional */'
    
      '    background-color: #FFF !important; /* cor de fundo - opciona' +
      'l */'
    '}'
    ''
    '/* ao receber o foco */'
    
      'input[type="text"]:focus, input[type="password"]:focus, textarea' +
      ':focus {'
    '    border: 1px orange solid  !important;/* cor da borda */'
    '    color:#000  !important; /* cor do texto - opcional */'
    
      '    background: rgb(253, 237, 209)  !important; /* cor de fundo,' +
      ' browser compatibility - opcional  */'
    
      '    background-color: rgb(253, 237, 209)  !important; /* cor de ' +
      'fundo - opcional  */'
    '}'
    ''
    '')
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
