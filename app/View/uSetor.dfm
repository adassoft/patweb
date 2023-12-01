inherited frmSetor: TfrmSetor
  Layout = 'border'
  ParentAlignmentControl = False
  AlignmentControl = uniAlignmentClient
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
      inherited UniDBGrid1: TUniDBGrid
        HiddenPanel = UniHiddenPanel1
        Exporter.FileName = 'SetorExport'
        Exporter.Exporter = dmComum.UniGridExcelExporter1
        Exporter.Title = 'Rela'#231#227'o de setores'
        Columns = <
          item
            FieldName = 'CODIGO'
            Title.Caption = 'C'#211'DIGO'
            Width = 94
            Editor = UniEdit1
          end
          item
            FieldName = 'SETOR'
            Title.Caption = 'SETOR'
            Width = 214
            Editor = UniEdit2
          end
          item
            FieldName = 'UNIDADE'
            Title.Caption = 'UNIDADE'
            Width = 244
            Editor = UniEdit3
          end
          item
            FieldName = 'RESPONSAVEL'
            Title.Caption = 'RESPONS'#193'VEL'
            Width = 244
            Editor = UniEdit4
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
          ScrollHeight = 35
        end
      end
    end
  end
  inherited UniNativeImageList1: TUniNativeImageList
    Left = 856
    Top = 248
  end
  inherited FDQryCad: TRESTDWClientSQL
    FieldDefs = <
      item
        Name = 'CODIGO'
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
        Name = 'MASP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 12
      end>
    AfterScroll = FDQryCadAfterScroll
    SequenceName = 'GEN_SETORES_ID'
    SequenceField = 'CODIGO'
    Params = <
      item
        DataType = ftInteger
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
    UpdateTableName = 'SETORES'
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
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
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
      end
      item
        Name = 'FDQryFiltroField5'
        DataType = ftInteger
      end>
    BinaryRequest = True
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    DataBase = UniMainModule.RESTDWIdDatabase
    SQL.Strings = (
      'Select'
      '    SETORES.CODIGO,'
      '    SETORES.NOME As SETOR,'
      '    UNIDADE.UNIDADE,'
      '    PESSOA.NOME As RESPONSAVEL'
      'From'
      '    SETORES Inner Join'
      '    PESSOA On PESSOA.CODIGO = SETORES.CODIRESPONSAVEL Inner Join'
      '    UNIDADE On UNIDADE.CODIGO = SETORES.CODIUNIDADE'
      'Where'
      '    SETORES.NOME LIKE :NOME || '#39'%'#39
      'ORDER BY CODIGO')
    UpdateTableName = 'SETORES'
    object FDQryFiltroCODIGO: TIntegerField
      DisplayLabel = 'C'#211'DIGO'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
