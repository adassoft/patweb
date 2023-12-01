unit uSetor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uRESTDWAbout,
  ACBrBase, ACBrEnterTab;

type
  TfrmSetor = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroSETOR: TStringField;
    FDQryFiltroUNIDADE: TStringField;
    FDQryFiltroRESPONSAVEL: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadCODIRESPONSAVEL: TIntegerField;
    FDQryCadCODIUNIDADE: TIntegerField;
    procedure FDQryCadAfterScroll(DataSet: TDataSet);
    procedure BtAltClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbriTabelas;
  public
    { Public declarations }
  end;

var
  frmSetor: TfrmSetor;

implementation

{$R *.dfm}

uses MainModule, udmComum, ClassAlert;

procedure TfrmSetor.AbriTabelas;
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
  AbriTabelas;
end;

procedure TfrmSetor.BtIncClick(Sender: TObject);
begin
  inherited;
  AbriTabelas;
end;

procedure TfrmSetor.FDQryCadAfterScroll(DataSet: TDataSet);
begin
  inherited;
  AbriTabelas;
end;

end.
