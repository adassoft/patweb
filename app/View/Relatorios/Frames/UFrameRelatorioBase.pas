unit UFrameRelatorioBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniGUIBaseClasses, uniURLFrame,
  frxClass, frxExportPDF, frxGradient, frxDBSet, ServerModule, uniPanel;

type
  TFrmRelatorioGeral = class(TUniForm)
    UniURLFrame1: TUniURLFrame;
    UniPanel1: TUniPanel;
    UniButton2: TUniButton;
    frxGradientObject1: TfrxGradientObject;
    procedure UniButton1Click(Sender: TObject);
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

end.
