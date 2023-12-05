inherited frmCentroCusto: TfrmCentroCusto
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 91
          ScrollWidth = 710
          inherited UniSimplePanel19: TUniSimplePanel
            TabOrder = 2
          end
          object UniDBEdit1: TUniDBEdit
            Left = 16
            Top = 55
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
          object UniDBEdit2: TUniDBEdit
            Left = 110
            Top = 55
            Width = 600
            Height = 36
            Hint = ''
            DataField = 'DESCENTRO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 1
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelAlign = laTop
          end
        end
      end
    end
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 721
    Top = 125
    ExplicitLeft = 721
    ExplicitTop = 125
  end
  inherited FDQryCad: TRESTDWClientSQL
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
      end
      item
        Name = 'FDQryCadField3'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_CENTROCUSTRO_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, DESCENTRO From CENTROCUSTRO WHERE CODIGO=:CODIGO')
    UpdateTableName = 'CENTROCUSTRO'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadDESCENTRO: TStringField
      FieldName = 'DESCENTRO'
      Size = 100
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
        Name = 'DESCENTRO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FDQryFiltroField3'
        DataType = ftInteger
      end>
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'CODIEMPRESA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'P01'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, DESCENTRO From CENTROCUSTRO WHERE CODIEMPRESA=:CO' +
        'DIEMPRESA AND  DESCENTRO LIKE :P01   || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'CENTROCUSTRO'
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroDESCENTRO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCENTRO'
      Size = 100
    end
  end
end
