unit uCentroCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit;

type
  TfrmCentroCusto = class(TFrameBase)
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    FDQryFiltroCODCENTRO: TIntegerField;
    FDQryFiltroDESCENTRO: TStringField;
    FDQryCadCODCENTRO: TIntegerField;
    FDQryCadDESCENTRO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCentroCusto: TfrmCentroCusto;

implementation

{$R *.dfm}

uses MainModule;

end.
