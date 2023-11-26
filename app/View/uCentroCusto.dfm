inherited frmCentroCusto: TfrmCentroCusto
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab1: TUniTabSheet
      inherited UniDBGrid1: TUniDBGrid
        ClientEvents.ExtEvents.Strings = ()
      end
    end
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
            CharCase = ecUpperCase
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
        DataType = ftInteger
      end>
    SequenceName = 'GEN_CENTROCUSTRO_ID'
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
        DataType = ftInteger
      end>
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'DESCENTRO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, DESCENTRO From CENTROCUSTRO WHERE DESCENTRO LIKE ' +
        ':DESCENTRO || '#39'%'#39
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
