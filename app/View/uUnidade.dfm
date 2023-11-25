inherited frmCadUnidade: TfrmCadUnidade
  Height = 900
  ExplicitHeight = 900
  inherited PageCadastro: TUniPageControl
    Height = 847
    ExplicitHeight = 847
    inherited Tab1: TUniTabSheet
      ExplicitHeight = 819
      inherited UniPnlPesquisar: TUniPanel
        inherited BtFiltrar: TUniBitBtn
          ImageIndex = 14
        end
      end
      inherited UniDBGrid1: TUniDBGrid
        Height = 766
        LoadMask.Message = 'Carregando dados...'
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Width = 94
          end
          item
            FieldName = 'ORGAO'
            Title.Caption = #211'RG'#195'O'
            Width = 244
          end
          item
            FieldName = 'UNIDADE'
            Title.Caption = 'UNIDADE'
            Width = 244
          end
          item
            FieldName = 'RESPON_UNIDADE'
            Title.Caption = 'RESPONS'#193'VEL'
            Width = 244
          end
          item
            FieldName = 'TELEFONES'
            Title.Caption = 'TELEFONE'
            Width = 244
          end
          item
            FieldName = 'EMAIL'
            Title.Caption = 'EMAIL'
            Width = 484
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitHeight = 819
      inherited UniPanel1: TUniPanel
        Height = 819
        ExplicitHeight = 819
        inherited UniScrollBox1: TUniScrollBox
          Height = 819
          ExplicitHeight = 819
          ScrollHeight = 849
          ScrollWidth = 696
          object UniDBEdit4: TUniDBEdit
            Left = 16
            Top = 80
            Width = 289
            Height = 36
            Hint = ''
            DataField = 'UNIDADE_ADMIN'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 3
            FieldLabel = 'Slogan'
            FieldLabelAlign = laTop
          end
          object UniDBEdit5: TUniDBEdit
            Left = 311
            Top = 80
            Width = 258
            Height = 36
            Hint = ''
            DataField = 'RESPON_UNIDADE'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 4
            FieldLabel = 'Respons'#225'vel'
            FieldLabelAlign = laTop
          end
          object UniDBEdit6: TUniDBEdit
            Left = 575
            Top = 80
            Width = 121
            Height = 36
            Hint = ''
            DataField = 'CPF'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 5
            FieldLabel = 'CPF'
            FieldLabelAlign = laTop
          end
          object UniDBEdit7: TUniDBEdit
            Left = 16
            Top = 140
            Width = 305
            Height = 36
            Hint = ''
            DataField = 'EMAIL'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 6
            FieldLabel = 'E-mail'
            FieldLabelAlign = laTop
          end
          object UniDBEdit8: TUniDBEdit
            Left = 327
            Top = 140
            Width = 202
            Height = 36
            Hint = ''
            DataField = 'TELEFONES'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 7
            FieldLabel = 'Telefone'
            FieldLabelAlign = laTop
          end
          object UniDBEdit9: TUniDBEdit
            Left = 16
            Top = 202
            Width = 161
            Height = 36
            Hint = ''
            DataField = 'CIDADE'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 8
            FieldLabel = 'Cidade'
            FieldLabelAlign = laTop
          end
          object UniDBEdit10: TUniDBEdit
            Left = 183
            Top = 202
            Width = 305
            Height = 36
            Hint = ''
            DataField = 'ENDERECO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 9
            FieldLabel = 'Endere'#231'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit11: TUniDBEdit
            Left = 494
            Top = 202
            Width = 202
            Height = 36
            Hint = ''
            DataField = 'BAIRRO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 10
            FieldLabel = 'Bairro'
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
            TabOrder = 0
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBEdit2: TUniDBEdit
            Left = 110
            Top = 22
            Width = 275
            Height = 36
            Hint = ''
            DataField = 'ORGAO'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 1
            FieldLabel = #211'rg'#227'o'
            FieldLabelAlign = laTop
          end
          object UniDBEdit3: TUniDBEdit
            Left = 391
            Top = 22
            Width = 305
            Height = 36
            Hint = ''
            DataField = 'UNIDADE'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 2
            FieldLabel = 'Unidade'
            FieldLabelAlign = laTop
          end
          object UniDBComboBox1: TUniDBComboBox
            Left = 16
            Top = 262
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
            TabOrder = 11
            FieldLabel = 'UF'
            FieldLabelAlign = laTop
            IconItems = <>
          end
          object UniDBEdit12: TUniDBEdit
            Left = 167
            Top = 262
            Width = 106
            Height = 36
            Hint = ''
            DataField = 'CEP'
            DataSource = dsCad
            CharCase = ecUpperCase
            TabOrder = 12
            FieldLabel = 'CEP'
            FieldLabelAlign = laTop
          end
          object rcBlock41: TUniContainerPanel
            Tag = 2
            Left = 16
            Top = 332
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            ParentColor = False
            Color = clWhite
            TabOrder = 16
            object UniLabel15: TUniLabel
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
            object UniLabel16: TUniLabel
              Left = 34
              Top = 0
              Width = 288
              Height = 23
              Hint = ''
              Caption = 'Texto para o rodap'#233' do relat'#243'rio geral'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniDBHTMLMemo1: TUniDBHTMLMemo
            Left = 16
            Top = 360
            Width = 680
            Height = 115
            Hint = ''
            DataField = 'CAB_RODAPERG'
            DataSource = dsCad
            TabOrder = 13
            Color = clWindow
          end
          object UniContainerPanel1: TUniContainerPanel
            Tag = 2
            Left = 16
            Top = 481
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            ParentColor = False
            Color = clWhite
            TabOrder = 17
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
              Width = 337
              Height = 23
              Hint = ''
              Caption = 'Texto para o termo de transfer'#234'ncia de bens'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniDBHTMLMemo2: TUniDBHTMLMemo
            Left = 16
            Top = 512
            Width = 680
            Height = 145
            Hint = ''
            DataField = 'TEXTOTRANSFERENCIA'
            DataSource = dsCad
            TabOrder = 14
            Color = clWindow
          end
          object UniContainerPanel3: TUniContainerPanel
            Tag = 2
            Left = 16
            Top = 673
            Width = 457
            Height = 25
            Hint = 
              '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
              'e'#13#10'round:no '#13#10']]'#13#10#13#10
            ParentColor = False
            Color = clWhite
            TabOrder = 18
            object UniLabel19: TUniLabel
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
            object UniLabel20: TUniLabel
              Left = 34
              Top = 0
              Width = 90
              Height = 23
              Hint = ''
              Caption = 'Assinaturas'
              Align = alClient
              ParentFont = False
              Font.Color = clGray
              Font.Height = -19
              Font.Name = 'Calibri'
              TabOrder = 1
            end
          end
          object UniDBHTMLMemo3: TUniDBHTMLMemo
            Left = 16
            Top = 704
            Width = 680
            Height = 145
            Hint = ''
            DataField = 'ASSINATURAS'
            DataSource = dsCad
            TabOrder = 15
            Color = clWindow
          end
        end
      end
    end
  end
  inherited UniContainerPanel2: TUniContainerPanel
    Top = 889
    ExplicitTop = 889
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 840
    Top = 96
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'ORGAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE_ADMIN'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RESPON_UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CAB_RODAPERG'
        DataType = ftMemo
      end
      item
        Name = 'TEXTOTRANSFERENCIA'
        DataType = ftMemo
      end
      item
        Name = 'ASSINATURAS'
        DataType = ftMemo
      end
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TELEFONES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'FDQryCadField18'
        DataType = ftSmallint
      end>
    SequenceName = 'GEN_UNIDADE_ID'
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
      
        'Select CODIGO, ORGAO, UNIDADE, UNIDADE_ADMIN, CPF, RESPON_UNIDAD' +
        'E, CAB_RODAPERG, TEXTOTRANSFERENCIA, ASSINATURAS, IDEMPRESA, EMA' +
        'IL, TELEFONES, UF, CIDADE, BAIRRO, ENDERECO, CEP From UNIDADE WH' +
        'ERE CODIGO=:CODIGO')
    UpdateTableName = 'UNIDADE'
    Left = 852
    Top = 232
    object FDQryCadCODIGO: TSmallintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadORGAO: TStringField
      FieldName = 'ORGAO'
      Size = 40
    end
    object FDQryCadUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
    object FDQryCadUNIDADE_ADMIN: TStringField
      FieldName = 'UNIDADE_ADMIN'
      Size = 40
    end
    object FDQryCadCPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object FDQryCadRESPON_UNIDADE: TStringField
      FieldName = 'RESPON_UNIDADE'
      Size = 40
    end
    object FDQryCadCAB_RODAPERG: TMemoField
      FieldName = 'CAB_RODAPERG'
      BlobType = ftMemo
    end
    object FDQryCadTEXTOTRANSFERENCIA: TMemoField
      FieldName = 'TEXTOTRANSFERENCIA'
      BlobType = ftMemo
    end
    object FDQryCadASSINATURAS: TMemoField
      FieldName = 'ASSINATURAS'
      BlobType = ftMemo
    end
    object FDQryCadIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object FDQryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object FDQryCadTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 40
    end
    object FDQryCadUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object FDQryCadCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object FDQryCadBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 80
    end
    object FDQryCadENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object FDQryCadCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
  end
  inherited dsCad: TDataSource
    Left = 857
    Top = 386
  end
  inherited dsFiltro: TDataSource
    Left = 793
    Top = 416
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'ORGAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RESPON_UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TELEFONES'
        DataType = ftString
        Size = 40
      end>
    SequenceName = ''
    SequenceField = 'COD'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, ORGAO, UNIDADE, RESPON_UNIDADE, EMAIL, TELEFONES ' +
        'From UNIDADE WHERE UNIDADE LIKE :UNIDADE   || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'UNIDADE'
    Left = 852
    Top = 312
    object FDQryFiltroCODIGO: TSmallintField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroORGAO: TStringField
      DisplayLabel = #211'RG'#195'O'
      FieldName = 'ORGAO'
      Size = 40
    end
    object FDQryFiltroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
    object FDQryFiltroRESPON_UNIDADE: TStringField
      DisplayLabel = 'RESPONS'#193'VEL'
      FieldName = 'RESPON_UNIDADE'
      Size = 40
    end
    object FDQryFiltroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object FDQryFiltroTELEFONES: TStringField
      DisplayLabel = 'TELEFONE'
      FieldName = 'TELEFONES'
      EditMask = '!\(99\) 9 0000-0000;0;_'
      Size = 40
    end
  end
end
