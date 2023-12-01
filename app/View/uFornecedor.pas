unit uFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, ACBrBase, ACBrEnterTab,
  Data.DB, uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB,
  uniGUIBaseClasses, uniImageList, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid,
  uniGUIClasses, uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel,
  MainModule, uniDBEdit, udmComum;

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

end.
