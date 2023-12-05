object fLogin: TfLogin
  Left = 0
  Top = 0
  ClientHeight = 651
  ClientWidth = 801
  Caption = 'flogin'
  OnShow = UniLoginFormShow
  BorderStyle = bsNone
  WindowState = wsMaximized
  Position = poDesigned
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  LayoutConfig.Cls = 'fLogin'
  OnBeforeShow = UniLoginFormBeforeShow
  OnDestroy = UniLoginFormDestroy
  OnScreenResize = UniLoginFormScreenResize
  TextHeight = 15
  object imgBG: TUniImage
    Left = 0
    Top = 0
    Width = 801
    Height = 651
    Hint = ''
    Center = True
    Align = alClient
    LayoutConfig.Padding = '0'
    LayoutConfig.Height = '101%'
    LayoutConfig.Width = '101%'
    LayoutConfig.Margin = '0'
  end
  object pnLogin: TUniPanel
    Left = 200
    Top = 96
    Width = 400
    Height = 450
    Hint = ''
    TabOrder = 1
    ScreenMask.Enabled = True
    BorderStyle = ubsNone
    Caption = ''
    Color = 2302755
    AlwaysOnTop = True
    LayoutConfig.Cls = 'pnLogin'
    DesignSize = (
      400
      450)
    object EdUsuario: TUniEdit
      Left = 56
      Top = 122
      Width = 304
      Height = 34
      Hint = ''
      CharCase = ecUpperCase
      BorderStyle = ubsSingle
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      EmptyText = 'Usu'#225'rio'
      ScreenMask.Color = clInactiveCaptionText
      LayoutConfig.Cls = 'icone-user'
    end
    object EdSenha: TUniEdit
      Left = 56
      Top = 236
      Width = 304
      Height = 34
      Hint = ''
      PasswordChar = '@'
      CharCase = ecUpperCase
      BorderStyle = ubsNone
      Text = ''
      ParentFont = False
      Font.Style = [fsBold]
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      EmptyText = 'Senha'
      LayoutConfig.Cls = 'icone-pass'
    end
    object UniBitBtn1: TUniBitBtn
      Left = 48
      Top = 376
      Width = 304
      Height = 33
      Hint = ''
      Caption = 'Entrar'
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 3
      ScreenMask.Color = clInactiveCaptionText
      OnClick = UniBitBtn1Click
    end
    object lbkey: TUniLabel
      Left = 0
      Top = 0
      Width = 400
      Height = 57
      Hint = ''
      Margins.Top = 15
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = ''
      Align = alTop
      ParentFont = False
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 4
      LayoutConfig.Cls = 'key'
    end
    object cbEmpresa: TUniComboBox
      Left = 56
      Top = 175
      Width = 304
      Height = 34
      Hint = ''
      Visible = False
      Text = 'Informe a Empresa'
      Items.Strings = (
        'Selecione uma empresa')
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      ScreenMask.Color = clInactiveCaptionText
      IconItems = <>
    end
    object UniLabel1: TUniLabel
      Left = 272
      Top = 276
      Width = 86
      Height = 13
      Hint = ''
      Visible = False
      Caption = 'Recuperar senha'
      ParentFont = False
      Font.Color = clSilver
      ParentColor = False
      Color = 2302755
      TabOrder = 6
      ScreenMask.Color = clInactiveCaptionText
    end
    object UniLabel2: TUniLabel
      Left = 56
      Top = 95
      Width = 57
      Height = 21
      Hint = ''
      Caption = 'Usu'#225'rio:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      ParentColor = False
      Color = 2302755
      TabOrder = 7
      ScreenMask.Color = clInactiveCaptionText
    end
    object UniLabel3: TUniLabel
      Left = 56
      Top = 209
      Width = 46
      Height = 21
      Hint = ''
      Caption = 'Senha:'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -16
      ParentColor = False
      Color = 2302755
      TabOrder = 8
      ScreenMask.Color = clInactiveCaptionText
    end
    object UniLabel4: TUniLabel
      Left = 160
      Top = 20
      Width = 72
      Height = 37
      Hint = ''
      Caption = 'Login'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clSilver
      Font.Height = -27
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2302755
      TabOrder = 9
      ScreenMask.Color = clInactiveCaptionText
    end
    object btnContinuar: TUniBitBtn
      Left = 48
      Top = 376
      Width = 304
      Height = 33
      Hint = ''
      Visible = False
      Caption = 'Continuar'
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 10
      ScreenMask.Color = clInactiveCaptionText
      OnClick = btnContinuarClick
    end
  end
end
