inherited frmCadPessoa: TfrmCadPessoa
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
            FieldName = 'NOME'
            Title.Caption = 'NOME'
            Width = 244
          end
          item
            FieldName = 'MASP'
            Title.Caption = 'MASP'
            Width = 124
          end
          item
            FieldName = 'TELEFONE'
            Title.Caption = 'TELEFONE'
            Width = 124
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ExplicitTop = -2
          ScrollHeight = 250
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
            Width = 416
            Height = 36
            Hint = ''
            DataField = 'NOME'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 1
            FieldLabel = 'Nome'
            FieldLabelAlign = laTop
          end
          object UniDBEdit3: TUniDBEdit
            Left = 16
            Top = 86
            Width = 160
            Height = 36
            Hint = ''
            DataField = 'MASP'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 2
            FieldLabel = 'MASP'
            FieldLabelAlign = laTop
          end
          object UniDBEdit4: TUniDBEdit
            Left = 193
            Top = 86
            Width = 160
            Height = 36
            Hint = ''
            DataField = 'CPF'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 3
            InputMask.Mask = '999.999.999-99'
            InputMask.UnmaskText = True
            FieldLabel = 'CPF'
            FieldLabelAlign = laTop
            OnExit = UniDBEdit4Exit
          end
          object UniDBDateTimePicker1: TUniDBDateTimePicker
            Left = 366
            Top = 86
            Width = 160
            Height = 36
            Hint = ''
            DataField = 'DATANOMEACAO'
            DataSource = dsCad
            DateTime = 45256.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 4
            FieldLabel = 'Data Nomea'#231#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBDateTimePicker2: TUniDBDateTimePicker
            Left = 550
            Top = 86
            Width = 160
            Height = 36
            Hint = ''
            DataField = 'DATAPUBLIC'
            DataSource = dsCad
            DateTime = 45256.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            TabOrder = 5
            FieldLabel = 'Data Publica'#231#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit5: TUniDBEdit
            Left = 16
            Top = 150
            Width = 352
            Height = 36
            Hint = ''
            DataField = 'ENDERECO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 6
            FieldLabel = 'Endere'#231'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit6: TUniDBEdit
            Left = 382
            Top = 150
            Width = 107
            Height = 36
            Hint = ''
            DataField = 'NUMEROEND'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 7
            FieldLabel = 'N'#250'mero'
            FieldLabelAlign = laTop
          end
          object UniDBEdit7: TUniDBEdit
            Left = 504
            Top = 150
            Width = 206
            Height = 36
            Hint = ''
            DataField = 'BAIRRO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 8
            FieldLabel = 'Bairro'
            FieldLabelAlign = laTop
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 16
            Top = 214
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
            TabOrder = 9
            FieldLabel = 'UF'
            FieldLabelAlign = laTop
            IconItems = <>
            OnExit = UniDBComboBox1Exit
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 175
            Top = 214
            Width = 314
            Height = 36
            Hint = ''
            ListField = 'DESCRICAO'
            ListSource = dsCidade
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODICIDADE'
            DataSource = dsCad
            TabOrder = 10
            Color = clWindow
            FieldLabel = 'Cidade'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBEdit8: TUniDBEdit
            Left = 504
            Top = 214
            Width = 206
            Height = 36
            Hint = ''
            DataField = 'CEP'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 11
            InputMask.Mask = '99.999-999'
            InputMask.UnmaskText = True
            FieldLabel = 'CEP'
            FieldLabelAlign = laTop
          end
          object UniDBEdit9: TUniDBEdit
            Left = 550
            Top = 22
            Width = 160
            Height = 36
            Hint = ''
            DataField = 'TELEFONE'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 12
            InputMask.Mask = '(99) 9 9999-9999'
            InputMask.UnmaskText = True
            FieldLabel = 'Telefone'
            FieldLabelAlign = laTop
          end
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 792
    Top = 128
  end
  inherited FDQryCad: TRESTDWClientSQL
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'MASP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DATAPUBLIC'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATANOMEACAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NUMEROEND'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 40
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
        Name = 'CPF'
        DataType = ftString
        Size = 11
      end>
    AfterScroll = FDQryCadAfterScroll
    SequenceName = 'GEN_PESSOA_ID'
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, MASP, NOME, TELEFONE, DATAPUBLIC, DATANOMEACAO, E' +
        'NDERECO, NUMEROEND, BAIRRO, CEP, UF, CPF, CODICIDADE From PESSOA' +
        ' WHERE CODIGO=:CODIGO')
    UpdateTableName = 'PESSOA'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadMASP: TStringField
      FieldName = 'MASP'
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryCadTELEFONE: TStringField
      FieldName = 'TELEFONE'
      EditMask = '!\(99\) 0 0000-0000;0;_'
      Size = 12
    end
    object FDQryCadDATAPUBLIC: TSQLTimeStampField
      FieldName = 'DATAPUBLIC'
    end
    object FDQryCadDATANOMEACAO: TSQLTimeStampField
      FieldName = 'DATANOMEACAO'
    end
    object FDQryCadENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 40
    end
    object FDQryCadNUMEROEND: TStringField
      FieldName = 'NUMEROEND'
      Size = 6
    end
    object FDQryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
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
    object FDQryCadCPF: TStringField
      FieldName = 'CPF'
      EditMask = '!999.999.999-00;0;_'
      Size = 11
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
        Name = 'MASP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end
      item
        DataType = ftInteger
      end>
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, MASP, NOME, TELEFONE From PESSOA WHERE NOME LIKE ' +
        ':NOME || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'PESSOA'
    object FDQryFiltroCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryFiltroMASP: TStringField
      FieldName = 'MASP'
    end
    object FDQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryFiltroTELEFONE: TStringField
      DisplayWidth = 20
      FieldName = 'TELEFONE'
      EditMask = '!\(99\) 0 0000-0000;0;_'
      Size = 12
    end
  end
  object FDQryCidade: TRESTDWClientSQL
    Active = False
    Filtered = False
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
        DataType = ftInteger
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
        Name = 'UF'
        ParamType = ptInput
        Size = 2
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, DESCRICAO, UF From CIDADES WHERE UF=:UF'
      'ORDER BY DESCRICAO')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 756
    Top = 226
    object FDQryCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryCidadeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object FDQryCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidade: TDataSource
    DataSet = FDQryCidade
    Left = 844
    Top = 290
  end
end
