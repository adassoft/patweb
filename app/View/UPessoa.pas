unit UPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniDateTimePicker, uniDBDateTimePicker, uniDBLookupComboBox, uniMultiItem,
  uniComboBox, uniDBComboBox;

type
  TfrmCadPessoa = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroMASP: TStringField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroTELEFONE: TStringField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    FDQryCidade: TRESTDWClientSQL;
    FDQryCidadeCODIGO: TIntegerField;
    FDQryCidadeDESCRICAO: TStringField;
    FDQryCidadeUF: TStringField;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    dsCidade: TDataSource;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadMASP: TStringField;
    FDQryCadNOME: TStringField;
    FDQryCadTELEFONE: TStringField;
    FDQryCadDATAPUBLIC: TSQLTimeStampField;
    FDQryCadDATANOMEACAO: TSQLTimeStampField;
    FDQryCadENDERECO: TStringField;
    FDQryCadNUMEROEND: TStringField;
    FDQryCadBAIRRO: TStringField;
    FDQryCadCEP: TStringField;
    FDQryCadUF: TStringField;
    FDQryCadCODICIDADE: TIntegerField;
    FDQryCadCPF: TStringField;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    procedure FDQryCadAfterScroll(DataSet: TDataSet);
    procedure BtAltClick(Sender: TObject);
    procedure UniDBComboBox1Exit(Sender: TObject);
    procedure UniDBEdit4Exit(Sender: TObject);
  private
    { Private declarations }
    procedure AtualizaCidade;
  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

uses MainModule, ClassAuxiliar, uniSweetAlert, ClassAlert;

procedure TfrmCadPessoa.AtualizaCidade;
begin
  FDQryCidade.Close;
  FDQryCidade.ParamByName('UF').AsString := UniDBComboBox1.Text;
  FDQryCidade.Open;
end;

procedure TfrmCadPessoa.BtAltClick(Sender: TObject);
begin
  inherited;
  AtualizaCidade;
end;

procedure TfrmCadPessoa.FDQryCadAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FDQryCidade.Close;
  FDQryCidade.ParamByName('UF').AsString := UniDBComboBox1.Text;
  FDQryCidade.Open;
end;

procedure TfrmCadPessoa.UniDBComboBox1Exit(Sender: TObject);
begin
  inherited;
  AtualizaCidade;
end;

procedure TfrmCadPessoa.UniDBEdit4Exit(Sender: TObject);
begin
  inherited;

  // Validar o CPF digitado
  if Length(Trim(UniDBEdit4.Text)) > 0 then
  begin
    if Length(Trim(UniDBEdit4.Text)) = 11 then
    begin
    if not(ClassAuxiliar.Acoes.cpf(UniDBEdit4.Text)) then
    begin
     ShowMessage('O CPF digitado não é válido');
     UniDBEdit4.SetFocus;
    end;
    end else
    begin
      ShowMessage('O CPF digitado não é válido');
      UniDBEdit4.SetFocus;
      Abort;
    end;
  end;
end;

end.
