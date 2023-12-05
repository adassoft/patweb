unit udmComum;

interface

uses
  SysUtils, Classes, uniBasicGrid, uniGridExporters, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB;

type
  TdmComum = class(TDataModule)
    FDQryUnidade: TRESTDWClientSQL;
    FDQryUnidadeCODIGO: TSmallintField;
    FDQryUnidadeUNIDADE: TStringField;
    FDQryGrupo: TRESTDWClientSQL;
    FDQryGrupoCODIGO: TIntegerField;
    FDQryGrupoDESGRUPO: TStringField;
    dsUnidade: TDataSource;
    dsGrupo: TDataSource;
    FDQryCentro: TRESTDWClientSQL;
    FDQryCentroCODIGO: TIntegerField;
    FDQryCentroDESCENTRO: TStringField;
    dsCentro: TDataSource;
    FDQryFornecedor: TRESTDWClientSQL;
    FDQryFornecedorCODIGO: TIntegerField;
    FDQryFornecedorNOME: TStringField;
    FDQryFornecedorCNPJ: TStringField;
    dsFornecedor: TDataSource;
    FDQryCidade: TRESTDWClientSQL;
    FDQryCidadeCODIGO: TIntegerField;
    FDQryCidadeDESCRICAO: TStringField;
    FDQryCidadeUF: TStringField;
    dsCidade: TDataSource;
    dsSetor: TDataSource;
    FDQrySetor: TRESTDWClientSQL;
    FDQrySetorCODIGO: TIntegerField;
    FDQrySetorNOME: TStringField;
    dsCategoria: TDataSource;
    FDQryCategoria: TRESTDWClientSQL;
    FDQryCategoriaCODIGO: TIntegerField;
    FDQryCategoriaDESCRICAO: TStringField;
    dsPessoa: TDataSource;
    FDQryPessoa: TRESTDWClientSQL;
    FDQryPessoaCODIGO: TIntegerField;
    FDQryPessoaNOME: TStringField;
    FDQryPessoaMASP: TStringField;
    FDQryPessoaTELEFONE: TStringField;
    UniGridExcelExporter1: TUniGridExcelExporter;
    FDQryEmpresa: TRESTDWClientSQL;
    dsEmpresa: TDataSource;
    FDQryEmpresaCODIUSUARIO: TIntegerField;
    FDQryEmpresaCODIEMPRESA: TIntegerField;
    FDQryEmpresaNOME: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmComum: TdmComum;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmComum: TdmComum;
begin
  Result := TdmComum(UniMainModule.GetModuleInstance(TdmComum));
end;

procedure TdmComum.DataModuleDestroy(Sender: TObject);
begin
   { if FDQryUnidade <> nil then
        FDQryUnidade.Active := False;

    if FDQryPessoa <> nil then
        FDQryPessoa.Active := False;

    if FDQryCategoria <> nil then
        FDQryCategoria.Active := False;

    if FDQrySetor <> nil then
        FDQrySetor.Active := False;

    if FDQryGrupo <> nil then
        FDQryGrupo.Active := False;

    if FDQryCentro <> nil then
        FDQryCentro.Active := False;

    if FDQryFornecedor <> nil then
        FDQryFornecedor.Active := False;

    if FDQryCidade <> nil then
        FDQryCidade.Active := False;

    if FDQryEmpresa <> nil then
        FDQryEmpresa.Active := False;   }

end;

initialization
  RegisterModuleClass(TdmComum);

end.
