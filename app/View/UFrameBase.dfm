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
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 80
      Height = 36
      Hint = ''
      Caption = 'Novo'
      Align = alLeft
      ParentFont = False
      Font.Color = -1
      TabOrder = 2
      Images = UniNativeImageList1
      ImageIndex = 19
      OnClick = BtIncClick
    end
    object BtAlt: TUniBitBtn
      AlignWithMargins = True
      Left = 89
      Top = 3
      Width = 80
      Height = 36
      Hint = ''
      Caption = 'Editar'
      Align = alLeft
      ParentFont = False
      Font.Color = -1
      TabOrder = 3
      Images = UniNativeImageList1
      ImageIndex = 7
      OnClick = BtAltClick
    end
    object BtExc: TUniBitBtn
      AlignWithMargins = True
      Left = 175
      Top = 3
      Width = 80
      Height = 36
      Hint = ''
      Caption = 'Deletar'
      Align = alLeft
      ParentFont = False
      Font.Color = -1
      TabOrder = 4
      Images = UniNativeImageList1
      ImageIndex = 18
      OnClick = BtExcClick
    end
    object BtCan: TUniBitBtn
      AlignWithMargins = True
      Left = 261
      Top = 3
      Width = 80
      Height = 36
      Hint = ''
      Caption = 'Desfazer'
      Align = alLeft
      ParentFont = False
      Font.Color = -1
      TabOrder = 5
      Images = UniNativeImageList1
      ImageIndex = 13
      OnClick = BtCanClick
    end
    object BtGrv: TUniBitBtn
      AlignWithMargins = True
      Left = 347
      Top = 3
      Width = 80
      Height = 36
      Hint = ''
      Caption = 'Salvar'
      Align = alLeft
      ParentFont = False
      Font.Color = -1
      TabOrder = 6
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
        object EdPesquisar: TUniEdit
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 819
          Height = 33
          Hint = ''
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          CharCase = ecUpperCase
          Text = '%'
          Align = alClient
          TabOrder = 1
          OnEnter = EdPesquisarEnter
        end
        object BtFiltrar: TUniBitBtn
          AlignWithMargins = True
          Left = 845
          Top = 6
          Width = 90
          Height = 41
          Hint = ''
          Margins.Left = 6
          Margins.Top = 6
          Margins.Right = 6
          Margins.Bottom = 6
          Caption = 'Filtrar'
          Align = alRight
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
        DataSource = dsFiltro
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgRowSelect, dgConfirmDelete, dgFilterClearButton, dgTabs, dgCancelOnExit]
        ReadOnly = True
        LoadMask.ShowMessage = False
        LoadMask.Message = 'Loading data...'
        LoadMask.Opacity = 0.400000005960464500
        TrackOver = False
        Align = alClient
        TabOrder = 1
        TabStop = False
        OnBodyDblClick = UniDBGrid1BodyDblClick
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
          ScrollHeight = 35
          object UniSimplePanel19: TUniSimplePanel
            Left = 0
            Top = 0
            Width = 939
            Height = 35
            Hint = ''
            ParentColor = False
            Align = alTop
            TabOrder = 0
          end
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
  object UniHiddenPanel1: TUniHiddenPanel
    Left = 22
    Top = 152
    Width = 209
    Height = 321
    Hint = ''
    Visible = True
    object UniEdit1: TUniEdit
      Left = 16
      Top = 24
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit1'
      TabOrder = 0
      EmptyText = 'Company...'
      ClearButton = True
    end
    object UniEdit2: TUniEdit
      Left = 16
      Top = 52
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit2'
      TabOrder = 1
      EmptyText = 'Contact...'
      ClearButton = True
    end
    object UniEdit3: TUniEdit
      Left = 16
      Top = 80
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit3'
      TabOrder = 2
      EmptyText = 'Title...'
      ClearButton = True
    end
    object UniEdit4: TUniEdit
      Left = 16
      Top = 108
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit4'
      TabOrder = 3
      EmptyText = 'Address...'
      ClearButton = True
    end
    object UniEdit5: TUniEdit
      Left = 16
      Top = 136
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit5'
      TabOrder = 4
      EmptyText = 'City...'
      ClearButton = True
    end
    object UniEdit6: TUniEdit
      Left = 16
      Top = 164
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit6'
      TabOrder = 5
      EmptyText = 'Postal Code...'
      ClearButton = True
    end
    object UniEdit7: TUniEdit
      Left = 16
      Top = 220
      Width = 121
      Hint = ''
      CharEOL = #13
      Text = 'UniEdit7'
      TabOrder = 7
      EmptyText = 'Phone...'
      ClearButton = True
    end
    object UniDBLookupComboBoxP: TUniDBLookupComboBox
      Left = 16
      Top = 192
      Width = 145
      Height = 23
      Hint = ''
      ListField = 'Country'
      KeyField = 'Country'
      ListFieldIndex = 0
      EmptyText = 'Country...'
      TabOrder = 6
      Color = clWindow
    end
  end
  object UniNativeImageList1: TUniNativeImageList
    Left = 336
    Top = 184
    Images = {
      14000000FFFFFF1F060B0000006E617669636F6E3B66613BFFFFFF1F060B0000
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
      676C652D646F75626C652D646F776E3B66615F3BFFFFFF1F0610000000666120
      66612D74726173683B66615F3BFFFFFF1F061600000066612066612D706C7573
      2D7371756172653B66615F3B}
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
    BinaryRequest = True
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
