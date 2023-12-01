unit uCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, ACBrBase, ACBrEnterTab,
  uniDBLookupComboBox;

type
  TfrmCidades = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroUF: TStringField;
    FDQryFiltroCEP: TStringField;
    FDQryFiltroCODIIBGE: TLargeintField;
    FDQryCadCEP: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadUF: TStringField;
    FDQryCadCODIIBGE: TLargeintField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

uses MainModule;

end.
