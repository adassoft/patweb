unit uSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses, uniEdit,
  uniPageControl, uniButton, uniBitBtn, uniLabel, MainModule, udmComum,
  ClassAlert, uniDBEdit;

type
  TfrmSetor = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroCODIEMPRESA: TIntegerField;
    FDQryFiltroSETOR: TStringField;
    FDQryFiltroUNIDADE: TStringField;
    FDQryFiltroRESPONSAVEL: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadCODIRESPONSAVEL: TIntegerField;
    FDQryCadCODIUNIDADE: TIntegerField;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBEdit2: TUniDBEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbreTabelas;
  public
    { Public declarations }
  end;

var
  frmSetor: TfrmSetor;

implementation

{$R *.dfm}

{ TfrmSetor }

procedure TfrmSetor.AbreTabelas;
begin
try
  dmComum.FDQryUnidade.Close;
  dmComum.FDQryUnidade.Open;
  dmComum.FDQryPessoa.Close;
  dmComum.FDQryPessoa.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Unidade e/ou a tabela Pessoa.' , Aviso , 3000);
   Abort ;
  End ;
end;

procedure TfrmSetor.BtAltClick(Sender: TObject);
begin
  inherited;
  AbreTabelas;
end;

procedure TfrmSetor.BtIncClick(Sender: TObject);
begin
  inherited;
  AbreTabelas;
end;

end.
