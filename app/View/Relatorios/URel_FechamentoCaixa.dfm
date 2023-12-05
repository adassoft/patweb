object FrmRelFechamentoCaixa: TFrmRelFechamentoCaixa
  Left = 0
  Top = 0
  ClientHeight = 484
  ClientWidth = 595
  Caption = ''
  OnShow = UniFormShow
  Color = clWhite
  FormStyle = fsMDIChild
  OldCreateOrder = False
  OnClose = UniFormClose
  Visible = True
  MonitoredKeys.Keys = <>
  PageMode = True
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniGroupBox1: TUniGroupBox
    Left = 0
    Top = 59
    Width = 595
    Height = 414
    Hint = ''
    Caption = 'Filtros'
    Align = alClient
    TabOrder = 0
    ParentFont = False
    Font.Height = -13
    ExplicitTop = 62
    ExplicitWidth = 640
    ExplicitHeight = 388
    DesignSize = (
      595
      414)
    object EdDtIni: TUniDateTimePicker
      Left = 24
      Top = 79
      Width = 137
      Height = 24
      Hint = ''
      DateTime = 42566.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 1
      ParentFont = False
      Font.Height = -16
    end
    object EdDtFim: TUniDateTimePicker
      Left = 226
      Top = 79
      Width = 137
      Height = 24
      Hint = ''
      DateTime = 42566.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      TabOrder = 2
      ParentFont = False
      Font.Height = -16
    end
    object UniLabel2: TUniLabel
      Left = 185
      Top = 85
      Width = 10
      Height = 19
      Hint = ''
      Caption = #224
      ParentFont = False
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 3
    end
    object UniLabel3: TUniLabel
      Left = 24
      Top = 56
      Width = 79
      Height = 19
      Hint = ''
      Caption = 'Data Inicial'
      ParentFont = False
      Font.Height = -16
      TabOrder = 4
    end
    object UniLabel1: TUniLabel
      Left = 226
      Top = 54
      Width = 70
      Height = 19
      Hint = ''
      Caption = 'Data Final'
      ParentFont = False
      Font.Height = -16
      TabOrder = 5
    end
    object UniLabel4: TUniLabel
      Left = 24
      Top = 133
      Width = 130
      Height = 19
      Hint = ''
      Caption = 'Selecione a Conta '
      ParentFont = False
      Font.Height = -16
      TabOrder = 6
    end
    object BtImprimir: TUniBitBtn
      Left = 398
      Top = 191
      Width = 161
      Height = 41
      Hint = ''
      Caption = 'Imprimir'
      Anchors = [akTop, akRight]
      TabOrder = 7
      OnClick = BtImprimirClick
    end
    object BtSair: TUniBitBtn
      Left = 398
      Top = 238
      Width = 161
      Height = 41
      Hint = ''
      Caption = 'Sair'
      Anchors = [akTop, akRight]
      TabOrder = 8
      OnClick = BtSairClick
    end
    object UniDBLkupCaixa: TUniDBLookupComboBox
      Left = 24
      Top = 168
      Width = 339
      Height = 41
      Hint = ''
      ListField = 'NOME_CONTA'
      ListSource = dsContas
      KeyField = 'NOME_CONTA'
      ListFieldIndex = 0
      TabOrder = 9
      Color = clWindow
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 59
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = clWhite
    Font.Height = -25
    Font.Name = 'Segoe UI Light'
    Font.Style = [fsBold]
    TabOrder = 1
    Caption = 'Relatorio do Fechamento de Caixa'
    Color = 16744448
  end
  object UniContainerPanel2: TUniContainerPanel
    Left = 0
    Top = 473
    Width = 595
    Height = 11
    Hint = ''
    ParentColor = False
    Color = 33023
    Align = alBottom
    TabOrder = 2
  end
  object UniScreenMask1: TUniScreenMask
    Enabled = True
    DisplayMessage = 'Aguarde gera'#231#227'o ........'
    TargetControl = Owner
    Left = 224
    Top = 266
  end
  object dsContas: TDataSource
    DataSet = DmRelatorio.QryContas
    Left = 120
    Top = 323
  end
end
