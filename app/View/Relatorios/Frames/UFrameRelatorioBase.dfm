object FrmRelatorioGeral: TFrmRelatorioGeral
  Left = 0
  Top = 0
  ClientHeight = 672
  ClientWidth = 651
  Caption = ''
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  TextHeight = 15
  object UniURLFrame1: TUniURLFrame
    Left = 0
    Top = 33
    Width = 651
    Height = 639
    Hint = ''
    Align = alClient
    TabOrder = 0
    ParentColor = False
    Color = clBtnFace
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 651
    Height = 33
    Hint = ''
    Align = alTop
    ParentFont = False
    Font.Color = 16744448
    Font.Style = [fsBold]
    TabOrder = 1
    Caption = 'Controle Patrimonial Web'
    Color = clWhite
    object UniButton2: TUniButton
      Left = 17
      Top = 4
      Width = 80
      Height = 23
      Hint = ''
      Caption = 'Fechar'
      ParentFont = False
      Font.Color = clWhite
      Font.Style = [fsBold]
      TabOrder = 1
      OnClick = UniButton1Click
    end
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 552
    Top = 56
  end
end
