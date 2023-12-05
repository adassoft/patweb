unit uCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox;

type
  TfrmCategoria = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroTAXAMENSAL: TFloatField;
    FDQryFiltroTAXAANUAL: TFloatField;
    FDQryFiltroVIDAUTIL: TSmallintField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniDBNumberEdit2: TUniDBNumberEdit;
    UniDBNumberEdit3: TUniDBNumberEdit;
    UniDBNumberEdit4: TUniDBNumberEdit;
    UniDBNumberEdit5: TUniDBNumberEdit;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadCODIEMPRESA: TIntegerField;
    FDQryCadATIVOIMOBILIZADO: TIntegerField;
    FDQryCadDEPRECIACAOACUMULADA: TIntegerField;
    FDQryCadDEPRECIACAO: TIntegerField;
    FDQryCadTAXAMENSAL: TFloatField;
    FDQryCadTAXAACELERADA: TFloatField;
    FDQryCadTAXAINCENTIVADA: TFloatField;
    FDQryCadTAXAANUAL: TFloatField;
    FDQryCadVIDAUTIL: TSmallintField;
    procedure UniDBNumberEdit2Exit(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCategoria: TfrmCategoria;

implementation

{$R *.dfm}

uses MainModule;

procedure TfrmCategoria.BtIncClick(Sender: TObject);
begin
  inherited;
  FDQryCadCODIEMPRESA.AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
end;

procedure TfrmCategoria.UniDBNumberEdit2Exit(Sender: TObject);
begin
  inherited;
  FDQryCadTAXAMENSAL.Value := FDQryCadTAXAANUAL.Value/12;
end;

end.
