inherited frmFornecedor: TfrmFornecedor
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ExplicitHeight = 427
          ScrollHeight = 35
          inherited UniSimplePanel19: TUniSimplePanel
            TabOrder = 1
          end
          object UniSimplePanel1: TUniSimplePanel
            AlignWithMargins = True
            Left = 3
            Top = 38
            Width = 933
            Height = 386
            Hint = ''
            ParentColor = False
            Align = alClient
            AlignmentControl = uniAlignmentClient
            ParentAlignmentControl = False
            TabOrder = 0
            Layout = 'border'
            ExplicitTop = 3
            ExplicitHeight = 206
            object UniSimplePanel7: TUniSimplePanel
              Left = 0
              Top = 0
              Width = 933
              Height = 386
              Hint = ''
              ParentColor = False
              Align = alClient
              AutoScroll = True
              TabOrder = 1
              Layout = 'column'
              LayoutConfig.Region = 'center'
              ExplicitHeight = 384
              ScrollHeight = 386
              ScrollWidth = 933
              object UniSimplePanel2: TUniSimplePanel
                Left = 20
                Top = 1
                Width = 97
                Height = 57
                Hint = ''
                CreateOrder = 1
                ParentColor = False
                TabOrder = 0
                Layout = 'column'
                object UniDBEdit1: TUniDBEdit
                  Left = 6
                  Top = 18
                  Width = 88
                  Height = 36
                  Hint = ''
                  Enabled = False
                  DataField = 'CODIGO'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  Color = 60652
                  FieldLabel = 'C'#243'digo'
                  FieldLabelAlign = laTop
                end
              end
              object UniSimplePanel3: TUniSimplePanel
                Left = 123
                Top = 1
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 2
                ParentColor = False
                TabOrder = 1
                Layout = 'column'
                object UniDBEdit2: TUniDBEdit
                  Left = 3
                  Top = 18
                  Width = 334
                  Height = 36
                  Hint = ''
                  DataField = 'NOME'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'Fonecedor'
                  FieldLabelAlign = laTop
                end
              end
              object UniSimplePanel11: TUniSimplePanel
                Left = 20
                Top = 79
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 3
                ParentColor = False
                TabOrder = 2
                Layout = 'column'
                object UniDBEdit3: TUniDBEdit
                  Left = 3
                  Top = 21
                  Width = 334
                  Height = 36
                  Hint = ''
                  DataField = 'CNPJ'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'CNPJ'
                  FieldLabelAlign = laTop
                  OnExit = UniDBEdit3Exit
                end
              end
              object UniSimplePanel14: TUniSimplePanel
                Left = 14
                Top = 160
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 5
                ParentColor = False
                TabOrder = 4
                Layout = 'column'
                LayoutAttribs.Columns = 3
                object UniDBEdit5: TUniDBEdit
                  Left = 3
                  Top = 21
                  Width = 334
                  Height = 36
                  Hint = ''
                  DataField = 'EMAIL'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'E-mail'
                  FieldLabelAlign = laTop
                end
              end
              object UniSimplePanel18: TUniSimplePanel
                Left = 365
                Top = 160
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 6
                ParentColor = False
                TabOrder = 5
                Layout = 'column'
                object UniDBEdit6: TUniDBEdit
                  Left = 3
                  Top = 21
                  Width = 334
                  Height = 36
                  Hint = ''
                  DataField = 'SITE'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'Site'
                  FieldLabelAlign = laTop
                end
              end
              object UniSimplePanel6: TUniSimplePanel
                Left = 14
                Top = 238
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 7
                ParentColor = False
                TabOrder = 6
                Layout = 'column'
                LayoutAttribs.Columns = 1
                object UniDBEdit7: TUniDBEdit
                  Left = 3
                  Top = 18
                  Width = 246
                  Height = 36
                  Hint = ''
                  DataField = 'ENDERECO'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'Endere'#231'o'
                  FieldLabelAlign = laTop
                end
                object UniDBEdit8: TUniDBEdit
                  Left = 255
                  Top = 18
                  Width = 83
                  Height = 36
                  Hint = ''
                  DataField = 'NUMERO'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 2
                  FieldLabel = 'N'#250'mero'
                  FieldLabelAlign = laTop
                end
              end
              object UniSimplePanel17: TUniSimplePanel
                Left = 365
                Top = 235
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 8
                ParentColor = False
                TabOrder = 7
                Layout = 'column'
                LayoutAttribs.Columns = 3
                object UniDBComboBox1: TUniDBComboBox
                  Left = 3
                  Top = 18
                  Width = 86
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
                  TabOrder = 1
                  FieldLabel = 'UF'
                  FieldLabelAlign = laTop
                  IconItems = <>
                  OnExit = UniDBComboBox1Exit
                end
                object UniDBLookupComboBox1: TUniDBLookupComboBox
                  Left = 95
                  Top = 18
                  Width = 239
                  Height = 36
                  Hint = ''
                  ListField = 'DESCRICAO'
                  ListSource = dmComum.dsCidade
                  KeyField = 'CODIGO'
                  ListFieldIndex = 0
                  DataField = 'CODICIDADE'
                  DataSource = dsCad
                  TabOrder = 2
                  Color = clWindow
                  FieldLabel = 'Cidade'
                  FieldLabelAlign = laTop
                  ReadOnlyMode = urmNotEditable
                end
              end
              object UniSimplePanel4: TUniSimplePanel
                Left = 14
                Top = 310
                Width = 345
                Height = 57
                Hint = ''
                CreateOrder = 9
                ParentColor = False
                TabOrder = 8
                Layout = 'column'
                LayoutAttribs.Columns = 3
                object UniDBEdit9: TUniDBEdit
                  Left = 3
                  Top = 18
                  Width = 83
                  Height = 36
                  Hint = ''
                  DataField = 'CEP'
                  DataSource = dsCad
                  CharCase = ecUpperCase
                  TabOrder = 1
                  FieldLabel = 'CEP'
                  FieldLabelAlign = laTop
                end
              end
            end
          end
        end
      end
    end
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 766
    Top = 125
    ExplicitLeft = 766
    ExplicitTop = 125
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 808
    Top = 88
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SITE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CODICIDADE'
        DataType = ftInteger
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'FDQryCadField14'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_FORNECEDORES_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, NOME, CNPJ, TELEFONE, EMAIL, SITE, CEP, UF, CODIC' +
        'IDADE, BAIRRO, ENDERECO, NUMERO, COMPLEMENTO From FORNECEDORES W' +
        'HERE CODIGO=:CODIGO')
    UpdateTableName = 'FORNECEDORES'
    Left = 724
    Top = 96
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object FDQryCadCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object FDQryCadTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 12
    end
    object FDQryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object FDQryCadSITE: TStringField
      FieldName = 'SITE'
      Size = 60
    end
    object FDQryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object FDQryCadUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object FDQryCadCODICIDADE: TIntegerField
      FieldName = 'CODICIDADE'
    end
    object FDQryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object FDQryCadENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object FDQryCadNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object FDQryCadCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
  end
  inherited dsCad: TDataSource
    Left = 721
    Top = 162
  end
  inherited dsFiltro: TDataSource
    Left = 617
    Top = 160
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'P01'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, NOME, CNPJ, TELEFONE, EMAIL, SITE From FORNECEDOR' +
        'ES WHERE NOME LIKE :P01   || '#39'%'#39
      'ORDER BY CODIGO')
    Left = 620
    Top = 96
  end
end
