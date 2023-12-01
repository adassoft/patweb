object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 633
  ClientWidth = 838
  Caption = 'Controle Patrimonial Pat Web'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnBeforeShow = UniFormBeforeShow
  OnCreate = UniFormCreate
  TextHeight = 15
  object UniStatusBar1: TUniStatusBar
    Left = 0
    Top = 611
    Width = 838
    Hint = ''
    Panels = <>
    SizeGrip = False
    Align = alBottom
    ParentColor = False
    ExplicitTop = 610
    ExplicitWidth = 834
  end
  object PnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 41
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    TabOrder = 1
    BorderStyle = ubsNone
    ShowCaption = False
    Caption = ''
    Color = clWhite
    LayoutConfig.Cls = 'tool-bar'
    LayoutConfig.BodyCls = 'tool-bar'
    LayoutConfig.Width = '100%'
    LayoutConfig.Margin = '0'
    ExplicitWidth = 834
    object UniLabel2: TUniLabel
      AlignWithMargins = True
      Left = 223
      Top = 3
      Width = 39
      Height = 35
      Hint = ''
      CreateOrder = 2
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-bars fa-2x" aria-hidden="true" ></i>'
      Align = alLeft
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 3026478
      TabOrder = 3
      OnClick = UniLabel2Click
    end
    object lbEmpresaSelecionada: TUniLabel
      Left = 305
      Top = 10
      Width = 151
      Height = 20
      Hint = ''
      Margins.Left = 10
      Margins.Top = 16
      CreateOrder = 3
      Caption = 'lbEmpresaSelecionada'
      Align = alCustom
      ParentFont = False
      Font.Height = -15
      TabOrder = 5
    end
    object pnLogo: TUniPanel
      Left = 0
      Top = 0
      Width = 220
      Height = 41
      Hint = ''
      Align = alLeft
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = 688841
      object lbTitulo: TUniLabel
        AlignWithMargins = True
        Left = 54
        Top = 12
        Width = 159
        Height = 30
        Hint = ''
        CreateOrder = 1
        Alignment = taCenter
        Caption = 'Patrim'#244'nio Web'
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Style = [fsBold]
        ParentColor = False
        Color = clSilver
        TabOrder = 2
        LayoutConfig.Cls = 'lbTitulo'
      end
      object Logo: TUniImage
        AlignWithMargins = True
        Left = 4
        Top = 3
        Width = 40
        Height = 35
        Hint = ''
        Margins.Left = 4
        Margins.Right = 0
        Center = True
        Stretch = True
        Proportional = True
        Align = alLeft
      end
    end
    object UniLabel1: TUniLabel
      AlignWithMargins = True
      Left = 732
      Top = 3
      Width = 46
      Height = 35
      Hint = ''
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-user-circle fa-2x" aria-hidden="true" ></i>'
      Align = alRight
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2236962
      TabOrder = 2
      ExplicitLeft = 707
    end
    object UniLabel3: TUniLabel
      AlignWithMargins = True
      Left = 784
      Top = 3
      Width = 51
      Height = 35
      Hint = ''
      Alignment = taCenter
      TextConversion = txtHTML
      AutoSize = False
      Caption = '<i class="fa fa-power-off fa-2x" aria-hidden="true"></i>'
      Align = alRight
      ParentFont = False
      Font.Color = 3026478
      Font.Height = -15
      Font.Style = [fsBold]
      ParentColor = False
      Color = 2236962
      TabOrder = 4
      OnClick = UniLabel3Click
    end
  end
  object PageControlGeral: TUniPageControl
    AlignWithMargins = True
    Left = 265
    Top = 46
    Width = 573
    Height = 562
    Hint = ''
    Margins.Left = 0
    Margins.Top = 5
    Margins.Right = 0
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 569
    ExplicitHeight = 561
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Dashboard'
      Font.Color = 9865093
      ParentFont = False
      ShowMaskBeforeActivate = True
      ExplicitWidth = 561
      ExplicitHeight = 533
      object UniURLFrame1: TUniURLFrame
        Left = 0
        Top = 0
        Width = 565
        Height = 534
        Hint = ''
        Visible = False
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        ExplicitWidth = 561
        ExplicitHeight = 533
      end
    end
  end
  object Menu: TUniTreeMenu
    Left = 0
    Top = 41
    Width = 265
    Height = 570
    Hint = ''
    ShowHint = True
    ParentShowHint = False
    BodyRTL = False
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    Color = 2302755
    SingleExpand = True
    ExpanderOnly = False
    ExplicitHeight = 569
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 277
    Top = 177
    object Arquivo1: TUniMenuItem
      Caption = 'Arquivo'
      ImageIndex = 16
      HideOnClick = False
      object Empresausuria1: TUniMenuItem
        Caption = 'Empresa usu'#225'ria'
        ImageIndex = 26
        OnClick = Empresausuria1Click
      end
      object Cidades1: TUniMenuItem
        Caption = 'Cidades'
        ImageIndex = 25
        OnClick = Cidades1Click
      end
    end
    object Cadastro1: TUniMenuItem
      Caption = 'Cadastro'
      ImageIndex = 17
      object Pessoas1: TUniMenuItem
        Caption = 'Pessoas'
        ImageIndex = 18
        OnClick = Pessoas1Click
      end
      object Fornecedores1: TUniMenuItem
        Caption = 'Fornecedores'
        ImageIndex = 27
        OnClick = Fornecedores1Click
      end
      object Unidadeadministrativa1: TUniMenuItem
        Caption = 'Unidade administrativa'
        ImageIndex = 19
        OnClick = Unidadeadministrativa1Click
      end
      object Centrodecusto1: TUniMenuItem
        Caption = 'Centro de custo'
        ImageIndex = 9
        OnClick = Centrodecusto1Click
      end
      object Categorias1: TUniMenuItem
        Caption = 'Categorias'
        ImageIndex = 11
        OnClick = Categorias1Click
      end
      object Grupos1: TUniMenuItem
        Caption = 'Grupos'
        ImageIndex = 21
        OnClick = Grupos1Click
      end
      object Setores1: TUniMenuItem
        Caption = 'Setores'
        ImageIndex = 28
        OnClick = Setores1Click
      end
      object Motivosdetransferncia1: TUniMenuItem
        Caption = 'Motivos de transfer'#234'ncia'
        ImageIndex = 16
        OnClick = Motivosdetransferncia1Click
      end
      object Patrimnio1: TUniMenuItem
        Caption = 'Patrim'#244'nio'
        ImageIndex = 29
        OnClick = Patrimnio1Click
      end
    end
    object Relatrios1: TUniMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 24
    end
    object Responsive1: TUniMenuItem
      Caption = 'Usu'#225'rios'
      ImageIndex = 30
      OnClick = Responsive1Click
    end
    object Sair1: TUniMenuItem
      Caption = 'Sair'
      ImageIndex = 31
      OnClick = Sair1Click
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 296
    Top = 72
    Images = {
      20000000FFFFFF1F060C0000006E617669636F6E3B66615F3BFFFFFF1F060B00
      00006465736B746F703B66613BFFFFFF1F060C000000656E76656C6F70653B66
      613BFFFFFF1F0608000000757365723B66613BFFFFFF1F060E0000006C696E65
      2D63686172743B66613BFFFFFF1F061000000077696E646F772D636C6F73653B
      66613BFFFFFF1F0608000000736176653B66613BFFFFFF1F0608000000656469
      743B66613BFFFFFF1F06070000006375743B66613BFFFFFF1F060D0000006261
      722D63686172743B66613BFFFFFF1F060D0000007069652D63686172743B6661
      3BFFFFFF1F060C000000626F6F6B6D61726B3B66613BFFFFFF1F060C00000063
      616C656E6461723B66613BFFFFFF1F0608000000666565643B66613BFFFFFF1F
      06070000006661783B66613BFFFFFF1F06070000006164643B66613BFFFFFF1F
      0609000000696E626F783B66613BFFFFFF1F061400000066612066612D627269
      6566636173653B66615F3BFFFFFF1F060E00000066612066612D757365723B66
      613BFFFFFF1F061300000066612066612D6275696C64696E673B66615F3BFFFF
      FF1F061000000066612066612D6D6F6E65793B66615F3BFFFFFF1F0617000000
      66612066612D6F626A6563742D67726F75703B66615F3BFFFFFF1F060F000000
      66612D617263686976653B66615F3BFFFFFF1F061400000066612066612D6669
      6C652D746578743B66615F3BFFFFFF1F061000000066612066612D7072696E74
      3B66615F3BFFFFFF1F061500000066612066612D6D61702D6D61726B65723B66
      615F3BFFFFFF1F061200000066612066612D69642D636172643B66615F3BFFFF
      FF1F061200000066612066612D69642D62616467653B66613BFFFFFF1F061100
      000066612066612D736974656D61703B66613BFFFFFF1F061100000066612066
      612D7172636F64653B66615F3BFFFFFF1F061000000066612066612D75736572
      733B66615F3BFFFFFF1F061400000066612066612D706F7765722D6F66663B66
      615F3B}
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = False
    DisplayMessage = 'Aguarde Ajustes de Seguran'#231'a'
    Left = 344
    Top = 192
  end
  object TimerResize: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = TimerResizeTimer
    Left = 488
    Top = 176
  end
  object TimerSessao: TUniTimer
    Interval = 540000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 648
    Top = 423
  end
end
