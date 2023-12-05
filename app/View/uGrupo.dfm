inherited frmGrupos: TfrmGrupos
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 58
          ScrollWidth = 710
          inherited UniSimplePanel19: TUniSimplePanel
            TabOrder = 2
          end
          object UniDBEdit2: TUniDBEdit
            Left = 110
            Top = 22
            Width = 600
            Height = 36
            Hint = ''
            DataField = 'DESGRUPO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 0
            FieldLabel = #211'rg'#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit1: TUniDBEdit
            Left = 16
            Top = 22
            Width = 88
            Height = 36
            Hint = ''
            Enabled = False
            DataField = 'CODIGO'
            DataSource = dsCad
            TabOrder = 1
            Color = 60652
            FieldLabel = 'C'#243'digo'
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
        Name = 'DESGRUPO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FDQryCadField3'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_GRUPO_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, DESGRUPO From GRUPO WHERE CODIGO=:CODIGO')
    UpdateTableName = 'GRUPO'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadDESGRUPO: TStringField
      FieldName = 'DESGRUPO'
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
        Name = 'DESGRUPO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'FDQryFiltroField3'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_GRUPO_ID'
    SequenceField = 'CODIGO'
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
      
        'Select CODIGO, DESGRUPO From GRUPO WHERE CODIEMPRESA=:CODIEMPRES' +
        'A AND DESGRUPO LIKE :P01   || '#39'%'#39
      'ORDER BY CODIGO')
    object FDQryFiltroCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryFiltroDESGRUPO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESGRUPO'
      Size = 100
    end
  end
end
