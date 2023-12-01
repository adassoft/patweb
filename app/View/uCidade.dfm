inherited frmCidades: TfrmCidades
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 130
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
            DataField = 'DESCRICAO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 1
            FieldLabel = 'Cidade'
            FieldLabelAlign = laTop
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 16
            Top = 94
            Width = 145
            Height = 36
            Hint = ''
            DataField = 'UF'
            DataSource = dsCad
            Items.Strings = (
              'AL'
              'AP'
              'AM'
              'BA'
              'CE'
              'DF'
              'ES'
              'GO'
              'MA'
              'MT'
              'MS'
              'MG'
              'PA'
              'PB'
              'PR'
              'PE'
              'PI'
              'RJ'
              'RN'
              'RS'
              'RO'
              'RR'
              'SC'
              'SP'
              'SE'
              'TO')
            TabOrder = 2
            FieldLabel = 'UF'
            FieldLabelAlign = laTop
            IconItems = <>
          end
          object UniDBEdit3: TUniDBEdit
            Left = 182
            Top = 94
            Width = 171
            Height = 36
            Hint = ''
            DataField = 'CEP'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 3
            FieldLabel = 'CEP'
            FieldLabelAlign = laTop
          end
          object UniDBEdit4: TUniDBEdit
            Left = 374
            Top = 94
            Width = 171
            Height = 36
            Hint = ''
            DataField = 'CODIIBGE'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 4
            FieldLabel = 'C'#243'digo do IBGE'
            FieldLabelAlign = laTop
          end
        end
      end
    end
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
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
      end
      item
        Name = 'CODIIBGE'
        DataType = ftLargeint
      end
      item
        Name = 'FDQryCadField6'
        DataType = ftString
        Size = 8
      end>
    SequenceName = 'GEN_CIDADES_ID'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CEP, CODIGO, DESCRICAO, UF, CODIIBGE From CIDADES WHERE C' +
        'ODIGO=:CODIGO')
    UpdateTableName = 'CIDADES'
    object FDQryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object FDQryCadCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object FDQryCadUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object FDQryCadCODIIBGE: TLargeintField
      FieldName = 'CODIIBGE'
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
        Size = 60
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CODIIBGE'
        DataType = ftLargeint
      end
      item
        Name = 'FDQryFiltroField6'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_CIDADES_ID'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, DESCRICAO, UF,  CEP, CODIIBGE From CIDADES WHERE ' +
        'DESCRICAO LIKE :DESCRICAO || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'CIDADES'
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroDESCRICAO: TStringField
      DisplayLabel = 'DESCRI'#199#195'O'
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object FDQryFiltroUF: TStringField
      DisplayWidth = 15
      FieldName = 'UF'
      Size = 2
    end
    object FDQryFiltroCEP: TStringField
      DisplayWidth = 15
      FieldName = 'CEP'
      Size = 8
    end
    object FDQryFiltroCODIIBGE: TLargeintField
      DisplayLabel = 'C'#211'DIGO IBGE'
      DisplayWidth = 20
      FieldName = 'CODIIBGE'
    end
  end
end
