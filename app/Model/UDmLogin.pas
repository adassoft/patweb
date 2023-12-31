unit UDmLogin;

interface

uses
  SysUtils, Classes, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uRESTDWMemoryDataset,
  uRESTDWBasicTypes, uRESTDWBasicDB;

type
  TDMLogin = class(TDataModule)
    QryLogin: TRESTDWClientSQL;
    QryLoginID: TIntegerField;
    QryLoginNOME: TStringField;
    QryLoginSENHA: TStringField;
    QryLoginEMAIL: TStringField;
    QryLoginDATA_CADASTRO: TDateField;
    QryCadUsuarioNovo: TRESTDWClientSQL;
    QryCadUsuarioNovoID: TIntegerField;
    QryCadUsuarioNovoNOME: TStringField;
    QryCadUsuarioNovoSENHA: TStringField;
    QryCadUsuarioNovoEMAIL: TStringField;
    QryCadUsuarioNovoDATA_CADASTRO: TDateField;
    ValidaUsuarioEmail: TRESTDWClientSQL;
    ValidaUsuarioEmailID: TIntegerField;
    ValidaUsuarioEmailNOME: TStringField;
    ValidaUsuarioEmailSENHA: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function DMLogin: TDMLogin;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function DMLogin: TDMLogin;
begin
  Result := TDMLogin(UniMainModule.GetModuleInstance(TDMLogin));
end;

procedure TDMLogin.DataModuleDestroy(Sender: TObject);
begin

     {if QryLogin <> nil then
        QryLogin.Active := False;

     if QryCadUsuarioNovo <> nil then
        QryCadUsuarioNovo.Active := False;

     if ValidaUsuarioEmail <> nil then
        ValidaUsuarioEmail.Active := False;  }


end;

initialization
  RegisterModuleClass(TDMLogin);

end.
