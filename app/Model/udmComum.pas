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
    FDQryEmpresaCODIGO: TIntegerField;
    FDQryEmpresaNOME: TStringField;
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

initialization
  RegisterModuleClass(TdmComum);

end.
