unit ClassRelatorios;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniGUIBaseClasses, uniGroupBox,
  uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage, uniImage, uniPageControl,
  uniSplitter, uniBitBtn, uniSpeedButton, uniEdit, uniLabel, uniToolBar,
  Data.DB, uniDBText, uniDBEdit, uniScrollBox,
  uniMultiItem, uniComboBox, uniDBComboBox, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, uniMemo,
  frxClass, frxExportPDF, frxDBSet, frxGradient, UFrameRelatorioGeral;

// Quando for usar injeção usando a class Helper, HABILITAR a Linha abaixo
  type
    TProcessaRel = class
    private
     vUnidade: Integer;

    public
      property Unidade: Integer read vUnidade write vUnidade;
      Function GeraReport(dUnidade: Integer):String ;

  end;

  TDadosRelatorioGeral = class

  private
    // atributos da classe
    FNomeUsuario: string ;

  public
    property NomeUsuario: string    read FNomeUsuario write FNomeUsuario ;

    Function DadosRelatioG(dUnidade: Integer) :Boolean;
    (*Function BuscaDadosMovimento(dDataIni,dDataFim:TDateTime;nFilial,nConta:Integer):Boolean ;
    Function FechaDadosMovimento():Boolean ;
    Function MontaTotaisFechamento(dDataIni,dDataFim:TDateTime;nFilial,nConta:Integer):Boolean ;
    Function BuscaDadosMovimentoReceitasDespesas(dDataIni,dDataFim:TDateTime;nFilial,nConta:Integer):Boolean ;
    Function FechaDadosMovimentoReceitasDespesas():Boolean ;*)
  end;
   //oProcessaReal : TProcessaRel ;

implementation

uses  MainModule, UDmRelatorios, ServerModule;



{ TProcessaRel }

{ TDadosRelatorioGEral }





{ TDadosFechamentoCX }

{function TDadosFechamentoCX.BuscaDadosMovimento(dDataIni,dDataFim:TDateTime;nFilial,nConta:Integer): Boolean;
begin
//   nConta:=1 ;
   With DmRelatorio do
     Begin
       QryMovimento_Caixa.Close ;
       QryMovimento_Caixa.ParamByName('DtIni').AsDateTime    := dDataIni ;
       QryMovimento_Caixa.ParamByName('DtFim').AsDateTime    := dDataFim ;
       QryMovimento_Caixa.ParamByName('conta').AsInteger     := nConta   ;
//       QryMovimento_Caixa.ParamByName('id_Filial').AsInteger := nFilial  ;
       QryMovimento_Caixa.Open  ;
     End;
end;}


{function TDadosFechamentoCX.BuscaDadosMovimentoReceitasDespesas(dDataIni,
  dDataFim: TDateTime; nFilial, nConta: Integer): Boolean;
begin
   With DmRelatorio do
     Begin
       QryRecDesp.Close ;
       QryRecDesp.ParamByName('DtIni').AsDateTime    := dDataIni ;
       QryRecDesp.ParamByName('DtFim').AsDateTime    := dDataFim ;
       QryRecDesp.ParamByName('conta').AsInteger     := nConta   ;
//       QryRecDesp.ParamByName('id_Filial').AsInteger := nFilial  ;
       QryRecDesp.Open  ;
     End;
end;

function TDadosFechamentoCX.FechaDadosMovimento: Boolean;
begin
   DmRelatorio.QryMovimento_Caixa.Close ;
end;}


{function TDadosFechamentoCX.FechaDadosMovimentoReceitasDespesas: Boolean;
begin
   DmRelatorio.QryRecDesp.Close ;
end; }

{function TDadosFechamentoCX.MontaTotaisFechamento(dDataIni, dDataFim: TDateTime;
  nFilial, nConta: Integer): Boolean;
begin
   With DmRelatorio do
     Begin
       QryMontaTotais.Close ;
       QryMontaTotais.ParamByName('DtIni').AsDateTime    := dDataIni ;
       QryMontaTotais.ParamByName('DtFim').AsDateTime    := dDataFim ;
       QryMontaTotais.ParamByName('conta').AsInteger     := nConta   ;
   //    QryMontaTotais.ParamByName('id_Filial').AsInteger := nFilial  ;
       QryMontaTotais.Open  ;
     End;
end; }

{function TProcessaRel.PassaVariaveisReport(dDataIni,
  dDataFim: TDateTime): Boolean;
begin

  With DmRelatorio do
    begin
      with frxReport1 do
      begin
         Variables['DATAINI']   := QuotedStr(DateTimeToStr(dDataIni)) ;
         Variables['DATAFIM']   := QuotedStr(DateTimeToStr(dDataFim)) ;
      end;
    end;
end;  }

