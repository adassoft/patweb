unit uDados;

interface

uses
  System.SysUtils, System.Classes, uRESTDWDatamodule, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBDef,
  uRESTDWAbout, uRESTDWBasicDB, FireDAC.Phys.IBBase, FireDAC.Phys.IB,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.Client, uRESTDWDriverBase,
  uRESTDWFireDACDriver;

type
  TdmDados = class(TServerMethodDataModule)
    FireDacCon: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    RESTDWPoolerDB: TRESTDWPoolerDB;
    RESTDWFireDACDriver: TRESTDWFireDACDriver;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
