unit uEmpresaUsuaria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses, uniEdit,
  uniPageControl, uniButton, uniBitBtn, uniLabel, MainModule, uniDBEdit, Utils,
  ClassAuxiliar;

type
  TfrmEmpresaUsuaria = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroCNPJ: TStringField;
    FDQryFiltroEMAIL: TStringField;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    plEsquerdo: TUniSimplePanel;
    UniSimplePanel7: TUniSimplePanel;
    UniSimplePanel5: TUniSimplePanel;
    UniSimplePanel11: TUniSimplePanel;
    UniDBEdit1: TUniDBEdit;
    UniSimplePanel8: TUniSimplePanel;
    UniSimplePanel1: TUniSimplePanel;
    UniDBEdit2: TUniDBEdit;
    UniSimplePanel13: TUniSimplePanel;
    UniSimplePanel2: TUniSimplePanel;
    UniDBEdit3: TUniDBEdit;
    UniSimplePanel3: TUniSimplePanel;
    UniSimplePanel4: TUniSimplePanel;
    UniDBEdit4: TUniDBEdit;
    plDireito: TUniSimplePanel;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadCNPJ: TStringField;
    FDQryCadEMAIL: TStringField;
    procedure UniDBEdit3Exit(Sender: TObject);
    procedure UniDBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpresaUsuaria: TfrmEmpresaUsuaria;

implementation

{$R *.dfm}

procedure TfrmEmpresaUsuaria.UniDBEdit3Exit(Sender: TObject);
begin
  inherited;
  // Validar o CNPJ digitado
  if Length(Trim(UniDBEdit3.Text)) > 11 then
  begin
      if not(ClassAuxiliar.Acoes.ValidaCNPJ_CPF(UniDBEdit3.Text)) then
      begin
       ShowMessage('O CNPJ digitado não é válido');
       UniDBEdit3.SetFocus;
       Abort;
      end;
  end else
  begin
    ShowMessage('O CNPJ digitado não é válidosss');
    UniDBEdit3.SetFocus;
    Abort;
  end;
end;

procedure TfrmEmpresaUsuaria.UniDBEdit4Exit(Sender: TObject);
begin
  inherited;
  // Validar e-mail
  if Length(Trim(UniDBEdit4.Text)) > 0 then
  begin
    if not(ClassAuxiliar.Acoes.ValidarEMail(UniDBEdit4.Text)) then
    begin
     ShowMessage('E-mail digitado não é válido');
     UniDBEdit4.SetFocus;
     Abort;
    end;
  end;
end;

end.
