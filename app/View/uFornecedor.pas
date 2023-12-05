unit uFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, ACBrBase, ACBrEnterTab,
  Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB,
  uniGUIBaseClasses, uniImageList, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniGUIClasses, uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel,
  MainModule, uniDBEdit, udmComum, ClassAlert, ClassAuxiliar;

type
  TfrmFornecedor = class(TFrameBase)
    UniSimplePanel1: TUniSimplePanel;
    UniSimplePanel7: TUniSimplePanel;
    UniSimplePanel2: TUniSimplePanel;
    UniDBEdit1: TUniDBEdit;
    UniSimplePanel3: TUniSimplePanel;
    UniSimplePanel11: TUniSimplePanel;
    UniSimplePanel14: TUniSimplePanel;
    UniSimplePanel18: TUniSimplePanel;
    UniSimplePanel6: TUniSimplePanel;
    UniSimplePanel17: TUniSimplePanel;
    UniSimplePanel4: TUniSimplePanel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBEdit9: TUniDBEdit;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadCNPJ: TStringField;
    FDQryCadTELEFONE: TStringField;
    FDQryCadEMAIL: TStringField;
    FDQryCadSITE: TStringField;
    FDQryCadCEP: TStringField;
    FDQryCadUF: TStringField;
    FDQryCadCODICIDADE: TIntegerField;
    FDQryCadBAIRRO: TStringField;
    FDQryCadENDERECO: TStringField;
    FDQryCadNUMERO: TStringField;
    FDQryCadCOMPLEMENTO: TStringField;
    procedure UniDBComboBox1Exit(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtFiltrarClick(Sender: TObject);
    procedure UniDBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaCidade;
  public
    { Public declarations }
  end;

var
  frmFornecedor: TfrmFornecedor;

implementation

{$R *.dfm}

{ TfrmFornecedor }

procedure TfrmFornecedor.AtualizaCidade;
begin
  dmComum.FDQryCidade.Close;
  dmComum.FDQryCidade.ParamByName('UF').AsString := UniDBComboBox1.Text;
  dmComum.FDQryCidade.Open;
end;

procedure TfrmFornecedor.BtAltClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade;
end;

procedure TfrmFornecedor.BtFiltrarClick(Sender: TObject);
var i : integer;
begin

   if ( EdPesquisar.Text = EmptyStr ) then
       Begin
          FDQryFiltro.Close ;
         abort ;
       End;


    // Abre a query do filtro
    if  FDQryCad.State in [dsEdit,dsInsert] then
    begin
         UniAlert.SwAlerta('ATENÇÃO' , 'Registro está em modo de Edição ', Aviso , 3000);
         abort ;
    end;

     FDQryFiltro.Close;
     FDQryFiltro.ParamByName('P01').AsString := '%'+EdPesquisar.Text;
     FDQryFiltro.Open;

    SetBut(tpListacomRegistros);

    UniDbGrid1.SetFocus ; // Joga o Foco para o Grid ;

end;

procedure TfrmFornecedor.BtIncClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade;
end;

procedure TfrmFornecedor.UniDBComboBox1Exit(Sender: TObject);
begin
  inherited;
  AtualizaCidade;
end;

procedure TfrmFornecedor.UniDBEdit3Exit(Sender: TObject);
begin
  inherited;
  // Validar o CPF digitado
  if (Length(Trim(UniDBEdit3.Text)) < 12) then
  begin
      ShowMessage('Confira o CNPJ digitado.');
      UniDBEdit3.SetFocus;
      Abort;
  end;
    if (Length(Trim(UniDBEdit3.Text)) > 11) then
    begin
        if not(ClassAuxiliar.Acoes.ValidaCNPJ_CPF(UniDBEdit3.Text)) then
        begin
         ShowMessage('O CNPJ digitado não é válido.');
         UniDBEdit3.SetFocus;
         Abort;
        end;

    end;
end;

end.
