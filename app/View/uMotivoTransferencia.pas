unit uMotivoTransferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox;

type
  TfrmMotivoTransferencia = class(TFrameBase)
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    FDQryCadCODIGO: TSmallintField;
    FDQryCadMOTIVO: TStringField;
    FDQryFiltroCODIGO: TSmallintField;
    FDQryFiltroMOTIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMotivoTransferencia: TfrmMotivoTransferencia;

implementation

{$R *.dfm}

uses MainModule;

end.
