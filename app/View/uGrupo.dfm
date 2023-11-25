inherited frmGrupos: TfrmGrupos
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 58
          ScrollWidth = 710
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
            DataField = 'CODIGOGRUPO'
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
        Name = 'CODIGOGRUPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESGRUPO'
        DataType = ftString
        Size = 60
      end
      item
        DataType = ftInteger
      end>
    BinaryRequest = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGOGRUPO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGOGRUPO, DESGRUPO From GRUPO WHERE CODIGOGRUPO=:CODIG' +
        'OGRUPO')
    UpdateTableName = 'GRUPO'
    object FDQryCadCODIGOGRUPO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CODIGOGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCadDESGRUPO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESGRUPO'
      Size = 60
    end
  end
end
