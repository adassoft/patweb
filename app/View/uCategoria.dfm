inherited frmCategoria: TfrmCategoria
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab1: TUniTabSheet
      inherited UniDBGrid1: TUniDBGrid
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Width = 94
          end
          item
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 364
          end
          item
            FieldName = 'TAXAMENSAL'
            Title.Caption = 'TAXA MENSAL'
            Width = 184
          end
          item
            FieldName = 'TAXAMENSAL'
            Title.Caption = 'TAXA MENSAL'
            Width = 184
          end
          item
            FieldName = 'VIDAUTIL'
            Title.Caption = 'VIDA '#218'TIL'
            Width = 184
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 157
          ScrollWidth = 682
          inherited UniSimplePanel19: TUniSimplePanel
            TabOrder = 7
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
            TabOrder = 0
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBEdit2: TUniDBEdit
            Left = 110
            Top = 55
            Width = 572
            Height = 36
            Hint = ''
            DataField = 'DESCRICAO'
            DataSource = dsCad
            TabOrder = 1
            FieldLabel = 'Descri'#231#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBNumberEdit1: TUniDBNumberEdit
            Left = 16
            Top = 121
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'VIDAUTIL'
            DataSource = dsCad
            TabOrder = 2
            FieldLabel = 'Vida '#250'til'
            FieldLabelAlign = laTop
            DecimalPrecision = 0
            DecimalSeparator = ','
          end
          object UniDBNumberEdit2: TUniDBNumberEdit
            Left = 152
            Top = 121
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'TAXAANUAL'
            DataSource = dsCad
            TabOrder = 3
            FieldLabel = '% Taxa anual'
            FieldLabelAlign = laTop
            DecimalSeparator = ','
            OnExit = UniDBNumberEdit2Exit
          end
          object UniDBNumberEdit3: TUniDBNumberEdit
            Left = 288
            Top = 121
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'TAXAMENSAL'
            DataSource = dsCad
            TabOrder = 4
            ClientEvents.Enabled = False
            FieldLabel = '% Taxa mensal'
            FieldLabelAlign = laTop
            DecimalPrecision = 10
            DecimalSeparator = ','
          end
          object UniDBNumberEdit4: TUniDBNumberEdit
            Left = 425
            Top = 121
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'TAXAACELERADA'
            DataSource = dsCad
            TabOrder = 5
            ClientEvents.Enabled = False
            FieldLabel = '% Taxa Acelerada'
            FieldLabelAlign = laTop
            DecimalPrecision = 10
            DecimalSeparator = ','
          end
          object UniDBNumberEdit5: TUniDBNumberEdit
            Left = 561
            Top = 121
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'TAXAINCENTIVADA'
            DataSource = dsCad
            TabOrder = 6
            ClientEvents.Enabled = False
            FieldLabel = '% Taxa Incentivada'
            FieldLabelAlign = laTop
            DecimalPrecision = 10
            DecimalSeparator = ','
          end
        end
      end
    end
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 46
    Top = 248
    ExplicitLeft = 46
    ExplicitTop = 248
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 752
    Top = 240
  end
  inherited FDQryCad: TRESTDWClientSQL
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
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'ATIVOIMOBILIZADO'
        DataType = ftInteger
      end
      item
        Name = 'DEPRECIACAOACUMULADA'
        DataType = ftInteger
      end
      item
        Name = 'DEPRECIACAO'
        DataType = ftInteger
      end
      item
        Name = 'TAXAMENSAL'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'TAXAACELERADA'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'TAXAINCENTIVADA'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'TAXAANUAL'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'VIDAUTIL'
        DataType = ftSmallint
      end
      item
        Name = 'FDQryCadField12'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_CATEGORIAS_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, DESCRICAO, CODIEMPRESA, ATIVOIMOBILIZADO, DEPRECI' +
        'ACAOACUMULADA, DEPRECIACAO, TAXAMENSAL, TAXAACELERADA, TAXAINCEN' +
        'TIVADA, TAXAANUAL, VIDAUTIL From CATEGORIAS WHERE CODIGO = :CODI' +
        'GO')
    UpdateTableName = 'CATEGORIAS'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object FDQryCadCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object FDQryCadATIVOIMOBILIZADO: TIntegerField
      FieldName = 'ATIVOIMOBILIZADO'
    end
    object FDQryCadDEPRECIACAOACUMULADA: TIntegerField
      FieldName = 'DEPRECIACAOACUMULADA'
    end
    object FDQryCadDEPRECIACAO: TIntegerField
      FieldName = 'DEPRECIACAO'
    end
    object FDQryCadTAXAMENSAL: TFloatField
      FieldName = 'TAXAMENSAL'
    end
    object FDQryCadTAXAACELERADA: TFloatField
      FieldName = 'TAXAACELERADA'
    end
    object FDQryCadTAXAINCENTIVADA: TFloatField
      FieldName = 'TAXAINCENTIVADA'
    end
    object FDQryCadTAXAANUAL: TFloatField
      FieldName = 'TAXAANUAL'
    end
    object FDQryCadVIDAUTIL: TSmallintField
      FieldName = 'VIDAUTIL'
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
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'TAXAMENSAL'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'TAXAANUAL'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'VIDAUTIL'
        DataType = ftSmallint
      end
      item
        Name = 'FDQryFiltroField6'
        DataType = ftInteger
      end>
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
      
        'Select CODIGO, DESCRICAO, VIDAUTIL, TAXAMENSAL, TAXAANUAL  From ' +
        'CATEGORIAS WHERE CODIEMPRESA=:CODIEMPRESA AND  DESCRICAO LIKE :P' +
        '01   || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'CATEGORIAS'
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      DisplayWidth = 60
      FieldName = 'DESCRICAO'
      Size = 100
    end
    object FDQryFiltroTAXAMENSAL: TFloatField
      DisplayLabel = 'TAXA MENSAL'
      DisplayWidth = 30
      FieldName = 'TAXAMENSAL'
    end
    object FDQryFiltroTAXAANUAL: TFloatField
      DisplayLabel = 'TAXA ANUAL'
      DisplayWidth = 30
      FieldName = 'TAXAANUAL'
    end
    object FDQryFiltroVIDAUTIL: TSmallintField
      DisplayLabel = 'VIDA '#218'TIL'
      DisplayWidth = 30
      FieldName = 'VIDAUTIL'
    end
  end
end
