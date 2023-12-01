inherited frmEmpresaUsuaria: TfrmEmpresaUsuaria
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
    ActivePage = Tab2
    inherited Tab1: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 429
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
    end
    inherited Tab2: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 429
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 35
          ScrollWidth = 34
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
                Width = 226
                Height = 23
                Hint = ''
                Caption = 'Cadastro de Empresa Usu'#225'ria'
                Align = alClient
                ParentFont = False
                Font.Color = clGray
                Font.Height = -19
                Font.Name = 'Calibri'
                TabOrder = 1
                ExplicitWidth = 154
              end
            end
          end
          object plEsquerdo: TUniSimplePanel
            Left = 0
            Top = 35
            Width = 17
            Height = 392
            Hint = ''
            ParentColor = False
            Align = alLeft
            TabOrder = 1
            ExplicitTop = 0
            ExplicitHeight = 562
          end
          object UniSimplePanel7: TUniSimplePanel
            Left = 17
            Top = 35
            Width = 905
            Height = 392
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
            ExplicitTop = 0
            ExplicitWidth = 895
            ExplicitHeight = 562
            ScrollHeight = 392
            ScrollWidth = 905
            object UniSimplePanel5: TUniSimplePanel
              Left = 0
              Top = 0
              Width = 905
              Height = 65
              Hint = ''
              CreateOrder = 1
              ParentColor = False
              Align = alTop
              TabOrder = 1
              Layout = 'column'
              LayoutAttribs.Columns = 3
              LayoutConfig.Height = '100%'
              ExplicitWidth = 922
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
                  DataField = 'CODIGO'
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
              Width = 905
              Height = 65
              Hint = ''
              CreateOrder = 8
              ParentColor = False
              Align = alTop
              TabOrder = 2
              Layout = 'column'
              LayoutAttribs.Columns = 3
              LayoutConfig.Height = '100%'
              ExplicitWidth = 922
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
                  FieldLabel = 'Empresa'
                  FieldLabelAlign = laTop
                end
              end
            end
            object UniSimplePanel13: TUniSimplePanel
              Left = 0
              Top = 130
              Width = 905
              Height = 65
              Hint = ''
              CreateOrder = 11
              ParentColor = False
              Align = alTop
              TabOrder = 3
              Layout = 'column'
              LayoutAttribs.Columns = 3
              LayoutConfig.Height = '100%'
              ExplicitWidth = 922
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
                  DataField = 'CNPJ'
                  DataSource = dsCad
                  CharCase = ecLowerCase
                  Align = alClient
                  ParentFont = False
                  Font.Height = -15
                  TabOrder = 1
                  InputMask.Mask = '99.999.999/9999-99'
                  InputMask.UnmaskText = True
                  FieldLabel = 'CNPJ'
                  FieldLabelAlign = laTop
                  OnExit = UniDBEdit3Exit
                end
              end
            end
            object UniSimplePanel3: TUniSimplePanel
              Left = 0
              Top = 195
              Width = 905
              Height = 65
              Hint = ''
              CreateOrder = 14
              ParentColor = False
              Align = alTop
              TabOrder = 4
              Layout = 'column'
              LayoutAttribs.Columns = 3
              LayoutConfig.Height = '100%'
              ExplicitWidth = 922
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
                  DataField = 'EMAIL'
                  DataSource = dsCad
                  CharCase = ecLowerCase
                  Align = alClient
                  ParentFont = False
                  Font.Height = -15
                  TabOrder = 1
                  FieldLabel = 'E-mail'
                  FieldLabelAlign = laTop
                  OnExit = UniDBEdit4Exit
                end
              end
            end
          end
          object plDireito: TUniSimplePanel
            Left = 922
            Top = 35
            Width = 17
            Height = 392
            Hint = ''
            ParentColor = False
            Align = alRight
            TabOrder = 3
            ExplicitLeft = 912
            ExplicitTop = 0
            ExplicitHeight = 562
          end
        end
      end
    end
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 730
    Top = 136
    ExplicitLeft = 730
    ExplicitTop = 136
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
        DataType = ftInteger
      end>
    SequenceName = 'GEN_EMPRESA_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      
        'Select CODIGO, NOME, CNPJ, EMAIL From EMPRESA WHERE CODIGO=:CODI' +
        'GO ORDER BY CODIGO')
    UpdateTableName = 'EMPRESA'
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object FDQryCadCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.900.000/0000-00;0;_'
      Size = 14
    end
    object FDQryCadEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
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
      end>
    SequenceName = 'GEN_EMPRESA_ID'
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
      
        'Select CODIGO, NOME, CNPJ, EMAIL From EMPRESA WHERE NOME LIKE :N' +
        'OME || '#39'%'#39
      'ORDER BY CODIGO')
    object FDQryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object FDQryFiltroCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object FDQryFiltroEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
  end
end
