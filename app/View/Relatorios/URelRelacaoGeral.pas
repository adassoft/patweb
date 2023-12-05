unit URelRelacaoGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniProgressBar, uniPanel,
  uniGroupBox, uniStatusBar, uniGUIBaseClasses, uniGenericControl, uniBitBtn,
  uniButton, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniLabel, uniScreenMask, Data.DB, uniMemo, uniURLFrame, udmComum, uniListBox,
  uniDBListBox, UFrameRelatorioGeral, uniPageControl, uRESTDWMemoryDataset,
  uRESTDWBasicTypes, uRESTDWBasicDB, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TFrmRelRelacaoGeral = class(TUniForm)
    UniPanel1: TUniPanel;
    UniScreenMask1: TUniScreenMask;
    UniContainerPanel2: TUniContainerPanel;
    UniPageControl1: TUniPageControl;
    tabFiltros: TUniTabSheet;
    tabReport: TUniTabSheet;
    UniGroupBox1: TUniGroupBox;
    UniLabel4: TUniLabel;
    BtImprimir: TUniBitBtn;
    BtSair: TUniBitBtn;
    UniDBLkupCaixa: TUniDBLookupComboBox;
    UniPDFFrame1: TUniPDFFrame;
    sqlRelatorio: TRESTDWClientSQL;
    frxDBDRelacaoGeral: TfrxDBDataset;
    frxRRelacaoGeral: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    btnVoltar: TUniBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure BtImprimirClick(Sender: TObject);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UniFormCreate(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    procedure ValidaUnidade;
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRelRelacaoGeral: TFrmRelRelacaoGeral;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, ClassRelatorios, UDmRelatorios,
  ClassAlert, ServerModule;

function FrmRelRelacaoGeral: TFrmRelRelacaoGeral;
begin
  Result := TFrmRelRelacaoGeral(UniMainModule.GetFormInstance(TFrmRelRelacaoGeral));
end;

procedure TFrmRelRelacaoGeral.BtImprimirClick(Sender: TObject);
var
  AUrl : string;
begin

  ValidaUnidade;


    Try
       sqlRelatorio.Close;
       sqlRelatorio.ParamByName('codiempresa').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
       sqlRelatorio.ParamByName('unidade').AsInteger := dmRelatorios.sqlUnidade.FieldByName('CODIGO').AsInteger;
       sqlRelatorio.Open;

       if sqlRelatorio.RecordCount < 0 then
       begin
           UniAlert.SwAlerta('ATENÇÃO', 'Sem dados para gerar o relatório', Aviso, 3000);
           abort;
       end;



     frxRRelacaoGeral.EngineOptions.SilentMode := True;
     frxRRelacaoGeral.EngineOptions.EnableThreadSafe := True;
     frxRRelacaoGeral.EngineOptions.DestroyForms := False;
     frxRRelacaoGeral.EngineOptions.UseGlobalDataSetList := False;
     frxRRelacaoGeral.PrintOptions.ShowDialog := False;
     frxRRelacaoGeral.ShowProgress := False;
     frxRRelacaoGeral.PreviewOptions.AllowEdit := False;

  //Report.LoadFromFile(sm.FilesFolderPath+'lib\RequisicaoDiaria.fr3');

      frxPDFExport1.Background := True;
      frxPDFExport1.ShowProgress := False;
      frxPDFExport1.ShowDialog := False;

      // Assign a unique name to exported file name
      frxPDFExport1.FileName := UniServerModule.NewCacheFileUrl(False, 'pdf', '', '', AUrl);
      frxPDFExport1.DefaultPath := '';

      frxRRelacaoGeral.PrepareReport;
      frxRRelacaoGeral.Export(frxPDFExport1);

      //UniURLFrame1.URL := AUrl;
      UniPDFFrame1.PdfURL := AUrl;


     UniPageControl1.TabIndex := 1;
     btnVoltar.Visible := true;



    Finally
     // pFormAtual.Free;
    End;




  {UniMainModule.UserRecord.vRelatorio := 'RelatorioGeral' ;

  oProcessaRel       := TProcessaRel.Create();
  oDadosRelatorioG := TDadosRelatorioGeral.Create();

//
  Try
  ShowMessage('Código da unidade '+IntToStr(dmRelatorios.sqlUnidadeCODIGO.AsInteger));
    oDadosRelatorioG.DadosRelatioG(dmRelatorios.sqlUnidadeCODIGO.AsInteger);

    AUrl := oProcessaRel.GeraReport(dmRelatorios.sqlUnidadeCODIGO.AsInteger);

    With FrmRelatorioBase do
      Begin
        UniURLFrame1.URL := AUrl ;
        Show();
      End;

  Finally
    oDadosRelatorioG.DadosRelatioG(dmRelatorios.sqlUnidadeCODIGO.AsInteger);


    oDadosRelatorioG.Free ;
    oProcessaRel.Free ;

   End;  }

//
end;

procedure TFrmRelRelacaoGeral.btnVoltarClick(Sender: TObject);
begin
  UniPageControl1.TabIndex := 0;
  btnVoltar.Visible := false;
end;

procedure TFrmRelRelacaoGeral.BtSairClick(Sender: TObject);
begin
//   DmRelatorio.QryContas.Open ;
//   DmRelatorio.QryContas.First ;
//   Begin
//     MemoTxt.Clear    ;
//     while not DmRelatorio.QryContas.Eof do
//      Begin
//        MemoTxt.Lines.Add( Copy(DmRelatorio.QryContasNOME_CONTA.AsString,1,30) );
//        DmRelatorio.QryContas.Next ;
//      End;
//   End;
//
//   MemoTxt.Lines.SaveToFile('.\www\Lista.txt');

 Close ;
end;

procedure TFrmRelRelacaoGeral.UniFormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmRelatorios.sqlUnidade.Close;
  Action := caFree ;
end;

procedure TFrmRelRelacaoGeral.UniFormCreate(Sender: TObject);
begin
  with dmRelatorios do
     begin
       sqlUnidade.Close;
       sqlUnidade.ParamByName('codiempresa').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
       sqlUnidade.Open ;
     end;
end;

procedure TFrmRelRelacaoGeral.ValidaUnidade;
begin
  if UniDBLkupCaixa.Text = '' then
  begin
    UniAlert.SwAlerta('ATENÇÃO', 'Você precisa selecionar uma Unidade administrativa', Aviso, 3000);
    abort;
  end;
end;


end.
