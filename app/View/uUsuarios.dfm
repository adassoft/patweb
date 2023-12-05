inherited frmUsuarios: TfrmUsuarios
  Height = 710
  ExplicitHeight = 710
  inherited PageCadastro: TUniPageControl
    Height = 657
    ExplicitHeight = 657
    inherited Tab1: TUniTabSheet
      ExplicitHeight = 629
      inherited UniDBGrid1: TUniDBGrid
        Height = 576
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitHeight = 629
      inherited UniPanel1: TUniPanel
        Height = 629
        ExplicitHeight = 629
        inherited UniScrollBox1: TUniScrollBox
          Height = 629
          ExplicitHeight = 629
          ScrollHeight = 35
          inherited UniSimplePanel19: TUniSimplePanel
            object UniContainerPanel3: TUniContainerPanel
              Tag = 2
              Left = 6
              Top = 10
              Width = 457
              Height = 25
              Hint = 
                '[['#13#10'cols:xs-12 sm-12 md-12 lg-12 xl-12 |'#13#10'cls:card-info-box-whit' +
                'e'#13#10'round:no '#13#10']]'#13#10#13#10
              Margins.Top = 40
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
                Width = 154
                Height = 23
                Hint = ''
                Caption = 'Cadastro de usu'#225'rio'
                Align = alClient
                ParentFont = False
                Font.Color = clGray
                Font.Height = -19
                Font.Name = 'Calibri'
                TabOrder = 1
              end
            end
          end
          object UniPageControl1: TUniPageControl
            Left = 0
            Top = 35
            Width = 939
            Height = 592
            Hint = ''
            ActivePage = UniTabSheet2
            Align = alClient
            TabOrder = 1
            object UniTabSheet1: TUniTabSheet
              Hint = ''
              Caption = 'Usu'#225'rio'
              object UniScrollBox2: TUniScrollBox
                Left = 0
                Top = 0
                Width = 931
                Height = 564
                Hint = ''
                Align = alClient
                TabOrder = 0
                ScrollWidth = 34
                object plEsquerdo: TUniSimplePanel
                  Left = 0
                  Top = 0
                  Width = 17
                  Height = 562
                  Hint = ''
                  ParentColor = False
                  Align = alLeft
                  TabOrder = 0
                end
                object plDireito: TUniSimplePanel
                  Left = 912
                  Top = 0
                  Width = 17
                  Height = 562
                  Hint = ''
                  ParentColor = False
                  Align = alRight
                  TabOrder = 1
                end
                object UniSimplePanel7: TUniSimplePanel
                  Left = 17
                  Top = 0
                  Width = 895
                  Height = 562
                  Hint = ''
                  ParentColor = False
                  Align = alClient
                  AutoScroll = True
                  ClientEvents.ExtEvents.Strings = (
                    
                      'boxready=function boxready(sender, width, height, eOpts)'#13#10'{'#13#10'  s' +
                      'ender.body.addCls('#39'x-docked-noborder-top'#39');'#13#10'    sender.body.add' +
                      'Cls('#39'x-docked-noborder-left'#39');'#13#10'}')
                  TabOrder = 2
                  Layout = 'column'
                  LayoutAttribs.Padding = '0'
                  LayoutConfig.Padding = '0'
                  LayoutConfig.Height = '100%'
                  LayoutConfig.Region = 'center'
                  LayoutConfig.Margin = '0'
                  LayoutConfig.ColumnWidth = 0.250000000000000000
                  LayoutConfig.ColSpan = 2
                  ScrollHeight = 562
                  ScrollWidth = 895
                  object UniSimplePanel5: TUniSimplePanel
                    Left = 0
                    Top = 0
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 1
                    ParentColor = False
                    Align = alTop
                    TabOrder = 1
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel11: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object UniDBEdit1: TUniDBEdit
                        Left = 3
                        Top = 3
                        Width = 114
                        Height = 36
                        Hint = ''
                        Enabled = False
                        DataField = 'ID'
                        DataSource = dsCad
                        CharCase = ecUpperCase
                        ParentFont = False
                        Font.Height = -15
                        TabOrder = 1
                        Color = 60652
                        FieldLabel = 'C'#243'digo'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                  object UniSimplePanel8: TUniSimplePanel
                    Left = 0
                    Top = 65
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 8
                    ParentColor = False
                    Align = alTop
                    TabOrder = 2
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel1: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object UniDBEdit2: TUniDBEdit
                        Left = 0
                        Top = 0
                        Width = 320
                        Height = 59
                        Hint = ''
                        DataField = 'NOME'
                        DataSource = dsCad
                        CharCase = ecUpperCase
                        Align = alClient
                        ParentFont = False
                        Font.Height = -15
                        TabOrder = 1
                        FieldLabel = 'Nome completo'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                  object UniSimplePanel13: TUniSimplePanel
                    Left = 0
                    Top = 130
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 11
                    ParentColor = False
                    Align = alTop
                    TabOrder = 3
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel2: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object UniDBEdit3: TUniDBEdit
                        Left = 0
                        Top = 0
                        Width = 320
                        Height = 59
                        Hint = ''
                        DataField = 'EMAIL'
                        DataSource = dsCad
                        CharCase = ecLowerCase
                        Align = alClient
                        ParentFont = False
                        Font.Height = -15
                        TabOrder = 1
                        FieldLabel = 'E-mail'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                  object UniSimplePanel15: TUniSimplePanel
                    Left = 0
                    Top = 325
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 14
                    ParentColor = False
                    Align = alTop
                    TabOrder = 4
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel10: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object edtConfirmarsenha: TUniEdit
                        Left = 0
                        Top = 0
                        Width = 320
                        Height = 59
                        Hint = ''
                        PasswordChar = '*'
                        CharEOL = '*'
                        Text = ''
                        ParentFont = False
                        Font.Height = -15
                        Align = alClient
                        TabOrder = 1
                        FieldLabel = 'Confirmar a senha'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                  object UniSimplePanel3: TUniSimplePanel
                    Left = 0
                    Top = 195
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 14
                    ParentColor = False
                    Align = alTop
                    TabOrder = 5
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel4: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object UniDBEdit4: TUniDBEdit
                        Left = 0
                        Top = 0
                        Width = 320
                        Height = 59
                        Hint = ''
                        DataField = 'USUARIO'
                        DataSource = dsCad
                        CharCase = ecUpperCase
                        Align = alClient
                        ParentFont = False
                        Font.Height = -15
                        TabOrder = 1
                        FieldLabel = 'Usu'#225'rio'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                  object UniSimplePanel6: TUniSimplePanel
                    Left = 0
                    Top = 260
                    Width = 895
                    Height = 65
                    Hint = ''
                    CreateOrder = 14
                    ParentColor = False
                    Align = alTop
                    TabOrder = 6
                    Layout = 'column'
                    LayoutAttribs.Columns = 3
                    LayoutConfig.Height = '100%'
                    object UniSimplePanel9: TUniSimplePanel
                      AlignWithMargins = True
                      Left = 3
                      Top = 3
                      Width = 320
                      Height = 59
                      Hint = ''
                      CreateOrder = 7
                      ParentColor = False
                      Align = alLeft
                      TabOrder = 1
                      Layout = 'column'
                      object dbEditSenha: TUniDBEdit
                        Left = 0
                        Top = 0
                        Width = 320
                        Height = 59
                        Hint = ''
                        DataField = 'SENHA'
                        DataSource = dsCad
                        PasswordChar = '*'
                        CharCase = ecUpperCase
                        Align = alClient
                        ParentFont = False
                        Font.Height = -15
                        TabOrder = 1
                        FieldLabel = 'Senha'
                        FieldLabelAlign = laTop
                      end
                    end
                  end
                end
              end
            end
            object UniTabSheet2: TUniTabSheet
              Hint = ''
              Caption = 'Empresas'
              object UniSimplePanel12: TUniSimplePanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 925
                Height = 43
                Hint = ''
                ParentColor = False
                Align = alTop
                AlignmentControl = uniAlignmentClient
                ParentAlignmentControl = False
                TabOrder = 0
                object UniLabel4: TUniLabel
                  Left = 3
                  Top = 3
                  Width = 268
                  Height = 21
                  Hint = ''
                  Caption = 'Empresas que o usu'#225'rio ter'#225' acesso'
                  ParentFont = False
                  Font.Charset = ANSI_CHARSET
                  Font.Height = -16
                  Font.Style = [fsBold]
                  TabOrder = 1
                end
              end
              object UniSimplePanel16: TUniSimplePanel
                Left = 17
                Top = 49
                Width = 361
                Height = 515
                Hint = ''
                ParentColor = False
                Align = alLeft
                TabOrder = 1
                object UniSimplePanel18: TUniSimplePanel
                  Left = 0
                  Top = 0
                  Width = 361
                  Height = 268
                  Hint = ''
                  ParentColor = False
                  Align = alTop
                  TabOrder = 1
                  object UniLabel5: TUniLabel
                    Left = 0
                    Top = 0
                    Width = 282
                    Height = 42
                    Hint = ''
                    Alignment = taCenter
                    Caption = 'Selecione as empresas que o usu'#225'rio '#13#10'ter'#225' acesso'
                    Align = alTop
                    ParentFont = False
                    Font.Charset = ANSI_CHARSET
                    Font.Height = -16
                    Font.Style = [fsBold]
                    TabOrder = 1
                  end
                  object UniDBGrid3: TUniDBGrid
                    Left = 0
                    Top = 42
                    Width = 361
                    Height = 226
                    Hint = ''
                    DataSource = dsEmpresa
                    LoadMask.Message = 'Loading data...'
                    Align = alClient
                    TabOrder = 2
                    OnBodyDblClick = UniDBGrid3BodyDblClick
                  end
                end
                object UniSimplePanel14: TUniSimplePanel
                  Left = 0
                  Top = 268
                  Width = 361
                  Height = 247
                  Hint = ''
                  ParentColor = False
                  Align = alClient
                  TabOrder = 2
                  object UniDBGrid2: TUniDBGrid
                    Left = 0
                    Top = 21
                    Width = 361
                    Height = 172
                    Hint = ''
                    DataSource = dsEmpresaUsuario
                    LoadMask.Message = 'Loading data...'
                    Align = alTop
                    TabOrder = 1
                  end
                  object UniLabel6: TUniLabel
                    Left = 0
                    Top = 0
                    Width = 268
                    Height = 21
                    Hint = ''
                    Alignment = taCenter
                    Caption = 'Empresas que o usu'#225'rio tem acesso'
                    Align = alTop
                    ParentFont = False
                    Font.Charset = ANSI_CHARSET
                    Font.Height = -16
                    Font.Style = [fsBold]
                    TabOrder = 2
                  end
                  object UniDBNavigator1: TUniDBNavigator
                    Left = 56
                    Top = 199
                    Width = 241
                    Height = 25
                    Hint = ''
                    DataSource = dsEmpresaUsuario
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbRefresh]
                    TabOrder = 3
                  end
                end
              end
              object UniSimplePanel17: TUniSimplePanel
                Left = 0
                Top = 49
                Width = 17
                Height = 515
                Hint = ''
                ParentColor = False
                Align = alLeft
                TabOrder = 2
              end
            end
          end
        end
      end
    end
  end
  inherited UniContainerPanel2: TUniContainerPanel
    Top = 699
    ExplicitTop = 699
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 710
    Top = 122
    ExplicitLeft = 710
    ExplicitTop = 122
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FDQryCadField7'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_USUARIOS_ID'
    Params = <
      item
        DataType = ftString
        Name = 'ID'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'SELECT * FROM USUARIOS WHERE ID =:ID')
    UpdateTableName = 'USUARIOS'
    object FDQryCadID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryCadSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object FDQryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object FDQryCadDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
    object FDQryCadUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 40
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EMAIL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATA_CADASTRO'
        DataType = ftDate
      end
      item
        Name = 'FDQryFiltroField6'
        DataType = ftInteger
      end>
    SequenceName = 'GEN_USUARIOS_ID'
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'P01'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'SELECT *  FROM usuarios'
      'WHERE nome LIKE :P01  || '#39'%'#39
      'ORDER BY nome')
    UpdateTableName = 'USUARIOS'
    object FDQryFiltroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object FDQryFiltroSENHA: TStringField
      FieldName = 'SENHA'
      Size = 40
    end
    object FDQryFiltroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object FDQryFiltroDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
    end
  end
  object FDQryEmpresa: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'FDQryEmpresaField3'
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
    Params = <>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select CODIGO, NOME From EMPRESA')
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 608
    Top = 205
    object FDQryEmpresaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryEmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsEmpresa: TDataSource
    DataSet = FDQryEmpresa
    Left = 536
    Top = 213
  end
  object FDQryEmpresasUsuario: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <
      item
        Name = 'CODIUSUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIEMPRESA'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    SortOrder = soAsc
    SortCaseSens = scYes
    SortFields = ''
    AutoSortOnOpen = True
    AutoRefreshOnFilterChanged = True
    SequenceField = 'CODIUSUARIO'
    MasterCascadeDelete = True
    BinaryRequest = True
    Datapacks = -1
    DataCache = False
    MassiveType = mtMassiveCache
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIUSUARIO, CODIEMPRESA From USUARIOSEMPRESA where CODIU' +
        'SUARIO =:CODIGO')
    UpdateTableName = 'USUARIOSEMPRESA'
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ThreadRequest = False
    RaiseErrors = True
    ReflectChanges = False
    Left = 544
    Top = 285
    object FDQryEmpresasUsuarioCODIUSUARIO: TIntegerField
      FieldName = 'CODIUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryEmpresasUsuarioCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsEmpresaUsuario: TDataSource
    DataSet = FDQryEmpresasUsuario
    Left = 544
    Top = 357
  end
end
