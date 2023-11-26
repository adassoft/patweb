object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 633
  ClientWidth = 838
  Caption = 'Controle Patrimonial Pat Web'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  TextHeight = 15
  object PagePrincipal: TUniPageControl
    Left = 289
    Top = 49
    Width = 549
    Height = 562
    Hint = ''
    ActivePage = TabHome
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 377
    ExplicitTop = 89
    ExplicitWidth = 545
    ExplicitHeight = 561
    object TabHome: TUniTabSheet
      Hint = ''
      Caption = 'Home'
      ExplicitWidth = 537
      ExplicitHeight = 533
      object UniURLFramePrincipal: TUniURLFrame
        Left = 0
        Top = 0
        Width = 541
        Height = 534
        Hint = ''
        BodyRTL = False
        Align = alClient
        TabOrder = 0
        ParentColor = False
        Color = clWhite
        ExplicitWidth = 537
        ExplicitHeight = 533
      end
    end
  end
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
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 838
    Height = 49
    Hint = ''
    ParentColor = False
    Color = 6835774
    Align = alTop
    ParentAlignmentControl = False
    TabOrder = 2
    ExplicitWidth = 834
    object PanelTop: TUniPanel
      Left = 0
      Top = 0
      Width = 838
      Height = 49
      Hint = ''
      Align = alClient
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = 'Controle Patrimonial Web'
      Collapsed = True
      Color = 2236962
      ExplicitWidth = 834
      object UniLabel1: TUniLabel
        AlignWithMargins = True
        Left = 566
        Top = 3
        Width = 269
        Height = 112
        Hint = ''
        TextConversion = txtHTML
        Caption = 
          '<i class="fa fa-user-circle-o   '#13#10'fa-2x" '#13#10'aria-hidden="true"></' +
          'i>'#13#10'        '
        Align = alRight
        TabOrder = 1
        ExplicitLeft = 562
      end
      object UniLblButtoDrower: TUniLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 491
        Height = 28
        Hint = ''
        TextConversion = txtHTML
        Caption = '<i class="fa fa-bars fa fa-1x" aria-hidden="true"></i>'
        Align = alLeft
        TabOrder = 2
        OnClick = UniLblButtoDrowerClick
      end
    end
  end
  object UniTreeMenu1: TUniTreeMenu
    Left = 0
    Top = 49
    Width = 289
    Height = 562
    Hint = ''
    Items.FontData = {0100000000}
    SourceMenu = UniMenuItems1
    Color = 2236962
    ExplicitLeft = -50
    ExplicitTop = 154
    ExplicitHeight = 434
  end
  object UniMenuItems1: TUniMenuItems
    Images = UniNativeImageList1
    Left = 277
    Top = 177
    object Arquivo1: TUniMenuItem
      Caption = 'Arquivo'
      ImageIndex = 16
      object Empresausuria1: TUniMenuItem
        Caption = 'Empresa usu'#225'ria'
      end
      object Cidades1: TUniMenuItem
        Caption = 'Cidades'
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
        OnClick = Setores1Click
      end
      object Motivosdetransferncia1: TUniMenuItem
        Caption = 'Motivos de transfer'#234'ncia'
        ImageIndex = 16
        OnClick = Motivosdetransferncia1Click
      end
    end
    object Relatrios1: TUniMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 24
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 296
    Top = 72
    Images = {
      19000000FFFFFF1F060B0000006E617669636F6E3B66613BFFFFFF1F060B0000
      006465736B746F703B66613BFFFFFF1F060C000000656E76656C6F70653B6661
      3BFFFFFF1F0608000000757365723B66613BFFFFFF1F060E0000006C696E652D
      63686172743B66613BFFFFFF1F061000000077696E646F772D636C6F73653B66
      613BFFFFFF1F0608000000736176653B66613BFFFFFF1F060800000065646974
      3B66613BFFFFFF1F06070000006375743B66613BFFFFFF1F060D000000626172
      2D63686172743B66613BFFFFFF1F060D0000007069652D63686172743B66613B
      FFFFFF1F060C000000626F6F6B6D61726B3B66613BFFFFFF1F060C0000006361
      6C656E6461723B66613BFFFFFF1F0608000000666565643B66613BFFFFFF1F06
      070000006661783B66613BFFFFFF1F06070000006164643B66613BFFFFFF1F06
      09000000696E626F783B66613BFFFFFF1F061400000066612066612D62726965
      66636173653B66615F3BFFFFFF1F060E00000066612066612D757365723B6661
      3BFFFFFF1F061300000066612066612D6275696C64696E673B66615F3BFFFFFF
      1F061000000066612066612D6D6F6E65793B66615F3BFFFFFF1F061700000066
      612066612D6F626A6563742D67726F75703B66615F3BFFFFFF1F060F00000066
      612D617263686976653B66615F3BFFFFFF1F061400000066612066612D66696C
      652D746578743B66615F3BFFFFFF1F061000000066612066612D7072696E743B
      66615F3B}
  end
  object UniTimer1Timer: TUniTimer
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    Left = 208
    Top = 136
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = False
    DisplayMessage = 'Aguarde Ajustes de Seguran'#231'a'
    Left = 344
    Top = 192
  end
end
