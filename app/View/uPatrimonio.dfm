inherited frmCadPatrimonio: TfrmCadPatrimonio
  Height = 1400
  ExplicitHeight = 1400
  inherited PnlCrud: TUniPanel
    inherited BtInc: TUniBitBtn
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitHeight = 36
    end
    inherited BtAlt: TUniBitBtn
      ExplicitLeft = 89
      ExplicitTop = 3
      ExplicitHeight = 36
    end
    inherited BtExc: TUniBitBtn
      ExplicitLeft = 175
      ExplicitTop = 3
      ExplicitHeight = 36
    end
    inherited BtCan: TUniBitBtn
      ExplicitLeft = 261
      ExplicitTop = 3
      ExplicitHeight = 36
    end
    inherited BtGrv: TUniBitBtn
      ExplicitLeft = 347
      ExplicitTop = 3
      ExplicitHeight = 36
    end
  end
  inherited PageCadastro: TUniPageControl
    Height = 1347
    ActivePage = Tab2
    ExplicitHeight = 1347
    inherited Tab1: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 1319
      inherited UniPnlPesquisar: TUniPanel
        inherited EdPesquisar: TUniEdit
          ExplicitLeft = 10
          ExplicitTop = 10
          ExplicitWidth = 819
          ExplicitHeight = 33
        end
        inherited BtFiltrar: TUniBitBtn
          ExplicitLeft = 845
        end
      end
      inherited UniDBGrid1: TUniDBGrid
        Height = 1266
        ForceFit = True
        Exporter.Exporter = dmComum.UniGridExcelExporter1
        Columns = <
          item
            Flex = 1
            FieldName = 'CODIGO'
            Filtering.Enabled = True
            Filtering.Editor = UniEdit1
            Title.Caption = 'CODIGO'
            Width = 64
            Editor = UniEdit1
          end
          item
            Flex = 1
            FieldName = 'TOMBAMENTO'
            Filtering.Enabled = True
            Filtering.Editor = UniEdit2
            Title.Caption = 'TOMBAMENTO'
            Width = 86
            Editor = UniEdit2
          end
          item
            Flex = 3
            FieldName = 'DESCREDUZAIDA'
            Filtering.Enabled = True
            Filtering.Editor = UniEdit3
            Title.Caption = 'DESCREDUZAIDA'
            Width = 1504
            Editor = UniEdit3
          end
          item
            Flex = 2
            FieldName = 'NOME'
            Filtering.Enabled = True
            Filtering.Editor = UniEdit4
            Title.Caption = 'SETOR'
            Width = 214
            Editor = UniEdit4
          end
          item
            Flex = 1
            FieldName = 'DATACOMPTA'
            Filtering.Enabled = True
            Filtering.Editor = UniEdit5
            Title.Caption = 'DATA AQUISI'#199#195'O'
            Width = 208
          end
          item
            Flex = 1
            FieldName = 'VALOR'
            Title.Caption = 'VALOR'
            Width = 64
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 1319
      inherited UniPanel1: TUniPanel
        Height = 1319
        ExplicitHeight = 1319
        inherited UniScrollBox1: TUniScrollBox
          Height = 1319
          Color = clBtnFace
          ExplicitHeight = 1317
          ScrollHeight = 35
          object UniSimplePanel1: TUniSimplePanel [0]
            AlignWithMargins = True
            Left = 3
            Top = 38
            Width = 933
            Height = 1276
            Hint = ''
            ParentColor = False
            Align = alClient
            AlignmentControl = uniAlignmentClient
            ParentAlignmentControl = False
            AutoScroll = True
            TabOrder = 0
            Layout = 'border'
            ExplicitLeft = 47
            ExplicitTop = 108
            ExplicitHeight = 206
            ScrollHeight = 1276
            ScrollWidth = 933
            object plEsquerdo: TUniSimplePanel
              Left = 0
              Top = 0
              Width = 17
              Height = 1276
              Hint = ''
              ParentColor = False
              Align = alLeft
              TabOrder = 1
            end
            object UniScrollBox2: TUniScrollBox
              Left = 17
              Top = 0
              Width = 916
              Height = 1276
              Hint = ''
              Align = alClient
              Color = clWhite
              TabOrder = 2
              ScrollDirection = sdVertical
              ExplicitHeight = 1274
              ScrollWidth = 17
              object UniSimplePanel7: TUniSimplePanel
                Left = 0
                Top = 0
                Width = 897
                Height = 1274
                Hint = ''
                ParentColor = False
                Align = alClient
                AutoScroll = True
                ClientEvents.ExtEvents.Strings = (
                  
                    'boxready=function boxready(sender, width, height, eOpts)'#13#10'{'#13#10'  s' +
                    'ender.body.addCls('#39'x-docked-noborder-top'#39');'#13#10'    sender.body.add' +
                    'Cls('#39'x-docked-noborder-left'#39');'#13#10'}')
                TabOrder = 0
                Layout = 'column'
                LayoutAttribs.Padding = '0'
                LayoutConfig.Padding = '0'
                LayoutConfig.Height = '100%'
                LayoutConfig.Region = 'center'
                LayoutConfig.Margin = '0'
                LayoutConfig.ColumnWidth = 0.250000000000000000
                LayoutConfig.ColSpan = 2
                ExplicitWidth = 914
                ExplicitHeight = 1074
                ScrollHeight = 1274
                ScrollWidth = 897
                object UniSimplePanel5: TUniSimplePanel
                  Left = 0
                  Top = 0
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 1
                  ParentColor = False
                  Align = alTop
                  TabOrder = 1
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel2: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 3
                    Width = 138
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 2
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    object UniDBEdit1: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 124
                      Height = 57
                      Hint = ''
                      Enabled = False
                      DataField = 'CODIGO'
                      DataSource = dsCad
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      Color = 60652
                      FieldLabel = 'C'#243'digo'
                      FieldLabelAlign = laTop
                    end
                    object UniImage4: TUniImage
                      Left = 124
                      Top = 0
                      Width = 14
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel4: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 159
                    Top = 3
                    Width = 120
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 3
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    object UniDBEdit2: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 106
                      Height = 57
                      Hint = ''
                      DataField = 'TOMBAMENTO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      FieldLabel = 'Tombamento'
                      FieldLabelAlign = laTop
                    end
                    object UniImage5: TUniImage
                      Left = 106
                      Top = 0
                      Width = 14
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel17: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 381
                    Top = 3
                    Width = 120
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 4
                    ParentColor = False
                    TabOrder = 3
                    Layout = 'column'
                    object UniDBComboBox1: TUniDBComboBox
                      Left = 0
                      Top = 0
                      Width = 120
                      Height = 57
                      Hint = ''
                      Align = alClient
                      DataField = 'TIPODEBEM'
                      DataSource = dsCad
                      Items.Strings = (
                        'M'#243'veis'
                        'Im'#243'veis')
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      FieldLabel = 'Timpo de bem'
                      FieldLabelAlign = laTop
                      IconItems = <>
                    end
                  end
                end
                object UniSimplePanel9: TUniSimplePanel
                  Left = 0
                  Top = 75
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 5
                  ParentColor = False
                  Align = alTop
                  TabOrder = 3
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel3: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 51
                    Top = 42
                    Width = 340
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 5
                    ParentColor = False
                    Align = alCustom
                    TabOrder = 2
                    Layout = 'column'
                    ExplicitLeft = 18
                    ExplicitTop = 9
                    object UniDBLookupComboBox1: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'UNIDADE'
                      ListSource = dmComum.dsUnidade
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODIUNIDADE'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Unidade administrativa'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                    end
                    object UniImage1: TUniImage
                      Left = 320
                      Top = 0
                      Width = 20
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel11: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 426
                    Top = 51
                    Width = 320
                    Height = 57
                    Hint = ''
                    CreateOrder = 7
                    ParentColor = False
                    Align = alCustom
                    TabOrder = 1
                    Layout = 'column'
                    ExplicitLeft = 384
                    ExplicitTop = 9
                    object UniDBLookupComboBox8: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'DESCENTRO'
                      ListSource = dmComum.dsCentro
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODICENTRO'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Centro de custo'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                      ExplicitLeft = 64
                      ExplicitTop = -3
                    end
                  end
                end
                object UniSimplePanel8: TUniSimplePanel
                  Left = 0
                  Top = 150
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 8
                  ParentColor = False
                  Align = alTop
                  TabOrder = 2
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel10: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 340
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 8
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBLookupComboBox7: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'NOME'
                      ListSource = dmComum.dsPessoa
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODIPESSOA'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Colaborador respons'#225'vel pelo bem'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                      ExplicitLeft = 16
                      ExplicitTop = 18
                      ExplicitWidth = 313
                      ExplicitHeight = 36
                    end
                    object UniImage2: TUniImage
                      Left = 320
                      Top = 0
                      Width = 20
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel12: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 381
                    Top = 6
                    Width = 320
                    Height = 57
                    Hint = ''
                    CreateOrder = 10
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    object UniDBLookupComboBox2: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'NOME'
                      ListSource = dmComum.dsFornecedor
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODIFORNECEDOR'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Fornecedor'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                      ExplicitLeft = 19
                      ExplicitTop = 15
                      ExplicitWidth = 313
                      ExplicitHeight = 36
                    end
                  end
                end
                object UniSimplePanel13: TUniSimplePanel
                  Left = 0
                  Top = 225
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 11
                  ParentColor = False
                  Align = alTop
                  TabOrder = 4
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel14: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 340
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 12
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBLookupComboBox9: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'DESCRICAO'
                      ListSource = dmComum.dsCategoria
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODICATEGORIA'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Categoria'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                      ExplicitLeft = 16
                      ExplicitTop = 18
                      ExplicitWidth = 313
                      ExplicitHeight = 36
                    end
                    object UniImage3: TUniImage
                      Left = 320
                      Top = 0
                      Width = 20
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel18: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 381
                    Top = 6
                    Width = 320
                    Height = 57
                    Hint = ''
                    CreateOrder = 13
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    object UniDBLookupComboBox11: TUniDBLookupComboBox
                      Left = 0
                      Top = 0
                      Width = 320
                      Height = 57
                      Hint = ''
                      ListField = 'DESGRUPO'
                      ListSource = dmComum.dsGrupo
                      KeyField = 'CODIGO'
                      ListFieldIndex = 0
                      DataField = 'CODIGOGRUPO'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      Color = clWindow
                      FieldLabel = 'Grupo'
                      FieldLabelAlign = laTop
                      ReadOnlyMode = urmNotEditable
                      ExplicitLeft = 16
                      ExplicitTop = 18
                      ExplicitWidth = 313
                      ExplicitHeight = 36
                    end
                  end
                end
                object UniSimplePanel15: TUniSimplePanel
                  Left = 0
                  Top = 300
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 14
                  ParentColor = False
                  Align = alTop
                  TabOrder = 5
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel16: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 30
                    Top = 21
                    Width = 660
                    Height = 57
                    Hint = ''
                    CreateOrder = 15
                    ParentColor = False
                    Align = alCustom
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit3: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 660
                      Height = 57
                      Hint = ''
                      DataField = 'DESCREDUZAIDA'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Descri'#231#227'o reduzida'
                      FieldLabelAlign = laTop
                    end
                  end
                end
                object UniSimplePanel21: TUniSimplePanel
                  Left = 0
                  Top = 375
                  Width = 897
                  Height = 50
                  Hint = ''
                  CreateOrder = 15
                  ParentColor = False
                  Align = alTop
                  TabOrder = 6
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniContainerPanel1: TUniContainerPanel
                    Tag = 2
                    Left = 6
                    Top = 22
                    Width = 457
                    Height = 25
                    Hint = 
                      '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
                      'e'#13#10'round:no '#13#10']]'#13#10#13#10
                    Margins.Top = 40
                    CreateOrder = 16
                    ParentColor = False
                    TabOrder = 1
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
                end
                object UniSimplePanel20: TUniSimplePanel
                  Left = 0
                  Top = 425
                  Width = 897
                  Height = 120
                  Hint = ''
                  CreateOrder = 17
                  ParentColor = False
                  Align = alTop
                  TabOrder = 7
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel22: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 30
                    Top = 21
                    Width = 660
                    Height = 111
                    Hint = ''
                    CreateOrder = 18
                    ParentColor = False
                    Align = alCustom
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBMemo1: TUniDBMemo
                      Left = 0
                      Top = 0
                      Width = 660
                      Height = 111
                      Hint = ''
                      DataField = 'DESCDETALHADA'
                      DataSource = dsCad
                      ParentFont = False
                      Font.Height = -13
                      Align = alClient
                      TabOrder = 1
                      FieldLabel = 'Descri'#231#227'o detalhada'
                      FieldLabelAlign = laTop
                    end
                  end
                end
                object UniSimplePanel23: TUniSimplePanel
                  Left = 0
                  Top = 545
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 19
                  ParentColor = False
                  Align = alTop
                  TabOrder = 8
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel24: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 20
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit4: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'MARCA'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Marca'
                      FieldLabelAlign = laTop
                    end
                    object UniImage6: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel25: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 207
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 21
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit5: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'PLACASERIE'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Placa / S'#233'rie'
                      FieldLabelAlign = laTop
                    end
                    object UniImage7: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel26: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 399
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 22
                    ParentColor = False
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBComboBox2: TUniDBComboBox
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      Align = alClient
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
                      TabOrder = 2
                      FieldLabel = 'Estado Conserva'#231#227'o'
                      FieldLabelAlign = laTop
                      IconItems = <>
                    end
                    object UniImage8: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel27: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 591
                    Top = 6
                    Width = 161
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 23
                    ParentColor = False
                    TabOrder = 4
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBComboBox3: TUniDBComboBox
                      Left = 0
                      Top = 0
                      Width = 161
                      Height = 57
                      Hint = ''
                      Align = alClient
                      DataField = 'STATUS'
                      DataSource = dsCad
                      Items.Strings = (
                        'Ativo'
                        'Emprestado'
                        'Baixado'
                        'Alienado')
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      FieldLabel = 'Status'
                      FieldLabelAlign = laTop
                      IconItems = <>
                    end
                  end
                end
                object UniSimplePanel28: TUniSimplePanel
                  Left = 0
                  Top = 620
                  Width = 897
                  Height = 50
                  Hint = ''
                  CreateOrder = 24
                  ParentColor = False
                  Align = alTop
                  TabOrder = 9
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniContainerPanel3: TUniContainerPanel
                    Tag = 2
                    Left = 6
                    Top = 22
                    Width = 457
                    Height = 25
                    Hint = 
                      '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
                      'e'#13#10'round:no '#13#10']]'#13#10#13#10
                    CreateOrder = 16
                    ParentColor = False
                    TabOrder = 1
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
                end
                object UniSimplePanel29: TUniSimplePanel
                  Left = 0
                  Top = 670
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 25
                  ParentColor = False
                  Align = alTop
                  TabOrder = 10
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel30: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 26
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBNumberEdit1: TUniDBNumberEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'NOTAFISCAL'
                      DataSource = dsCad
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      FieldLabel = 'N'#250'mero da nota fiscal'
                      FieldLabelAlign = laTop
                      DecimalPrecision = 0
                      DecimalSeparator = ','
                    end
                    object UniImage11: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel31: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 207
                    Top = 6
                    Width = 358
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 27
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBNumberEdit2: TUniDBNumberEdit
                      Left = 0
                      Top = 0
                      Width = 348
                      Height = 57
                      Hint = ''
                      DataField = 'CHAVENOTA'
                      DataSource = dsCad
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      FieldLabel = 'Chave da nota'
                      FieldLabelAlign = laTop
                      DecimalPrecision = 0
                      DecimalSeparator = ','
                    end
                    object UniImage12: TUniImage
                      Left = 348
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel33: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 591
                    Top = 6
                    Width = 130
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 29
                    ParentColor = False
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBDateTimePicker1: TUniDBDateTimePicker
                      Left = 0
                      Top = 0
                      Width = 130
                      Height = 57
                      Hint = ''
                      DataField = 'DATACOMPTA'
                      DataSource = dsCad
                      DateTime = 45257.000000000000000000
                      DateFormat = 'dd/MM/yyyy'
                      TimeFormat = 'HH:mm:ss'
                      Align = alClient
                      TabOrder = 1
                      ParentFont = False
                      Font.Height = -13
                      FieldLabel = 'Data Compra'
                      FieldLabelAlign = laTop
                    end
                  end
                end
                object UniSimplePanel32: TUniSimplePanel
                  Left = 0
                  Top = 745
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 29
                  ParentColor = False
                  Align = alTop
                  TabOrder = 11
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel34: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 26
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit6: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'PREGAO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Licita'#231#227'o'
                      FieldLabelAlign = laTop
                    end
                    object UniImage13: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel35: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 207
                    Top = 6
                    Width = 358
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 27
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit7: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 348
                      Height = 57
                      Hint = ''
                      DataField = 'CONVENIO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Conv'#234'nio'
                      FieldLabelAlign = laTop
                    end
                    object UniImage14: TUniImage
                      Left = 348
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel36: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 591
                    Top = 6
                    Width = 130
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 29
                    ParentColor = False
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBNumberEdit3: TUniDBNumberEdit
                      Left = 0
                      Top = 0
                      Width = 130
                      Height = 57
                      Hint = ''
                      DataField = 'VALOR'
                      DataSource = dsCad
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      FieldLabel = 'Valor'
                      FieldLabelAlign = laTop
                      DecimalSeparator = ','
                    end
                  end
                end
                object UniSimplePanel37: TUniSimplePanel
                  Left = 0
                  Top = 820
                  Width = 897
                  Height = 50
                  Hint = ''
                  CreateOrder = 33
                  ParentColor = False
                  Align = alTop
                  TabOrder = 12
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniContainerPanel4: TUniContainerPanel
                    Tag = 2
                    Left = 6
                    Top = 22
                    Width = 457
                    Height = 25
                    Hint = 
                      '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
                      'e'#13#10'round:no '#13#10']]'#13#10#13#10
                    CreateOrder = 16
                    ParentColor = False
                    TabOrder = 1
                    object UniLabel4: TUniLabel
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
                    object UniLabel5: TUniLabel
                      Left = 34
                      Top = 0
                      Width = 55
                      Height = 23
                      Hint = ''
                      Caption = 'Ve'#237'culo'
                      Align = alClient
                      ParentFont = False
                      Font.Color = clGray
                      Font.Height = -19
                      Font.Name = 'Calibri'
                      TabOrder = 1
                    end
                  end
                end
                object UniSimplePanel38: TUniSimplePanel
                  Left = 0
                  Top = 870
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 34
                  ParentColor = False
                  Align = alTop
                  TabOrder = 13
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel39: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 15
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 20
                    ParentColor = False
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit8: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'VEICULORENAVAM'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Renavam'
                      FieldLabelAlign = laTop
                    end
                    object UniImage16: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel40: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 207
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 21
                    ParentColor = False
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit9: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'VEICULOCHASSI'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Chassis'
                      FieldLabelAlign = laTop
                    end
                    object UniImage17: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel41: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 399
                    Top = 6
                    Width = 166
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 22
                    ParentColor = False
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit10: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 57
                      Hint = ''
                      DataField = 'VEICULOMODELO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Modelo'
                      FieldLabelAlign = laTop
                    end
                    object UniImage18: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 57
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel42: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 591
                    Top = 6
                    Width = 161
                    Height = 57
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 23
                    ParentColor = False
                    TabOrder = 4
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit11: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 161
                      Height = 57
                      Hint = ''
                      DataField = 'VEICULOANO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Ano'
                      FieldLabelAlign = laTop
                    end
                  end
                end
                object UniSimplePanel43: TUniSimplePanel
                  Left = 0
                  Top = 945
                  Width = 897
                  Height = 50
                  Hint = ''
                  CreateOrder = 38
                  ParentColor = False
                  Align = alTop
                  TabOrder = 14
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniContainerPanel5: TUniContainerPanel
                    Tag = 2
                    Left = 6
                    Top = 22
                    Width = 457
                    Height = 25
                    Hint = 
                      '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
                      'e'#13#10'round:no '#13#10']]'#13#10#13#10
                    CreateOrder = 16
                    ParentColor = False
                    TabOrder = 1
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
                end
                object UniSimplePanel44: TUniSimplePanel
                  Left = 0
                  Top = 995
                  Width = 897
                  Height = 75
                  Hint = ''
                  CreateOrder = 39
                  ParentColor = False
                  Align = alTop
                  TabOrder = 15
                  Layout = 'column'
                  LayoutAttribs.Columns = 3
                  LayoutConfig.Height = '100%'
                  object UniSimplePanel45: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 166
                    Height = 69
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 20
                    ParentColor = False
                    Align = alLeft
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit12: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 69
                      Hint = ''
                      DataField = 'VEICULORENAVAM'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Renavam'
                      FieldLabelAlign = laTop
                    end
                    object UniImage20: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 69
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel46: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 202
                    Top = 3
                    Width = 166
                    Height = 69
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 21
                    ParentColor = False
                    Align = alLeft
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit13: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 69
                      Hint = ''
                      DataField = 'VEICULOCHASSI'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Chassis'
                      FieldLabelAlign = laTop
                    end
                    object UniImage21: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 69
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel47: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 401
                    Top = 3
                    Width = 166
                    Height = 69
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 22
                    ParentColor = False
                    Align = alLeft
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit14: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 156
                      Height = 69
                      Hint = ''
                      DataField = 'VEICULOMODELO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 2
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Modelo'
                      FieldLabelAlign = laTop
                    end
                    object UniImage22: TUniImage
                      Left = 156
                      Top = 0
                      Width = 10
                      Height = 69
                      Hint = ''
                      Align = alRight
                    end
                  end
                  object UniSimplePanel48: TUniSimplePanel
                    AlignWithMargins = True
                    Left = 600
                    Top = 3
                    Width = 166
                    Height = 69
                    Hint = ''
                    Margins.Right = 30
                    CreateOrder = 23
                    ParentColor = False
                    Align = alLeft
                    TabOrder = 4
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    object UniDBEdit15: TUniDBEdit
                      Left = 0
                      Top = 0
                      Width = 166
                      Height = 69
                      Hint = ''
                      DataField = 'VEICULOANO'
                      DataSource = dsCad
                      CharCase = ecUpperCase
                      Align = alClient
                      ParentFont = False
                      Font.Height = -13
                      TabOrder = 1
                      LayoutConfig.Width = '100%'
                      LayoutConfig.Split = True
                      FieldLabel = 'Ano'
                      FieldLabelAlign = laTop
                    end
                  end
                end
              end
              object plDireito: TUniSimplePanel
                Left = 897
                Top = 0
                Width = 17
                Height = 1274
                Hint = ''
                ParentColor = False
                Align = alRight
                TabOrder = 1
              end
            end
          end
          inherited UniSimplePanel19: TUniSimplePanel
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited UniContainerPanel2: TUniContainerPanel
    Top = 1389
    ExplicitTop = 1389
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 733
    Top = 125
    ExplicitLeft = 733
    ExplicitTop = 125
    inherited UniEdit1: TUniEdit
      EmptyText = 'C'#243'digo'
    end
    inherited UniEdit2: TUniEdit
      EmptyText = 'Tombamento'
    end
    inherited UniEdit3: TUniEdit
      EmptyText = 'Descri'#231#227'o reduzida'
    end
    inherited UniEdit4: TUniEdit
      EmptyText = 'Setor'
    end
    inherited UniEdit5: TUniEdit
      EmptyText = 'Data da aquisi'#231#227'o'
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 888
    Top = 80
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
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
        Name = 'TOMBAMENTO'
        DataType = ftFloat
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
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
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
        Size = 1
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
      end
      item
        Name = 'AREACONSTRUIDA'
        DataType = ftFloat
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
      end>
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
    Left = 804
    Top = 112
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
      Size = 1
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
      Size = 1
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
  inherited dsCad: TDataSource
    Left = 849
    Top = 202
  end
  inherited dsFiltro: TDataSource
    Left = 625
    Top = 320
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
      end
      item
        Name = 'DESCREDUZAIDA'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'DATACOMPTA'
        DataType = ftTimeStamp
      end
      item
        Name = 'ESTADOCONS'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VALOR'
        DataType = ftFloat
      end>
    SequenceName = 'GEN_PATRIMONIO_ID'
    SequenceField = 'CODIGO'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'DESCREDUZAIDA'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    PATRIMONIO.CODIGO,'
      '    PATRIMONIO.TOMBAMENTO,'
      '    PATRIMONIO.DESCREDUZAIDA,'
      '    SETORES.NOME,'
      '    PATRIMONIO.DATACOMPTA,'
      '    PATRIMONIO.ESTADOCONS,'
      '    PATRIMONIO.VALOR'
      'From'
      '    PATRIMONIO Inner Join'
      '    SETORES On SETORES.CODIGO = PATRIMONIO.CODISETOR'
      'WHERE    '
      '    PATRIMONIO.DESCREDUZAIDA LIKE :DESCREDUZAIDA || '#39'%'#39
      'ORDER BY TOMBAMENTO')
    UpdateTableName = 'PATRIMONIO'
    Left = 620
    Top = 240
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
    object FDQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object FDQryFiltroDATACOMPTA: TSQLTimeStampField
      FieldName = 'DATACOMPTA'
    end
    object FDQryFiltroESTADOCONS: TStringField
      FieldName = 'ESTADOCONS'
      Size = 1
    end
    object FDQryFiltroVALOR: TFloatField
      FieldName = 'VALOR'
    end
  end
end
