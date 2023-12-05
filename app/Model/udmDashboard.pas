unit udmDashboard;

interface

uses
  SysUtils, Classes, Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes,
  uRESTDWBasicDB;

type
  TdmDashboard = class(TDataModule)
    sqlTotalBens: TRESTDWClientSQL;
    sqlTotalBensCOUNT_CODIGO: TLargeintField;
    sqlTotalBensCODIEMPRESA: TIntegerField;
    sqlBensAtivos: TRESTDWClientSQL;
    sqlBensAtivosCOUNT_CODIGO: TLargeintField;
    sqlBensAtivosCODIEMPRESA: TIntegerField;
    sqlBensAtivosSTATUS: TStringField;
    sqlBensEmprestados: TRESTDWClientSQL;
    sqlBensEmprestadosEMPRESTADO: TLargeintField;
    sqlBensEmprestadosCODIEMPRESA: TIntegerField;
    sqlBensEmprestadosSTATUS: TStringField;
    sqlBaixados: TRESTDWClientSQL;
    sqlBaixadosBAIXADO: TLargeintField;
    sqlBaixadosCODIEMPRESA: TIntegerField;
    sqlBaixadosSTATUS: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmDashboard: TdmDashboard;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmDashboard: TdmDashboard;
begin
  Result := TdmDashboard(UniMainModule.GetModuleInstance(TdmDashboard));
end;

procedure TdmDashboard.DataModuleDestroy(Sender: TObject);
begin
    {if sqlTotalBens <> nil then
        sqlTotalBens.Active := False;

    if sqlBensAtivos <> nil then
        sqlBensAtivos.Active := False;

    if sqlBensEmprestados <> nil then
        sqlBensEmprestados.Active := False;}
end;

initialization
  RegisterModuleClass(TdmDashboard);

end.
