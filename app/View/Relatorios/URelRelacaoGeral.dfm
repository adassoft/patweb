object FrmRelRelacaoGeral: TFrmRelRelacaoGeral
  Left = 0
  Top = 0
  ClientHeight = 640
  ClientWidth = 925
  Caption = ''
  Color = clWhite
  FormStyle = fsMDIChild
  OldCreateOrder = False
  OnClose = UniFormClose
  MonitoredKeys.Keys = <>
  Visible = True
  PageMode = True
  OnCreate = UniFormCreate
  TextHeight = 15
  object UniPanel1: TUniPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 919
    Height = 59
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -25
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    TabOrder = 0
    Caption = 'Relat'#243'rio Geral'
    Color = 16744448
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 591
    object btnVoltar: TUniBitBtn
      AlignWithMargins = True
      Left = 833
      Top = 11
      Width = 75
      Height = 37
      Hint = ''
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Visible = False
      Caption = 'Voltar'
      Align = alRight
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 1
      OnClick = btnVoltarClick
      ExplicitLeft = 816
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 629
    Width = 925
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 472
    ExplicitWidth = 591
  end
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 65
    Width = 925
    Height = 564
    Hint = ''
    ActivePage = tabFiltros
    TabBarVisible = False
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 616
    ExplicitTop = 216
    ExplicitWidth = 289
    ExplicitHeight = 193
    object tabFiltros: TUniTabSheet
      Hint = ''
      Caption = 'tabFiltros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 289
      ExplicitHeight = 193
      object UniGroupBox1: TUniGroupBox
        AlignWithMargins = True
        Left = 159
        Top = 24
        Width = 640
        Height = 388
        Hint = ''
        Caption = 'Filtros'
        Align = alCustom
        TabOrder = 0
        ParentFont = False
        Font.Height = -13
        ExplicitLeft = 150
        ExplicitTop = 15
        DesignSize = (
          640
          388)
        object UniLabel4: TUniLabel
          Left = 24
          Top = 85
          Width = 140
          Height = 21
          Hint = ''
          Caption = 'Selecione a Unidade'
          ParentFont = False
          Font.Height = -16
          TabOrder = 1
        end
        object BtImprimir: TUniBitBtn
          Left = 151
          Top = 254
          Width = 161
          Height = 41
          Hint = ''
          Caption = 'Imprimir'
          Anchors = [akTop, akRight]
          TabOrder = 2
          OnClick = BtImprimirClick
        end
        object BtSair: TUniBitBtn
          Left = 359
          Top = 254
          Width = 161
          Height = 41
          Hint = ''
          Caption = 'Sair'
          Anchors = [akTop, akRight]
          TabOrder = 3
          OnClick = BtSairClick
        end
        object UniDBLkupCaixa: TUniDBLookupComboBox
          Left = 24
          Top = 112
          Width = 451
          Height = 41
          Hint = ''
          ListField = 'UNIDADE'
          ListSource = dmRelatorios.dsUnidade
          KeyField = 'CODIGO'
          ListFieldIndex = 0
          TabOrder = 4
          Color = clWindow
        end
      end
    end
    object tabReport: TUniTabSheet
      Hint = ''
      Caption = 'tabReport'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 289
      ExplicitHeight = 193
      object UniPDFFrame1: TUniPDFFrame
        Left = 0
        Top = 0
        Width = 917
        Height = 536
        Hint = ''
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 328
        ExplicitTop = 200
        ExplicitWidth = 320
        ExplicitHeight = 240
      end
    end
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    DisplayMessage = 'Aguarde gera'#231#227'o ........'
    TargetControl = Owner
    Left = 488
    Top = 90
  end
  object sqlRelatorio: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME1'
        DataType = ftString
        Size = 35
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
        Name = 'STATUS'
        DataType = ftString
        Size = 10
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
        Name = 'codiempresa'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'unidade'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    UNIDADE.UNIDADE,'
      '    EMPRESA.NOME,'
      '    EMPRESA.CNPJ,'
      '    EMPRESA.EMAIL,'
      '    SETORES.NOME As NOME1,'
      '    PATRIMONIO.TOMBAMENTO,'
      '    PATRIMONIO.DESCREDUZAIDA,'
      '    PATRIMONIO.DESCDETALHADA,'
      '    PATRIMONIO.ESTADOCONS,'
      '    PATRIMONIO.VALOR,'
      '    PATRIMONIO.STATUS'
      'From'
      '    PATRIMONIO Inner Join'
      
        '    EMPRESA On EMPRESA.CODIGO = PATRIMONIO.CODIEMPRESA Inner Joi' +
        'n'
      
        '    UNIDADE On UNIDADE.CODIGO = PATRIMONIO.CODIUNIDADE Inner Joi' +
        'n'
      '    SETORES On SETORES.CODIGO = PATRIMONIO.CODISETOR'
      'Where'
      '    EMPRESA.CODIGO = :codiempresa And'
      '    PATRIMONIO.CODIUNIDADE = :unidade'
      'Order By'
      '    PATRIMONIO.DESCREDUZAIDA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 845
    Top = 115
  end
  object frxDBDRelacaoGeral: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UNIDADE=UNIDADE'
      'NOME=NOME'
      'CNPJ=CNPJ'
      'EMAIL=EMAIL'
      'NOME1=NOME1'
      'TOMBAMENTO=TOMBAMENTO'
      'DESCREDUZAIDA=DESCREDUZAIDA'
      'DESCDETALHADA=DESCDETALHADA'
      'ESTADOCONS=ESTADOCONS'
      'VALOR=VALOR'
      'STATUS=STATUS')
    DataSet = sqlRelatorio
    BCDToCurrency = False
    Left = 848
    Top = 192
  end
  object frxRRelacaoGeral: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45265.531641030100000000
    ReportOptions.LastChange = 45265.696124178240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 848
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDRelacaoGeral
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 37.795300000000000000
          Width = 1001.575450000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELA'#199#195'O GERAL DE BENS PATRIMONIAIS')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Width = 1001.575450000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 68.031540000000000000
          Width = 476.220780000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Unidade: [frxDBDataset1."NOME1"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 68.031540000000000000
          Width = 506.457020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date] [Time] - P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 56.692950000000000000
        Top = 166.299320000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 30.236240000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'TOMBAMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 30.236240000000000000
          Width = 532.913730000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTADO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 30.236240000000000000
          Width = 109.606370000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 30.236240000000000000
          Width = 120.944960000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UNIDADE: [frxDBDataset1."UNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDRelacaoGeral
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."TOMBAMENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 532.913730000000000000
          Height = 22.677180000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBDataset1."DESCREDUZAIDA"] [frxDBDataset1."DESCDETALHADA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ESTADOCONS"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR"]')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 848
    Top = 344
  end
end
