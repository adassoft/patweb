object FrameBase: TFrameBase
  Left = 0
  Top = 0
  Width = 949
  Height = 510
  OnCreate = UniFrameCreate
  TabOrder = 0
  object PnlCrud: TUniPanel
    Left = 0
    Top = 0
    Width = 949
    Height = 42
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clRed
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 14211288
    object UniLabel1: TUniLabel
      Left = 784
      Top = 24
      Width = 3
      Height = 13
      Hint = ''
      Visible = False
      Caption = '.'
      TabOrder = 1
    end
    object BtInc: TUniBitBtn
      Left = 6
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Novo'
      ParentFont = False
      Font.Color = -1
      TabOrder = 2
      Images = UniNativeImageList1
      ImageIndex = 6
      OnClick = BtIncClick
    end
    object BtAlt: TUniBitBtn
      Left = 114
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Editar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 3
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-dark"   '#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 7
      OnClick = BtAltClick
    end
    object BtExc: TUniBitBtn
      Left = 222
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Deletar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 4
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-danger"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 18
      OnClick = BtExcClick
    end
    object BtCan: TUniBitBtn
      Left = 330
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Desfazer'
      ParentFont = False
      Font.Color = -1
      TabOrder = 5
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-warning"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 13
      OnClick = BtCanClick
    end
    object BtGrv: TUniBitBtn
      Left = 438
      Top = 4
      Width = 103
      Height = 35
      Hint = ''
      Caption = 'Salvar'
      ParentFont = False
      Font.Color = -1
      TabOrder = 6
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.ba' +
          'seCls = "btn" ;'#13#10'    config.cls     = "btn-success"'#13#10'}')
      Images = UniNativeImageList1
      ImageIndex = 6
      OnClick = BtGrvClick
    end
  end
  object PageCadastro: TUniPageControl
    Left = 0
    Top = 42
    Width = 949
    Height = 457
    Hint = ''
    ActivePage = Tab1
    Align = alClient
    TabOrder = 1
    OnChange = PageCadastroChange
    object Tab1: TUniTabSheet
      Hint = ''
      Caption = 'Consulta'
      object UniPnlPesquisar: TUniPanel
        Left = 0
        Top = 0
        Width = 941
        Height = 53
        Hint = ''
        ParentRTL = False
        Align = alTop
        ParentFont = False
        TabOrder = 0
        BorderStyle = ubsSolid
        Caption = ''
        Color = 6835774
        DesignSize = (
          941
          53)
        object EdPesquisar: TUniEdit
          Left = 18
          Top = 14
          Width = 509
          Hint = ''
          CharCase = ecUpperCase
          Text = '%'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 1
          OnEnter = EdPesquisarEnter
        end
        object BtFiltrar: TUniBitBtn
          Left = 810
          Top = 9
          Width = 119
          Height = 35
          Hint = ''
          Caption = 'Filtrar'
          Anchors = [akTop, akRight]
          ParentFont = False
          Font.Color = -1
          TabOrder = 2
          Images = UniNativeImageList1
          ImageIndex = 14
          OnClick = BtFiltrarClick
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 0
        Top = 53
        Width = 941
        Height = 376
        Hint = ''
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, pos, eOpts)'#13#10'{'#13#10'  sender' +
            '.addCls('#39'mGridCliente'#39','#39'x-grid-cell'#39');'#13#10'}')
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    config.cl' +
            's="mGridCliente";'#13#10'    config.itemHeight = 20;'#13#10'    config.heade' +
            'rContainer = {height: 20};'#13#10'}')
        DataSource = dsFiltro
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgTitleClick, dgFilterClearButton, dgAutoRefreshRow]
        LoadMask.Message = 'Loading data...'
        BorderStyle = ubsNone
        Align = alClient
        TabOrder = 1
        ParentColor = False
        Color = clWindow
        OnDblClick = UniDBGrid1DblClick
      end
    end
    object Tab2: TUniTabSheet
      Hint = ''
      Caption = 'Ficha'
      object UniPanel1: TUniPanel
        Left = 0
        Top = 0
        Width = 941
        Height = 429
        Hint = ''
        Align = alClient
        TabOrder = 0
        BorderStyle = ubsNone
        Caption = ''
        object UniScrollBox1: TUniScrollBox
          Left = 0
          Top = 0
          Width = 941
          Height = 429
          Hint = ''
          Align = alClient
          Color = clBtnHighlight
          TabOrder = 1
        end
      end
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 499
    Width = 949
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 2
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 336
    Top = 184
    Images = {
      13000000FFFFFF1F060B0000006E617669636F6E3B66613BFFFFFF1F060B0000
      006465736B746F703B66613BFFFFFF1F060C000000656E76656C6F70653B6661
      3BFFFFFF1F0608000000757365723B66613BFFFFFF1F060E0000006C696E652D
      63686172743B66613BFFFFFF1F061000000077696E646F772D636C6F73653B66
      613BFFFFFF1F0608000000736176653B66613BFFFFFF1F060800000065646974
      3B66613BFFFFFF1F06070000006375743B66613BFFFFFF1F060D000000626172
      2D63686172743B66613BFFFFFF1F060D0000007069652D63686172743B66613B
      FFFFFF1F060C000000626F6F6B6D61726B3B66613BFFFFFF1F060C0000006361
      6C656E6461723B66613BFFFFFF1F0608000000666565643B66613BFFFFFF1F06
      0A0000007365617263683B66613BFFFFFF1F0609000000696D6167653B66613B
      FFFFFF1F0609000000696E626F783B66613BFFFFFF1F061900000066612D616E
      676C652D646F75626C652D646F776E3B66615F3BFFFFFF1F0612000000666120
      66612D74726173682D6F3B66615F3B}
  end
  object FDQryCad: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    SortOrder = soAsc
    SortCaseSens = scYes
    SortFields = ''
    AutoSortOnOpen = True
    AutoRefreshOnFilterChanged = True
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = True
    Left = 660
    Top = 296
  end
  object dsCad: TDataSource
    DataSet = FDQryCad
    Left = 753
    Top = 298
  end
  object dsFiltro: TDataSource
    DataSet = FDQryFiltro
    Left = 753
    Top = 368
  end
  object FDQryFiltro: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    SortOrder = soAsc
    SortCaseSens = scYes
    SortFields = ''
    AutoSortOnOpen = True
    AutoRefreshOnFilterChanged = True
    SequenceName = 'GEN_MOTIVOSTRANSFERENCIA_ID;'
    MasterCascadeDelete = True
    BinaryRequest = False
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = True
    Left = 660
    Top = 368
  end
end
