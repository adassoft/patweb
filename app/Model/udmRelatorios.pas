unit udmRelatorios;

interface

uses
  SysUtils, Classes, Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes,
  uRESTDWBasicDB, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet;

type
  TdmRelatorios = class(TDataModule)
    frxDBDRelacaoGeral: TfrxDBDataset;
    frxRRelacaoGeral: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    sqlRelacaoGeral: TRESTDWClientSQL;
    sqlRelacaoGeralUNIDADE: TStringField;
    sqlRelacaoGeralNOME: TStringField;
    sqlRelacaoGeralCNPJ: TStringField;
    sqlRelacaoGeralEMAIL: TStringField;
    sqlRelacaoGeralNOME1: TStringField;
    sqlRelacaoGeralTOMBAMENTO: TFloatField;
    sqlRelacaoGeralDESCREDUZAIDA: TStringField;
    sqlRelacaoGeralDESCDETALHADA: TMemoField;
    sqlRelacaoGeralESTADOCONS: TStringField;
    sqlRelacaoGeralVALOR: TFloatField;
    sqlRelacaoGeralSTATUS: TStringField;
    sqlUnidade: TRESTDWClientSQL;
    sqlUnidadeCODIGO: TSmallintField;
    sqlUnidadeUNIDADE: TStringField;
    dsUnidade: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function dmRelatorios: TdmRelatorios;

implementation

{$R *.dfm}

uses
  UniGUIVars, uniGUIMainModule, MainModule;

function dmRelatorios: TdmRelatorios;
begin
  Result := TdmRelatorios(UniMainModule.GetModuleInstance(TdmRelatorios));
end;

initialization
  RegisterModuleClass(TdmRelatorios);

end.
