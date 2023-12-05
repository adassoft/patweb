unit UFrameRelatorioGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame,
  frxClass, frxExportPDF, frxGradient, frxDBSet, ServerModule, uniPanel;

type
  TFrmRelatorioGeral = class(TUniForm)
    UniPanel1: TUniPanel;
    UniButton2: TUniButton;
    frxGradientObject1: TfrxGradientObject;
    UniPDFFrame1: TUniPDFFrame;
    procedure UniButton1Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
//
//    procedure PrepareAndShow(Report: TfrxReport; Exp: TfrxPDFExport);

  public
    { Public declarations }
    NomeRelatorio, SQLTable: string;
  end;

function FrmRelatorioGeral: TFrmRelatorioGeral;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UDmRelatorios;

function FrmRelatorioGeral: TFrmRelatorioGeral;
begin
  Result := TFrmRelatorioGeral(UniMainModule.GetFormInstance(TFrmRelatorioGeral));
end;



procedure TFrmRelatorioGeral.UniButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelatorioGeral.UniFormShow(Sender: TObject);
var
  AUrl : string;
begin

    {with dmRelatorios do
     begin
       sqlUnidade.Close;
       sqlUnidade.ParamByName('codiempresa').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
       sqlUnidade.Open ;
     end;  }


  dmRelatorios.frxRRelacaoGeral.EngineOptions.SilentMode := True;
  dmRelatorios.frxRRelacaoGeral.EngineOptions.EnableThreadSafe := True;
  dmRelatorios.frxRRelacaoGeral.EngineOptions.DestroyForms := False;
  dmRelatorios.frxRRelacaoGeral.EngineOptions.UseGlobalDataSetList := False;
  dmRelatorios.frxRRelacaoGeral.PrintOptions.ShowDialog := False;
  dmRelatorios.frxRRelacaoGeral.ShowProgress := False;
  dmRelatorios.frxRRelacaoGeral.PreviewOptions.AllowEdit := False;

  //Report.LoadFromFile(sm.FilesFolderPath+'lib\RequisicaoDiaria.fr3');

  dmRelatorios.frxPDFExport1.Background := True;
  dmRelatorios.frxPDFExport1.ShowProgress := False;
  dmRelatorios.frxPDFExport1.ShowDialog := False;

  // Assign a unique name to exported file name
  dmRelatorios.frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', AUrl);
  dmRelatorios.frxPDFExport1.DefaultPath := '';

  dmRelatorios.frxRRelacaoGeral.PrepareReport;
  dmRelatorios.frxRRelacaoGeral.Export(dmRelatorios.frxPDFExport1);

  //UniURLFrame1.URL := AUrl;
  UniPDFFrame1.PdfURL := AUrl;
end;

end.
