unit uGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit;

type
  TfrmGrupos = class(TFrameBase)
    UniDBEdit2: TUniDBEdit;
    UniDBEdit1: TUniDBEdit;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadDESGRUPO: TStringField;
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroDESGRUPO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;

implementation

{$R *.dfm}

uses MainModule;

end.
