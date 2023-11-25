inherited frmMotivoTransferencia: TfrmMotivoTransferencia
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 58
          ScrollWidth = 710
          object UniDBEdit1: TUniDBEdit
            Left = 16
            Top = 22
            Width = 88
            Height = 36
            Hint = ''
            Enabled = False
            DataField = 'CODIGO'
            DataSource = dsCad
            TabOrder = 0
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBEdit2: TUniDBEdit
            Left = 110
            Top = 22
            Width = 600
            Height = 36
            Hint = ''
            DataField = 'MOTIVO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 1
            FieldLabel = #211'rg'#227'o'
            FieldLabelAlign = laTop
          end
        end
      end
    end
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        Size = 100
      end
      item
        DataType = ftSmallint
      end>
    AutoIncAsInteger = True
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, MOTIVO From MOTIVOSTRANSFERENCIA WHERE CODIGO=:CO' +
        'DIGO')
    object FDQryCadCODIGO: TSmallintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'MOTIVO'
        DataType = ftString
        Size = 100
      end
      item
        DataType = ftSmallint
      end>
    SequenceName = ''
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'MOTIVO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, MOTIVO From MOTIVOSTRANSFERENCIA WHERE MOTIVO LIK' +
        'E :MOTIVO   || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'MOTIVOSTRANSFERENCIA'
    object FDQryFiltroCODIGO: TSmallintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 100
    end
  end
end
