unit uSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uRESTDWAbout;

type
  TfrmSetor = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroSETOR: TStringField;
    FDQryFiltroUNIDADE: TStringField;
    FDQryFiltroRESPONSAVEL: TStringField;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    FDQryUnidade: TRESTDWClientSQL;
    dsUnidade: TDataSource;
    FDQryUnidadeCODIGO: TSmallintField;
    FDQryUnidadeUNIDADE: TStringField;
    UniDBEdit2: TUniDBEdit;
    FDQryPessoa: TRESTDWClientSQL;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    dsPessoa: TDataSource;
    FDQryPessoaCODIGO: TIntegerField;
    FDQryPessoaNOME: TStringField;
    FDQryPessoaMASP: TStringField;
    FDQryPessoaTELEFONE: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadCODIRESPONSAVEL: TIntegerField;
    FDQryCadCODIUNIDADE: TIntegerField;
    procedure FDQryCadAfterScroll(DataSet: TDataSet);
    procedure BtAltClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetor: TfrmSetor;

implementation

{$R *.dfm}

uses MainModule;

procedure TfrmSetor.BtAltClick(Sender: TObject);
begin
  inherited;
  FDQryUnidade.Close;
  FDQryUnidade.Open;
  FDQryPessoa.Close;
  FDQryPessoa.Open;
end;

procedure TfrmSetor.BtIncClick(Sender: TObject);
begin
  inherited;
  FDQryUnidade.Close;
  FDQryUnidade.Open;
  FDQryPessoa.Close;
  FDQryPessoa.Open;
end;

procedure TfrmSetor.FDQryCadAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FDQryUnidade.Close;
  FDQryUnidade.Open;
  FDQryPessoa.Close;
  FDQryPessoa.Open;
end;

end.
