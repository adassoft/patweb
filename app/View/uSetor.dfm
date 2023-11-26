inherited frmSetor: TfrmSetor
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ExplicitHeight = 427
          ScrollHeight = 188
          ScrollWidth = 513
          object UniDBEdit1: TUniDBEdit
            Left = 16
            Top = 22
            Width = 88
            Height = 36
            Hint = ''
            Enabled = False
            DataField = 'CODIGO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 0
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 120
            Top = 24
            Width = 393
            Height = 36
            Hint = ''
            ListField = 'UNIDADE'
            ListSource = dsUnidade
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIUNIDADE'
            DataSource = dsCad
            TabOrder = 1
            Color = clWindow
            FieldLabel = 'Unidade administrativa'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBEdit2: TUniDBEdit
            Left = 17
            Top = 86
            Width = 496
            Height = 36
            Hint = ''
            DataField = 'NOME'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 2
            FieldLabel = 'Nome do setor'
            FieldLabelAlign = laTop
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 17
            Top = 152
            Width = 248
            Height = 36
            Hint = ''
            ListField = 'NOME'
            ListSource = dsPessoa
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIRESPONSAVEL'
            DataSource = dsCad
            TabOrder = 3
            Color = clWindow
            FieldLabel = 'Respons'#225'vel pelo setor'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 856
    Top = 248
  end
  inherited FDQryCad: TRESTDWClientSQL
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CODIRESPONSAVEL'
        DataType = ftInteger
      end
      item
        Name = 'CODIUNIDADE'
        DataType = ftInteger
      end
      item
        Name = 'MASP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end>
    AfterScroll = FDQryCadAfterScroll
    SequenceName = 'GEN_SETORES_ID'
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    SETORES.CODIGO,'
      '    SETORES.NOME,'
      '    SETORES.CODIRESPONSAVEL,'
      '    SETORES.CODIUNIDADE'
      'From'
      '    SETORES'
      'Where'
      '    SETORES.CODIGO = :CODIGO')
    UpdateTableName = 'SETORES'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object FDQryCadCODIRESPONSAVEL: TIntegerField
      FieldName = 'CODIRESPONSAVEL'
    end
    object FDQryCadCODIUNIDADE: TIntegerField
      FieldName = 'CODIUNIDADE'
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SETOR'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RESPONSAVEL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FDQryFiltroField5'
        DataType = ftInteger
      end>
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    SETORES.CODIGO,'
      '    SETORES.NOME As SETOR,'
      '    UNIDADE.UNIDADE,'
      '    PESSOA.NOME As RESPONSAVEL'
      'From'
      '    SETORES Inner Join'
      '    PESSOA On PESSOA.CODIGO = SETORES.CODIRESPONSAVEL Inner Join'
      '    UNIDADE On UNIDADE.CODIGO = SETORES.CODIUNIDADE'
      'Where'
      '    SETORES.NOME LIKE :NOME || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'SETORES'
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroSETOR: TStringField
      FieldName = 'SETOR'
      Size = 35
    end
    object FDQryFiltroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
    object FDQryFiltroRESPONSAVEL: TStringField
      DisplayLabel = 'RESPONS'#193'VEL'
      FieldName = 'RESPONSAVEL'
      Size = 40
    end
  end
  object FDQryUnidade: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end>
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
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, ORGAO, UNIDADE From UNIDADE')
    UpdateTableName = 'UNIDADE'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 660
    Top = 178
    object FDQryUnidadeCODIGO: TSmallintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
  end
  object dsUnidade: TDataSource
    DataSet = FDQryUnidade
    Left = 756
    Top = 178
  end
  object FDQryPessoa: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MASP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end>
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
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, NOME, MASP, TELEFONE From PESSOA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 668
    Top = 90
    object FDQryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryPessoaMASP: TStringField
      FieldName = 'MASP'
    end
    object FDQryPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\) 0 0000-0000;0;_'
      Size = 12
    end
  end
  object dsPessoa: TDataSource
    DataSet = FDQryPessoa
    Left = 748
    Top = 90
  end
end
