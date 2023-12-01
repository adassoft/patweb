unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uRESTDWAbout, uRESTDWBasicDB,
  uRESTDWIdBase, Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes;

type
  TUniMainModule = class(TUniGUIMainModule)
    RESTDWIdDatabase: TRESTDWIdDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
    vUsuarioLongado : Integer;
    vEmpresaEscolhia : Integer;
    vNomeEmpresa : String;
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;


function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;



initialization
  RegisterMainModuleClass(TUniMainModule);
end.