{ TProcessaRel }

{function TProcessaRel.GeraReport(dDataIni,dDataFim: TDateTime): String;
var
  AUrl : string;
begin
  With DmRelatorio do
  begin
    with frxReport1, frxPDFExport1 do
    begin

       //showmessage(UniServerModule.FilesFolderPath );  //pasta files

   //   frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + UniMainModule.cNomeRelatorio + '.fr3');
      frxReport1.LoadFromFile('.\report\' + UniMainModule.cNomeRelatorio + '.fr3');

      frxReport1.PrintOptions.ShowDialog            := False;
      frxReport1.ShowProgress                       := False;

      frxReport1.EngineOptions.SilentMode           := True;
      frxReport1.EngineOptions.EnableThreadSafe     := True;
      frxReport1.EngineOptions.DestroyForms         := False;
      frxReport1.EngineOptions.UseGlobalDataSetList := False;

      frxReport1.Variables['NOME_EMPRESA']   := QuotedStr(UniMainModule.cNomeEmpresa) ;

      frxReport1.Variables['DATAINI']        := QuotedStr(DateTimeToStr(dDataIni)) ;
      frxReport1.Variables['DATAFIM']        := QuotedStr(DateTimeToStr(dDataFim)) ;

      frxPDFExport1.Background   := True;
      frxPDFExport1.ShowProgress := False;
      frxPDFExport1.ShowDialog   := False;
      frxPDFExport1.FileName     := UniServerModule.NewCacheFileUrl(False, 'pdf','', '', AUrl);
      frxPDFExport1.DefaultPath  := '';

      frxReport1.PreviewOptions.AllowEdit := False;
      frxReport1.PrepareReport;
      frxReport1.Export(frxPDFExport1);

      Result := AUrl ;
    end;

  end;}


{ TDadosRelatorioGeral }


function TDadosRelatorioGeral.DadosRelatioG(dUnidade: Integer): Boolean;
begin

   With dmRelatorios do
     Begin
       sqlRelacaoGeral.Close ;
       sqlRelacaoGeral.ParamByName('codiempresa').AsInteger    := UniMainModule.UserRecord.vEmpresaEscolhia;
       sqlRelacaoGeral.ParamByName('unidade').AsInteger        := dUnidade ;
      sqlRelacaoGeral.Open;
     End;

end;


{ TProcessaRel }


function TProcessaRel.GeraReport(dUnidade: Integer): string;
var
  AUrl : string;
begin
  With dmRelatorios do
  begin
    with frxRRelacaoGeral, frxPDFExport1 do
    begin

       //showmessage(UniServerModule.FilesFolderPath );  //pasta files

   //   frxReport1.LoadFromFile(UniServerModule.FilesFolderPath + UniMainModule.cNomeRelatorio + '.fr3');
      frxRRelacaoGeral.LoadFromFile('.\report\' + UniMainModule.UserRecord.vRelatorio + '.fr3');

      frxRRelacaoGeral.PrintOptions.ShowDialog            := False;
      frxRRelacaoGeral.ShowProgress                       := False;

      frxRRelacaoGeral.EngineOptions.SilentMode           := True;
      frxRRelacaoGeral.EngineOptions.EnableThreadSafe     := True;
      frxRRelacaoGeral.EngineOptions.DestroyForms         := False;
      frxRRelacaoGeral.EngineOptions.UseGlobalDataSetList := False;
      //Nesse ponto é possível passar variáveis para o relatório
      //frxReport1.Variables['NOME_EMPRESA']   := QuotedStr(UniMainModule.cNomeEmpresa) ;
      //frxReport1.Variables['DATAINI']        := QuotedStr(DateTimeToStr(dDataIni)) ;
      //frxReport1.Variables['DATAFIM']        := QuotedStr(DateTimeToStr(dDataFim)) ;

      //frxRRelacaoGeral.Background   := True;
      frxRRelacaoGeral.ShowProgress := False;
      //frxRRelacaoGeral.ShowDialog   := False;
      frxRRelacaoGeral.FileName     := UniServerModule.NewCacheFileUrl(False, 'pdf','', '', AUrl);
      //frxRRelacaoGeral.DefaultPath  := '';

      frxRRelacaoGeral.PreviewOptions.AllowEdit := False;
      frxRRelacaoGeral.PrepareReport;
      frxRRelacaoGeral.Export(frxPDFExport1);

      Result := AUrl ;
    end;

  end;
end;

end.
