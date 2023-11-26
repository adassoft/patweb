inherited frmUF: TfrmUF
  inherited FDQryCad: TRESTDWClientSQL
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, UF, DESCRICAO From UFS WHERE CODIGO=:CODIGO')
    UpdateTableName = 'UFS'
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        DataType = ftString
        Size = 2
      end>
    SequenceName = 'GEN_UFS_ID'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select UF, DESCRICAO From UFS  WHERE UF LIKE :UF || '#39'%'#39
      'ORDER BY UF')
    UpdateTableName = 'UFS'
    object FDQryFiltroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
end
