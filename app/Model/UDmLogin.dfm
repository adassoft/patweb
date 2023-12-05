object DMLogin: TDMLogin
  OnDestroy = DataModuleDestroy
  Height = 345
  Width = 439
  object QryLogin: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'QryLoginField6'
        DataType = ftInteger
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
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SENHA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'SELECT *  FROM USUARIOS WHERE NOME = :USUARIO AND SENHA=:SENHA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 80
    Top = 40
    object QryLoginID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QryLoginSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object QryLoginEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object QryLoginDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object QryCadUsuarioNovo: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'QryCadUsuarioNovoField6'
        DataType = ftInteger
      end>
    SortOrder = soAsc
    SortCaseSens = scYes
    SortFields = ''
    AutoSortOnOpen = True
    AutoRefreshOnFilterChanged = True
    SequenceName = 'GEN_USUARIOS_ID'
    SequenceField = 'ID'
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID = -1')
    UpdateTableName = 'USUARIOS'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 80
    Top = 128
    object QryCadUsuarioNovoID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCadUsuarioNovoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object QryCadUsuarioNovoSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object QryCadUsuarioNovoEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object QryCadUsuarioNovoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object ValidaUsuarioEmail: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ValidaUsuarioEmailField4'
        DataType = ftInteger
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
        Name = 'EMAIL'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'SELECT ID,NOME,SENHA FROM USUARIOS WHERE EMAIL=:EMAIL')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 80
    Top = 208
    object ValidaUsuarioEmailID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ValidaUsuarioEmailNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object ValidaUsuarioEmailSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
  end
end
