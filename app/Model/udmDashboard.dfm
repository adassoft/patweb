object dmDashboard: TdmDashboard
  OnDestroy = DataModuleDestroy
  Height = 480
  Width = 640
  object sqlTotalBens: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'COUNT_CODIGO'
        DataType = ftLargeint
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        DataType = ftLargeint
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
        Name = 'CODIEMPRESA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    Count(PATRIMONIO.CODIGO) As Count_CODIGO,'
      '    PATRIMONIO.CODIEMPRESA'
      'From'
      '    PATRIMONIO'
      'Where'
      '    PATRIMONIO.CODIEMPRESA = :CODIEMPRESA'
      'Group By'
      '    PATRIMONIO.CODIEMPRESA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 112
    Top = 104
    object sqlTotalBensCOUNT_CODIGO: TLargeintField
      FieldName = 'COUNT_CODIGO'
    end
    object sqlTotalBensCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
  end
  object sqlBensAtivos: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'COUNT_CODIGO'
        DataType = ftLargeint
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end
      item
        DataType = ftLargeint
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
        Name = 'CODIEMPRESA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    Count(PATRIMONIO.CODIGO) As Count_CODIGO,'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS'
      'From'
      '    PATRIMONIO'
      'Where'
      '    PATRIMONIO.CODIEMPRESA = :CODIEMPRESA And'
      '    PATRIMONIO.STATUS = '#39'Ativo'#39
      'Group By'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 112
    Top = 184
    object sqlBensAtivosCOUNT_CODIGO: TLargeintField
      FieldName = 'COUNT_CODIGO'
    end
    object sqlBensAtivosCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object sqlBensAtivosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object sqlBensEmprestados: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'EMPRESTADO'
        DataType = ftLargeint
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end
      item
        DataType = ftLargeint
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
        Name = 'CODIEMPRESA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    Count(PATRIMONIO.CODIGO) As Emprestado,'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS'
      'From'
      '    PATRIMONIO'
      'Where'
      '    PATRIMONIO.CODIEMPRESA = :CODIEMPRESA And'
      '    PATRIMONIO.STATUS = '#39'Emprestado'#39
      'Group By'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 120
    Top = 280
    object sqlBensEmprestadosEMPRESTADO: TLargeintField
      FieldName = 'EMPRESTADO'
    end
    object sqlBensEmprestadosCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object sqlBensEmprestadosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object sqlBaixados: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'BAIXADO'
        DataType = ftLargeint
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end
      item
        DataType = ftLargeint
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
        Name = 'CODIEMPRESA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    Count(PATRIMONIO.CODIGO) As Emprestado,'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS'
      'From'
      '    PATRIMONIO'
      'Where'
      '    (PATRIMONIO.CODIEMPRESA = :CODIEMPRESA And'
      '        PATRIMONIO.STATUS = '#39'Baixado'#39') Or'
      '    (PATRIMONIO.STATUS = '#39'Alienado'#39')'
      'Group By'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.STATUS')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 240
    Top = 104
    object sqlBaixadosBAIXADO: TLargeintField
      FieldName = 'BAIXADO'
    end
    object sqlBaixadosCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object sqlBaixadosSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
end
