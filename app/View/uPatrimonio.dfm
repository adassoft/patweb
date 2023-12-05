inherited frmCadPatrimonio: TfrmCadPatrimonio
  Height = 1800
  ExplicitHeight = 1800
  inherited PageCadastro: TUniPageControl
    Height = 1747
    ActivePage = Tab2
    ExplicitHeight = 1747
    inherited Tab1: TUniTabSheet
      ExplicitHeight = 1719
      inherited UniDBGrid1: TUniDBGrid
        Height = 1666
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitHeight = 1719
      inherited UniPanel1: TUniPanel
        Height = 1719
        ExplicitHeight = 1719
        inherited UniScrollBox1: TUniScrollBox
          Left = 25
          Width = 916
          Height = 1719
          ExplicitLeft = 25
          ExplicitWidth = 916
          ExplicitHeight = 1717
          ScrollHeight = 1097
          ScrollWidth = 666
          object UniContainerPanel1: TUniContainerPanel [0]
            Tag = 2
            Left = 17
            Top = 466
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            Margins.Top = 40
            CreateOrder = 20
            ParentColor = False
            TabOrder = 13
            object UniLabel17: TUniLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 28
              Height = 19
              Hint = ''
              TextConversion = txtHTML
              AutoSize = False
              Caption = '<i class="fas fa-angle-double-down"></i>'
              Align = alLeft
              ParentFont = False
              Font.Color = 6727914
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object UniLabel18: TUniLabel
              Left = 34
              Top = 0
              Width = 129
              Height = 23
              Hint = ''
              Caption = 'Detalhes do bem'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniContainerPanel3: TUniContainerPanel [1]
            Tag = 2
            Left = 17
            Top = 673
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            CreateOrder = 28
            ParentColor = False
            TabOrder = 18
            object UniLabel2: TUniLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 28
              Height = 19
              Hint = ''
              TextConversion = txtHTML
              AutoSize = False
              Caption = '<i class="fas fa-angle-double-down"></i>'
              Align = alLeft
              ParentFont = False
              Font.Color = 6727914
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object UniLabel3: TUniLabel
              Left = 34
              Top = 0
              Width = 148
              Height = 23
              Hint = ''
              Caption = 'Dados da aquisi'#231#227'o'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniContainerPanel6: TUniContainerPanel [2]
            Tag = 2
            Left = 17
            Top = 838
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            CreateOrder = 45
            ParentColor = False
            TabOrder = 22
            object UniLabel8: TUniLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 28
              Height = 19
              Hint = ''
              TextConversion = txtHTML
              AutoSize = False
              Caption = '<i class="fas fa-angle-double-down"></i>'
              Align = alLeft
              ParentFont = False
              Font.Color = 6727914
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object UniLabel9: TUniLabel
              Left = 34
              Top = 0
              Width = 131
              Height = 23
              Hint = ''
              Caption = 'Dados do ve'#237'culo'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniContainerPanel5: TUniContainerPanel [3]
            Tag = 2
            Left = 17
            Top = 950
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            CreateOrder = 45
            ParentColor = False
            TabOrder = 23
            object UniLabel6: TUniLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 28
              Height = 19
              Hint = ''
              TextConversion = txtHTML
              AutoSize = False
              Caption = '<i class="fas fa-angle-double-down"></i>'
              Align = alLeft
              ParentFont = False
              Font.Color = 6727914
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 2
            end
            object UniLabel7: TUniLabel
              Left = 34
              Top = 0
              Width = 53
              Height = 23
              Hint = ''
              Caption = 'Im'#243'vel'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          inherited UniSimplePanel19: TUniSimplePanel
            Width = 914
            ExplicitWidth = 914
          end
          object UniDBEdit1: TUniDBEdit
            Left = 17
            Top = 67
            Width = 124
            Height = 36
            Hint = ''
            Enabled = False
            DataField = 'CODIGO'
            DataSource = dsCad
            Align = alCustom
            ParentFont = False
            Font.Height = -13
            TabOrder = 1
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBEdit2: TUniDBEdit
            Left = 147
            Top = 67
            Width = 106
            Height = 36
            Hint = ''
            DataField = 'TOMBAMENTO'
            DataSource = dsCad
            CharCase = ecUpperCase
            Align = alCustom
            ParentFont = False
            Font.Height = -13
            TabOrder = 2
            FieldLabel = 'Tombamento'
            FieldLabelAlign = laTop
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 259
            Top = 67
            Width = 120
            Height = 36
            Hint = ''
            Align = alCustom
            DataField = 'TIPODEBEM'
            DataSource = dsCad
            Items.Strings = (
              'M'#243'veis'
              'Im'#243'veis')
            ParentFont = False
            Font.Height = -13
            TabOrder = 3
            FieldLabel = 'Tipo de bem'
            FieldLabelAlign = laTop
            IconItems = <>
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 17
            Top = 134
            Width = 313
            Height = 36
            Hint = ''
            ListField = 'UNIDADE'
            ListSource = dmComum.dsUnidade
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIUNIDADE'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Unidade administrativ'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBLookupComboBox8: TUniDBLookupComboBox
            Left = 346
            Top = 134
            Width = 320
            Height = 36
            Hint = ''
            ListField = 'DESCENTRO'
            ListSource = dmComum.dsCentro
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODICENTRO'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 5
            Color = clWindow
            FieldLabel = 'Centro de custo'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 346
            Top = 198
            Width = 320
            Height = 36
            Hint = ''
            ListField = 'NOME'
            ListSource = dmComum.dsFornecedor
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIFORNECEDOR'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 6
            Color = clWindow
            FieldLabel = 'Fornecedor'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBLookupComboBox7: TUniDBLookupComboBox
            Left = 17
            Top = 198
            Width = 313
            Height = 36
            Hint = ''
            ListField = 'NOME'
            ListSource = dmComum.dsPessoa
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIPESSOA'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 7
            Color = clWindow
            FieldLabel = 'Colaborador respons'#225'vel pelo bem'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBLookupComboBox9: TUniDBLookupComboBox
            Left = 17
            Top = 265
            Width = 313
            Height = 36
            Hint = ''
            ListField = 'DESCRICAO'
            ListSource = dmComum.dsCategoria
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODICATEGORIA'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 8
            Color = clWindow
            FieldLabel = 'Categoria'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBLookupComboBox11: TUniDBLookupComboBox
            Left = 346
            Top = 265
            Width = 320
            Height = 36
            Hint = ''
            ListField = 'DESGRUPO'
            ListSource = dmComum.dsGrupo
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIGOGRUPO'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 9
            Color = clWindow
            FieldLabel = 'Grupo'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBComboBox3: TUniDBComboBox
            Left = 346
            Top = 329
            Width = 320
            Height = 36
            Hint = ''
            Align = alCustom
            DataField = 'STATUS'
            DataSource = dsCad
            Items.Strings = (
              'Ativo'
              'Emprestado'
              'Baixado'
              'Alienado')
            ParentFont = False
            Font.Height = -13
            TabOrder = 10
            FieldLabel = 'Status'
            FieldLabelAlign = laTop
            IconItems = <>
          end
          object UniDBLookupComboBox3: TUniDBLookupComboBox
            Left = 17
            Top = 329
            Width = 320
            Height = 36
            Hint = ''
            ListField = 'NOME'
            ListSource = dmComum.dsSetor
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODISETOR'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 12
            Color = clWindow
            FieldLabel = 'Setor'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBMemo1: TUniDBMemo
            Left = 17
            Top = 497
            Width = 649
            Height = 111
            Hint = ''
            DataField = 'DESCDETALHADA'
            DataSource = dsCad
            ParentFont = False
            Font.Height = -13
            Align = alCustom
            TabOrder = 14
            FieldLabel = 'Descri'#231#227'o detalhada'
            FieldLabelAlign = laTop
          end
          object UniDBComboBox2: TUniDBComboBox
            Left = 358
            Top = 614
            Width = 156
            Height = 36
            Hint = ''
            Align = alCustom
            DataField = 'ESTADOCONS'
            DataSource = dsCad
            Items.Strings = (
              'Novo'
              'Bom'
              'Regular'
              'Inserv'#237'vel'
              '')
            ParentFont = False
            Font.Height = -13
            TabOrder = 17
            FieldLabel = 'Estado Conserva'#231#227'o'
            FieldLabelAlign = laTop
            IconItems = <>
          end
          object UniDBNumberEdit1: TUniDBNumberEdit
            Left = 17
            Top = 719
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'NOTAFISCAL'
            DataSource = dsCad
            Align = alCustom
            ParentFont = False
            Font.Height = -13
            TabOrder = 19
            FieldLabel = 'N'#250'mero da nota fiscal'
            FieldLabelAlign = laTop
            DecimalPrecision = 0
            DecimalSeparator = ','
          end
          object UniDBNumberEdit2: TUniDBNumberEdit
            Left = 188
            Top = 719
            Width = 326
            Height = 36
            Hint = ''
            DataField = 'CHAVENOTA'
            DataSource = dsCad
            Align = alCustom
            ParentFont = False
            Font.Height = -13
            TabOrder = 20
            FieldLabel = 'Chave da nota'
            FieldLabelAlign = laTop
            DecimalPrecision = 0
            DecimalSeparator = ','
          end
          object UniDBDateTimePicker1: TUniDBDateTimePicker
            Left = 530
            Top = 719
            Width = 136
            Height = 36
            Hint = ''
            DataField = 'DATACOMPTA'
            DataSource = dsCad
            DateTime = 45257.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Align = alCustom
            TabOrder = 21
            ParentFont = False
            Font.Height = -13
            FieldLabel = 'Data Compra'
            FieldLabelAlign = laTop
          end
          object UniDBEdit3: TUniDBEdit
            Left = 20
            Top = 387
            Width = 646
            Height = 36
            Hint = ''
            DataField = 'DESCREDUZAIDA'
            DataSource = dsCad
            TabOrder = 11
            FieldLabel = 'Descri'#231#227'o reduzida'
            FieldLabelAlign = laTop
          end
          object UniDBEdit16: TUniDBEdit
            Left = 17
            Top = 614
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'MARCA'
            DataSource = dsCad
            TabOrder = 15
            FieldLabel = 'Marca'
            FieldLabelAlign = laTop
          end
          object UniDBEdit4: TUniDBEdit
            Left = 188
            Top = 614
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'PLACASERIE'
            DataSource = dsCad
            TabOrder = 16
            FieldLabel = 'Placa/S'#233'rie'
            FieldLabelAlign = laTop
          end
          object UniDBEdit5: TUniDBEdit
            Left = 17
            Top = 877
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'VEICULORENAVAM'
            DataSource = dsCad
            TabOrder = 24
            FieldLabel = 'Renavam'
            FieldLabelAlign = laTop
          end
          object UniDBEdit8: TUniDBEdit
            Left = 179
            Top = 877
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'VEICULOCHASSI'
            DataSource = dsCad
            TabOrder = 25
            FieldLabel = 'Chassis'
            FieldLabelAlign = laTop
          end
          object UniDBEdit9: TUniDBEdit
            Left = 341
            Top = 877
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'VEICULOMODELO'
            DataSource = dsCad
            TabOrder = 26
            FieldLabel = 'Modelo'
            FieldLabelAlign = laTop
          end
          object UniDBEdit10: TUniDBEdit
            Left = 503
            Top = 877
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'VEICULOANO'
            DataSource = dsCad
            TabOrder = 27
            FieldLabel = 'Ano'
            FieldLabelAlign = laTop
          end
          object UniDBEdit11: TUniDBEdit
            Left = 17
            Top = 783
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'PREGAO'
            DataSource = dsCad
            TabOrder = 28
            FieldLabel = 'Licita'#231#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit6: TUniDBEdit
            Left = 188
            Top = 783
            Width = 326
            Height = 36
            Hint = ''
            DataField = 'CONVENIO'
            DataSource = dsCad
            TabOrder = 29
            FieldLabel = 'Conv'#234'nio'
            FieldLabelAlign = laTop
          end
          object UniDBEdit7: TUniDBEdit
            Left = 530
            Top = 783
            Width = 136
            Height = 36
            Hint = ''
            DataField = 'VALOR'
            DataSource = dsCad
            TabOrder = 30
            FieldLabel = 'Valor'
            FieldLabelAlign = laTop
          end
          object UniDBEdit12: TUniDBEdit
            Left = 17
            Top = 997
            Width = 320
            Height = 36
            Hint = ''
            DataField = 'IMENDERECO'
            DataSource = dsCad
            TabOrder = 31
            FieldLabel = 'Endere'#231'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit13: TUniDBEdit
            Left = 343
            Top = 997
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'IMNUMERO'
            DataSource = dsCad
            TabOrder = 32
            FieldLabel = 'N'#250'mero'
            FieldLabelAlign = laTop
          end
          object UniDBEdit14: TUniDBEdit
            Left = 505
            Top = 997
            Width = 156
            Height = 36
            Hint = ''
            DataField = 'IMCOMPLEMENTO'
            DataSource = dsCad
            TabOrder = 33
            FieldLabel = 'Complemento'
            FieldLabelAlign = laTop
          end
          object UniDBEdit15: TUniDBEdit
            Left = 17
            Top = 1061
            Width = 320
            Height = 36
            Hint = ''
            DataField = 'IMBAIRRO'
            DataSource = dsCad
            TabOrder = 34
            FieldLabel = 'Bairro'
            FieldLabelAlign = laTop
          end
          object UniDBEdit17: TUniDBEdit
            Left = 343
            Top = 1061
            Width = 320
            Height = 36
            Hint = ''
            DataField = 'IMCIDADE'
            DataSource = dsCad
            TabOrder = 35
            FieldLabel = 'Cidade'
            FieldLabelAlign = laTop
          end
        end
        object UniSimplePanel1: TUniSimplePanel
          Left = 0
          Top = 0
          Width = 25
          Height = 1719
          Hint = ''
          ParentColor = False
          Align = alLeft
          TabOrder = 2
        end
      end
    end
  end
  inherited UniContainerPanel2: TUniContainerPanel
    Top = 1789
    ExplicitTop = 1789
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 718
    ExplicitLeft = 718
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIUNIDADE'
        DataType = ftSmallint
      end
      item
        Name = 'CODICATEGORIA'
        DataType = ftInteger
      end
      item
        Name = 'CODIGOGRUPO'
        DataType = ftInteger
      end
      item
        Name = 'CODICENTRO'
        DataType = ftInteger
      end
      item
        Name = 'CODIPESSOA'
        DataType = ftInteger
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'TOMBAMENTO'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'PLACASERIE'
        DataType = ftString
        Size = 26
      end
      item
        Name = 'MARCA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DESCREDUZAIDA'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DESCDETALHADA'
        DataType = ftMemo
      end
      item
        Name = 'ESTADOCONS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'CODISETOR'
        DataType = ftInteger
      end
      item
        Name = 'BAIXA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DATA_BAIXA'
        DataType = ftTimeStamp
      end
      item
        Name = 'DOCUMENTOBAIXA'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'STATUS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'EMPRESTIMO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OBS'
        DataType = ftMemo
      end
      item
        Name = 'MODIFICADOPOR'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DATAMODIFICAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'CODIFORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'NOTAFISCAL'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHAVENOTA'
        DataType = ftString
        Size = 44
      end
      item
        Name = 'DATACOMPTA'
        DataType = ftTimeStamp
      end
      item
        Name = 'PREGAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CONVENIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PATCODIGOBARRA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATAIMPLANTACAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'FIMGARANTIA'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAACEITE'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATACADASTRO'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAVISTORIA'
        DataType = ftTimeStamp
      end
      item
        Name = 'DATAMARCACAO'
        DataType = ftTimeStamp
      end
      item
        Name = 'VEICULOCHASSI'
        DataType = ftString
        Size = 17
      end
      item
        Name = 'VEICULORENAVAM'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'VEICULOANO'
        DataType = ftString
        Size = 4
      end
      item
        Name = 'VEICULOMODELO'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'TIPODEBEM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IMTITULARIDADE'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'IMADMINISTRACAO'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'IMTIPOIMOVEL'
        DataType = ftString
        Size = 22
      end
      item
        Name = 'IMREGISTOORGAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'IMCARTORIO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'IMOBSERVACAO'
        DataType = ftMemo
      end
      item
        Name = 'IMORGAOINSCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'IDTIPOSUO'
        DataType = ftInteger
      end
      item
        Name = 'IMENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'IMBAIRRO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'IMNUMERO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'IMCOMPLEMENTO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IMCIDADE'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'IMUF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IMCEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'AREATOTAL'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'AREACONSTRUIDA'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'UNAREATOTAL'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'UNAREACONSTRUIDA'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'IMOVEL'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FDQryCadField62'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_PATRIMONIO_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    PATRIMONIO.CODIGO,'
      '    PATRIMONIO.CODIUNIDADE,'
      '    PATRIMONIO.CODICATEGORIA,'
      '    PATRIMONIO.CODIGOGRUPO,'
      '    PATRIMONIO.CODICENTRO,'
      '    PATRIMONIO.CODIPESSOA,'
      '    PATRIMONIO.CODIEMPRESA,'
      '    PATRIMONIO.TOMBAMENTO,'
      '    PATRIMONIO.PLACASERIE,'
      '    PATRIMONIO.MARCA,'
      '    PATRIMONIO.DESCREDUZAIDA,'
      '    PATRIMONIO.DESCDETALHADA,'
      '    PATRIMONIO.ESTADOCONS,'
      '    PATRIMONIO.VALOR,'
      '    PATRIMONIO.CODISETOR,'
      '    PATRIMONIO.BAIXA,'
      '    PATRIMONIO.DATA_BAIXA,'
      '    PATRIMONIO.DOCUMENTOBAIXA,'
      '    PATRIMONIO.STATUS,'
      '    PATRIMONIO.EMPRESTIMO,'
      '    PATRIMONIO.OBS,'
      '    PATRIMONIO.MODIFICADOPOR,'
      '    PATRIMONIO.DATAMODIFICAO,'
      '    PATRIMONIO.CODIFORNECEDOR,'
      '    PATRIMONIO.NOTAFISCAL,'
      '    PATRIMONIO.CHAVENOTA,'
      '    PATRIMONIO.DATACOMPTA,'
      '    PATRIMONIO.PREGAO,'
      '    PATRIMONIO.CONVENIO,'
      '    PATRIMONIO.PATCODIGOBARRA,'
      '    PATRIMONIO.DATAIMPLANTACAO,'
      '    PATRIMONIO.FIMGARANTIA,'
      '    PATRIMONIO.DATAACEITE,'
      '    PATRIMONIO.DATACADASTRO,'
      '    PATRIMONIO.DATAVISTORIA,'
      '    PATRIMONIO.DATAMARCACAO,'
      '    PATRIMONIO.VEICULOCHASSI,'
      '    PATRIMONIO.VEICULORENAVAM,'
      '    PATRIMONIO.VEICULOANO,'
      '    PATRIMONIO.VEICULOMODELO,'
      '    PATRIMONIO.TIPODEBEM,'
      '    PATRIMONIO.IMTITULARIDADE,'
      '    PATRIMONIO.IMADMINISTRACAO,'
      '    PATRIMONIO.IMTIPOIMOVEL,'
      '    PATRIMONIO.IMREGISTOORGAO,'
      '    PATRIMONIO.IMCARTORIO,'
      '    PATRIMONIO.IMOBSERVACAO,'
      '    PATRIMONIO.IMORGAOINSCRICAO,'
      '    PATRIMONIO.IDTIPOSUO,'
      '    PATRIMONIO.IMENDERECO,'
      '    PATRIMONIO.IMBAIRRO,'
      '    PATRIMONIO.IMNUMERO,'
      '    PATRIMONIO.IMCOMPLEMENTO,'
      '    PATRIMONIO.IMCIDADE,'
      '    PATRIMONIO.IMUF,'
      '    PATRIMONIO.IMCEP,'
      '    PATRIMONIO.AREATOTAL,'
      '    PATRIMONIO.AREACONSTRUIDA,'
      '    PATRIMONIO.UNAREATOTAL,'
      '    PATRIMONIO.UNAREACONSTRUIDA,'
      '    PATRIMONIO.IMOVEL'
      'From'
      '    PATRIMONIO'
      'Where'
      '    PATRIMONIO.CODIGO = :CODIGO')
    UpdateTableName = 'PATRIMONIO'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadCODIUNIDADE: TSmallintField
      FieldName = 'CODIUNIDADE'
    end
    object FDQryCadCODICATEGORIA: TIntegerField
      FieldName = 'CODICATEGORIA'
    end
    object FDQryCadCODIGOGRUPO: TIntegerField
      FieldName = 'CODIGOGRUPO'
    end
    object FDQryCadCODICENTRO: TIntegerField
      FieldName = 'CODICENTRO'
    end
    object FDQryCadCODIPESSOA: TIntegerField
      FieldName = 'CODIPESSOA'
    end
    object FDQryCadCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object FDQryCadTOMBAMENTO: TFloatField
      FieldName = 'TOMBAMENTO'
    end
    object FDQryCadPLACASERIE: TStringField
      FieldName = 'PLACASERIE'
      Size = 26
    end
    object FDQryCadMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object FDQryCadDESCREDUZAIDA: TStringField
      FieldName = 'DESCREDUZAIDA'
      Size = 250
    end
    object FDQryCadDESCDETALHADA: TMemoField
      FieldName = 'DESCDETALHADA'
      BlobType = ftMemo
    end
    object FDQryCadESTADOCONS: TStringField
      FieldName = 'ESTADOCONS'
      Size = 10
    end
    object FDQryCadVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object FDQryCadCODISETOR: TIntegerField
      FieldName = 'CODISETOR'
    end
    object FDQryCadBAIXA: TStringField
      FieldName = 'BAIXA'
      Size = 1
    end
    object FDQryCadDATA_BAIXA: TSQLTimeStampField
      FieldName = 'DATA_BAIXA'
    end
    object FDQryCadDOCUMENTOBAIXA: TStringField
      FieldName = 'DOCUMENTOBAIXA'
      Size = 16
    end
    object FDQryCadSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
    object FDQryCadEMPRESTIMO: TStringField
      FieldName = 'EMPRESTIMO'
      Size = 1
    end
    object FDQryCadOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
    end
    object FDQryCadMODIFICADOPOR: TStringField
      FieldName = 'MODIFICADOPOR'
      Size = 35
    end
    object FDQryCadDATAMODIFICAO: TSQLTimeStampField
      FieldName = 'DATAMODIFICAO'
    end
    object FDQryCadCODIFORNECEDOR: TIntegerField
      FieldName = 'CODIFORNECEDOR'
    end
    object FDQryCadNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
    end
    object FDQryCadCHAVENOTA: TStringField
      FieldName = 'CHAVENOTA'
      Size = 44
    end
    object FDQryCadDATACOMPTA: TSQLTimeStampField
      FieldName = 'DATACOMPTA'
    end
    object FDQryCadPREGAO: TStringField
      FieldName = 'PREGAO'
      Size = 30
    end
    object FDQryCadCONVENIO: TStringField
      FieldName = 'CONVENIO'
    end
    object FDQryCadPATCODIGOBARRA: TStringField
      FieldName = 'PATCODIGOBARRA'
      Size = 10
    end
    object FDQryCadDATAIMPLANTACAO: TSQLTimeStampField
      FieldName = 'DATAIMPLANTACAO'
    end
    object FDQryCadFIMGARANTIA: TSQLTimeStampField
      FieldName = 'FIMGARANTIA'
    end
    object FDQryCadDATAACEITE: TSQLTimeStampField
      FieldName = 'DATAACEITE'
    end
    object FDQryCadDATACADASTRO: TSQLTimeStampField
      FieldName = 'DATACADASTRO'
    end
    object FDQryCadDATAVISTORIA: TSQLTimeStampField
      FieldName = 'DATAVISTORIA'
    end
    object FDQryCadDATAMARCACAO: TSQLTimeStampField
      FieldName = 'DATAMARCACAO'
    end
    object FDQryCadVEICULOCHASSI: TStringField
      FieldName = 'VEICULOCHASSI'
      Size = 17
    end
    object FDQryCadVEICULORENAVAM: TStringField
      FieldName = 'VEICULORENAVAM'
      Size = 11
    end
    object FDQryCadVEICULOANO: TStringField
      FieldName = 'VEICULOANO'
      Size = 4
    end
    object FDQryCadVEICULOMODELO: TStringField
      FieldName = 'VEICULOMODELO'
      Size = 25
    end
    object FDQryCadTIPODEBEM: TStringField
      FieldName = 'TIPODEBEM'
      Size = 1
    end
    object FDQryCadIMTITULARIDADE: TStringField
      FieldName = 'IMTITULARIDADE'
      Size = 9
    end
    object FDQryCadIMADMINISTRACAO: TStringField
      FieldName = 'IMADMINISTRACAO'
      Size = 8
    end
    object FDQryCadIMTIPOIMOVEL: TStringField
      FieldName = 'IMTIPOIMOVEL'
      Size = 22
    end
    object FDQryCadIMREGISTOORGAO: TStringField
      FieldName = 'IMREGISTOORGAO'
      Size = 10
    end
    object FDQryCadIMCARTORIO: TStringField
      FieldName = 'IMCARTORIO'
      Size = 30
    end
    object FDQryCadIMOBSERVACAO: TMemoField
      FieldName = 'IMOBSERVACAO'
      BlobType = ftMemo
    end
    object FDQryCadIMORGAOINSCRICAO: TStringField
      FieldName = 'IMORGAOINSCRICAO'
      Size = 40
    end
    object FDQryCadIDTIPOSUO: TIntegerField
      FieldName = 'IDTIPOSUO'
    end
    object FDQryCadIMENDERECO: TStringField
      FieldName = 'IMENDERECO'
      Size = 100
    end
    object FDQryCadIMBAIRRO: TStringField
      FieldName = 'IMBAIRRO'
      Size = 50
    end
    object FDQryCadIMNUMERO: TStringField
      FieldName = 'IMNUMERO'
      Size = 6
    end
    object FDQryCadIMCOMPLEMENTO: TStringField
      FieldName = 'IMCOMPLEMENTO'
    end
    object FDQryCadIMCIDADE: TStringField
      FieldName = 'IMCIDADE'
      Size = 80
    end
    object FDQryCadIMUF: TStringField
      FieldName = 'IMUF'
      Size = 2
    end
    object FDQryCadIMCEP: TStringField
      FieldName = 'IMCEP'
      Size = 8
    end
    object FDQryCadAREATOTAL: TFloatField
      FieldName = 'AREATOTAL'
    end
    object FDQryCadAREACONSTRUIDA: TFloatField
      FieldName = 'AREACONSTRUIDA'
    end
    object FDQryCadUNAREATOTAL: TStringField
      FieldName = 'UNAREATOTAL'
      Size = 2
    end
    object FDQryCadUNAREACONSTRUIDA: TStringField
      FieldName = 'UNAREACONSTRUIDA'
      Size = 2
    end
    object FDQryCadIMOVEL: TStringField
      FieldName = 'IMOVEL'
      Size = 1
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
        Name = 'TOMBAMENTO'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'DESCREDUZAIDA'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'DATACOMPTA'
        DataType = ftTimeStamp
      end
      item
        Name = 'ESTADOCONS'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'FDQryFiltroField9'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_PATRIMONIO_ID'
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
      'Select'
      '    PATRIMONIO.CODIGO,'
      '    PATRIMONIO.TOMBAMENTO,'
      '    PATRIMONIO.DESCREDUZAIDA,'
      '    PATRIMONIO.DATACOMPTA,'
      '    PATRIMONIO.ESTADOCONS,'
      '    PATRIMONIO.VALOR,'
      '    SETORES.NOME,'
      '    PATRIMONIO.CODIEMPRESA'
      'From'
      '    PATRIMONIO Left Join'
      '    SETORES On SETORES.CODIGO = PATRIMONIO.CODISETOR'
      'Where'
      '    PATRIMONIO.CODIEMPRESA = :CODIEMPRESA And'
      '    PATRIMONIO.DESCREDUZAIDA Like :P01 || '#39'%'#39
      'Order By'
      '    PATRIMONIO.TOMBAMENTO')
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroTOMBAMENTO: TFloatField
      FieldName = 'TOMBAMENTO'
    end
    object FDQryFiltroDESCREDUZAIDA: TStringField
      FieldName = 'DESCREDUZAIDA'
      Size = 250
    end
    object FDQryFiltroDATACOMPTA: TSQLTimeStampField
      FieldName = 'DATACOMPTA'
    end
    object FDQryFiltroESTADOCONS: TStringField
      FieldName = 'ESTADOCONS'
      Size = 10
    end
    object FDQryFiltroVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object FDQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object FDQryFiltroCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
  end
end
