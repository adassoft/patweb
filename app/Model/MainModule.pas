unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, uRESTDWAbout, uRESTDWBasicDB,
  uRESTDWIdBase, Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes;

type
  TUniMainModule = class(TUniGUIMainModule)
    RESTDWIdDatabase: TRESTDWIdDatabase;
type
  PUserRecord = ^TUserRecord;
  TUserRecord = record
     vUsuarioLongado, vEmpresaEscolhia : Integer;
     vNomeEmpresa, vRelatorio : String;
  end;

    procedure UniGUIMainModuleSessionTimeout(ASession: TObject;
      var ExtendTimeOut: Integer);
    procedure UniGUIMainModuleDestroy(Sender: TObject);
    procedure UniGUIMainModuleBrowserClose(Sender: TObject);
  private
    { Private declarations }
    FUserRecord: TUserRecord;
    function GetUserRecord: PUserRecord;
  public
    { Public declarations }
    property UserRecord: PUserRecord read GetUserRecord;
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

function TUniMainModule.GetUserRecord: PUserRecord;
begin
  Result := @FUserRecord;
end;




procedure TUniMainModule.UniGUIMainModuleBrowserClose(Sender: TObject);
begin
  UniSession.Log( '>>> mm.UniGUIMainModuleBrowserClose' );
  //Fechar todas as querys

end;

procedure TUniMainModule.UniGUIMainModuleDestroy(Sender: TObject);
begin
  UniSession.Log( '>>> mm.UniGUIMainModuleDestroy:' + DateTimeToStr( now ) );
  RESTDWIdDatabase.Close;
end;

procedure TUniMainModule.UniGUIMainModuleSessionTimeout(ASession: TObject;
  var ExtendTimeOut: Integer);
begin
  UniSession.Log( '>>> mm.UniGUIMainModuleSessionTimeout' + DateTimeToStr( now ) );
  ExtendTimeOut := 1800000;// 600000;
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
