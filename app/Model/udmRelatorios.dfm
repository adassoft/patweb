object dmRelatorios: TdmRelatorios
  Height = 480
  Width = 640
  object frxDBDRelacaoGeral: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = sqlRelacaoGeral
    BCDToCurrency = False
    Left = 168
    Top = 64
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
    ReportOptions.LastChange = 45265.531641030100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 152
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
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 1001.575450000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELA'#199#195'O GERAL DE BENS PATRIMONIAIS')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 120.944960000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 45.354360000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ORDEM')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOMBAMENTO')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Top = 45.354360000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCRI'#199#195'O')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ESTADO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 45.354360000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 604.724800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNIDADE: [frxDBDataset1."UNIDADE"]')
          ParentFont = False
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
        Top = 211.653680000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDRelacaoGeral
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 64.252010000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."TOMBAMENTO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858380000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBDataset1."DESCREDUZAIDA"] [frxDBDataset1."DESCDETALHADA"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ESTADOCONS"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 816.378480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
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
    Left = 168
    Top = 248
  end
  object sqlRelacaoGeral: TRESTDWClientSQL
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
        Size = 40
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
    Left = 168
    Top = 344
    object sqlRelacaoGeralUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
    object sqlRelacaoGeralNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sqlRelacaoGeralCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object sqlRelacaoGeralEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object sqlRelacaoGeralNOME1: TStringField
      FieldName = 'NOME1'
      Size = 35
    end
    object sqlRelacaoGeralTOMBAMENTO: TFloatField
      FieldName = 'TOMBAMENTO'
    end
    object sqlRelacaoGeralDESCREDUZAIDA: TStringField
      FieldName = 'DESCREDUZAIDA'
      Size = 250
    end
    object sqlRelacaoGeralDESCDETALHADA: TMemoField
      FieldName = 'DESCDETALHADA'
      BlobType = ftMemo
    end
    object sqlRelacaoGeralESTADOCONS: TStringField
      FieldName = 'ESTADOCONS'
      Size = 10
    end
    object sqlRelacaoGeralVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sqlRelacaoGeralSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 10
    end
  end
  object sqlUnidade: TRESTDWClientSQL
    Active = True
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
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
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    UNIDADE.CODIGO,'
      '    UNIDADE.UNIDADE'
      'From'
      '    UNIDADE'
      'Where'
      '    UNIDADE.CODIEMPRESA = :codiempresa'
      'Order By'
      '    UNIDADE.UNIDADE')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 328
    Top = 80
    object sqlUnidadeCODIGO: TSmallintField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sqlUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
  end
  object dsUnidade: TDataSource
    DataSet = sqlUnidade
    Left = 344
    Top = 160
  end
end
