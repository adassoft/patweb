object dmComum: TdmComum
  Height = 638
  Width = 774
  object FDQryUnidade: TRESTDWClientSQL
    Capacity = 4
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
    Left = 56
    Top = 18
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
  object FDQryGrupo: TRESTDWClientSQL
    Capacity = 4
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESGRUPO'
        DataType = ftString
        Size = 100
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
      'Select CODIGO, DESGRUPO From GRUPO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 184
    Top = 8
    object FDQryGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryGrupoDESGRUPO: TStringField
      FieldName = 'DESGRUPO'
      Size = 100
    end
  end
  object dsUnidade: TDataSource
    DataSet = FDQryUnidade
    Left = 56
    Top = 90
  end
  object dsGrupo: TDataSource
    DataSet = FDQryGrupo
    Left = 184
    Top = 72
  end
  object FDQryCentro: TRESTDWClientSQL
    Capacity = 4
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCENTRO'
        DataType = ftString
        Size = 100
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
      'Select CODIGO, DESCENTRO From CENTROCUSTRO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 184
    Top = 152
    object FDQryCentroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCentroDESCENTRO: TStringField
      FieldName = 'DESCENTRO'
      Size = 100
    end
  end
  object dsCentro: TDataSource
    DataSet = FDQryCentro
    Left = 184
    Top = 224
  end
  object FDQryFornecedor: TRESTDWClientSQL
    Active = False
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
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'FDQryFornecedorField4'
        DataType = ftInteger
      end>
    SortOrder = soAsc
    SortCaseSens = scYes
    SortFields = ''
    AutoSortOnOpen = True
    AutoRefreshOnFilterChanged = True
    SequenceName = 'GEN_FORNECEDORES_ID'
    SequenceField = 'CODIGO'
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, NOME, CNPJ From FORNECEDORES')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 192
    Top = 320
    object FDQryFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object FDQryFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object dsFornecedor: TDataSource
    DataSet = FDQryFornecedor
    Left = 192
    Top = 392
  end
  object FDQryCidade: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
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
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
        Size = 2
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, DESCRICAO, UF From CIDADES WHERE UF=:UF'
      'ORDER BY DESCRICAO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 188
    Top = 448
    object FDQryCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object FDQryCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidade: TDataSource
    DataSet = FDQryCidade
    Left = 196
    Top = 448
  end
  object dsSetor: TDataSource
    DataSet = FDQrySetor
    Left = 64
    Top = 448
  end
  object FDQrySetor: TRESTDWClientSQL
    Capacity = 4
    Active = False
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
        Size = 35
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
      'Select CODIGO, NOME From SETORES')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 72
    Top = 448
    object FDQrySetorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQrySetorNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
  end
  object dsCategoria: TDataSource
    DataSet = FDQryCategoria
    Left = 64
    Top = 400
  end
  object FDQryCategoria: TRESTDWClientSQL
    Capacity = 4
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
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
      'Select CODIGO, DESCRICAO From CATEGORIAS')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 64
    Top = 328
    object FDQryCategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object dsPessoa: TDataSource
    DataSet = FDQryPessoa
    Left = 56
    Top = 234
  end
  object FDQryPessoa: TRESTDWClientSQL
    Capacity = 4
    Active = False
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
    Left = 56
    Top = 162
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
  object UniGridExcelExporter1: TUniGridExcelExporter
    FileExtention = 'xlsx'
    MimeType = 
      'application/vnd.openxmlformats-officedocument.spreadsheetml.shee' +
      't'
    CharSet = 'UTF-8'
    Left = 436
    Top = 258
  end
  object FDQryEmpresa: TRESTDWClientSQL
    Capacity = 4
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
        Size = 60
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
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    USUARIOSEMPRESA.CODIUSUARIO,'
      '    USUARIOSEMPRESA.CODIEMPRESA,'
      '    EMPRESA.NOME'
      'From'
      '    USUARIOSEMPRESA Left Join'
      '    EMPRESA On EMPRESA.CODIGO = USUARIOSEMPRESA.CODIEMPRESA'
      'Where'
      '    USUARIOSEMPRESA.CODIUSUARIO = :CODIGO')
    UpdateTableName = 'USUARIOSEMPRESA'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 296
    Top = 16
    object FDQryEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
end
