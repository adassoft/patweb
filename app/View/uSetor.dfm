inherited frmSetor: TfrmSetor
  inherited PageCadastro: TUniPageControl
    ActivePage = Tab2
    inherited Tab1: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 429
      inherited UniDBGrid1: TUniDBGrid
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Width = 64
          end
          item
            FieldName = 'SETOR'
            Title.Caption = 'SETOR'
            Width = 214
          end
          item
            FieldName = 'UNIDADE'
            Title.Caption = 'UNIDADE'
            Width = 244
          end
          item
            FieldName = 'RESPONSAVEL'
            Title.Caption = 'RESPONS'#193'VEL'
            Width = 244
          end>
      end
    end
    inherited Tab2: TUniTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 941
      ExplicitHeight = 429
      inherited UniPanel1: TUniPanel
        inherited UniScrollBox1: TUniScrollBox
          ScrollHeight = 212
          ScrollWidth = 505
          object UniDBEdit1: TUniDBEdit
            Left = 16
            Top = 55
            Width = 88
            Height = 36
            Hint = ''
            Enabled = False
            DataField = 'CODIGO'
            DataSource = dsCad
            TabOrder = 1
            Color = 60652
            FieldLabel = 'C'#243'digo'
            FieldLabelAlign = laTop
          end
          object UniDBLookupComboBox1: TUniDBLookupComboBox
            Left = 110
            Top = 55
            Width = 395
            Height = 36
            Hint = ''
            ListField = 'UNIDADE'
            ListSource = dmComum.dsUnidade
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIUNIDADE'
            DataSource = dsCad
            TabOrder = 2
            Color = clWindow
            FieldLabel = 'Unidade administrativa'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
          object UniDBEdit2: TUniDBEdit
            Left = 16
            Top = 115
            Width = 489
            Height = 36
            Hint = ''
            DataField = 'NOME'
            DataSource = dsCad
            TabOrder = 3
            FieldLabel = 'Nome do setor'
            FieldLabelAlign = laTop
          end
          object UniDBLookupComboBox2: TUniDBLookupComboBox
            Left = 16
            Top = 176
            Width = 489
            Height = 36
            Hint = ''
            ListField = 'NOME'
            ListSource = dmComum.dsPessoa
            KeyField = 'CODIGO'
            ListFieldIndex = 0
            DataField = 'CODIRESPONSAVEL'
            DataSource = dsCad
            TabOrder = 4
            Color = clWindow
            FieldLabel = 'Respons'#225'vel pelo setor'
            FieldLabelAlign = laTop
            ReadOnlyMode = urmNotEditable
          end
        end
      end
    end
  end
  inherited UniHiddenPanel1: TUniHiddenPanel
    Left = 718
    Top = 144
    ExplicitLeft = 718
    ExplicitTop = 144
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
        Size = 35
      end
      item
        Name = 'CODIRESPONSAVEL'
        DataType = ftInteger
      end
      item
        Name = 'CODIUNIDADE'
        DataType = ftInteger
      end
      item
        DataType = ftInteger
      end>
    SequenceName = 'GEN_SETORES_ID'
    Params = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    SETORES.CODIGO,'
      '    SETORES.NOME,'
      '    SETORES.CODIRESPONSAVEL,'
      '    SETORES.CODIUNIDADE'
      'From'
      '    SETORES'
      'Where'
      '    SETORES.CODIGO = :CODIGO')
    object FDQryCadCODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQryCadNOME: TStringField
      FieldName = 'NOME'
      Size = 35
    end
    object FDQryCadCODIRESPONSAVEL: TIntegerField
      FieldName = 'CODIRESPONSAVEL'
    end
    object FDQryCadCODIUNIDADE: TIntegerField
      FieldName = 'CODIUNIDADE'
    end
  end
  inherited FDQryFiltro: TRESTDWClientSQL
    Active = True
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CODIEMPRESA'
        DataType = ftInteger
      end
      item
        Name = 'SETOR'
        DataType = ftString
        Size = 35
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RESPONSAVEL'
        DataType = ftString
        Size = 40
      end>
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
      '    SETORES.CODIGO,'
      '    SETORES.CODIEMPRESA,'
      '    SETORES.NOME As SETOR,'
      '    UNIDADE.UNIDADE,'
      '    PESSOA.NOME As RESPONSAVEL'
      'From'
      '    SETORES Inner Join'
      '    PESSOA On PESSOA.CODIGO = SETORES.CODIRESPONSAVEL Inner Join'
      '    UNIDADE On UNIDADE.CODIGO = SETORES.CODIUNIDADE'
      'Where'
      '   SETORES.CODIEMPRESA=:CODIEMPRESA AND'
      '   SETORES.NOME Like :P01 || '#39'%'#39
      'ORDER BY CODIGO')
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQryFiltroCODIEMPRESA: TIntegerField
      FieldName = 'CODIEMPRESA'
    end
    object FDQryFiltroSETOR: TStringField
      FieldName = 'SETOR'
      Size = 35
    end
    object FDQryFiltroUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 40
    end
    object FDQryFiltroRESPONSAVEL: TStringField
      DisplayLabel = 'RESPONS'#193'VEL'
      FieldName = 'RESPONSAVEL'
      Size = 40
    end
  end
end
