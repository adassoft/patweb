unit uUnidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniMemo, uniDBMemo;

type
  TfrmCadUnidade = class(TFrameBase)
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBEdit12: TUniDBEdit;
    rcBlock41: TUniContainerPanel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniDBHTMLMemo1: TUniDBHTMLMemo;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniDBHTMLMemo2: TUniDBHTMLMemo;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniDBHTMLMemo3: TUniDBHTMLMemo;
    FDQryCadCODIGO: TSmallintField;
    FDQryCadORGAO: TStringField;
    FDQryCadUNIDADE: TStringField;
    FDQryCadUNIDADE_ADMIN: TStringField;
    FDQryCadCPF: TStringField;
    FDQryCadRESPON_UNIDADE: TStringField;
    FDQryCadCAB_RODAPERG: TMemoField;
    FDQryCadTEXTOTRANSFERENCIA: TMemoField;
    FDQryCadASSINATURAS: TMemoField;
    FDQryCadIDEMPRESA: TIntegerField;
    FDQryCadEMAIL: TStringField;
    FDQryCadTELEFONES: TStringField;
    FDQryCadUF: TStringField;
    FDQryCadCIDADE: TStringField;
    FDQryCadBAIRRO: TStringField;
    FDQryCadENDERECO: TStringField;
    FDQryCadCEP: TStringField;
    FDQryFiltroCODIGO: TSmallintField;
    FDQryFiltroORGAO: TStringField;
    FDQryFiltroUNIDADE: TStringField;
    FDQryFiltroRESPON_UNIDADE: TStringField;
    FDQryFiltroEMAIL: TStringField;
    FDQryFiltroTELEFONES: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUnidade: TfrmCadUnidade;

implementation

{$R *.dfm}

uses MainModule;

end.
