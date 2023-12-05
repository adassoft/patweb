unit uCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, ACBrBase, ACBrEnterTab,
  uniDBLookupComboBox, ClassAlert;

type
  TfrmCidades = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroDESCRICAO: TStringField;
    FDQryFiltroUF: TStringField;
    FDQryFiltroCEP: TStringField;
    FDQryFiltroCODIIBGE: TLargeintField;
    FDQryCadCEP: TStringField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadDESCRICAO: TStringField;
    FDQryCadUF: TStringField;
    FDQryCadCODIIBGE: TLargeintField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    procedure BtFiltrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

uses MainModule;

procedure TfrmCidades.BtFiltrarClick(Sender: TObject);
begin
   if ( EdPesquisar.Text = EmptyStr ) then
       Begin
          FDQryFiltro.Close ;
         abort ;
       End;


    // Abre a query do filtro
    if  FDQryCad.State in [dsEdit,dsInsert] then
    begin
         UniAlert.SwAlerta('ATEN��O' , 'Registro est� em modo de Edi��o ', Aviso , 3000);
         abort ;
    end;

     FDQryFiltro.Close;

      FDQryFiltro.ParamByName('P01').AsString := '%'+EdPesquisar.Text;

     FDQryFiltro.Open;

    SetBut(tpListacomRegistros);

    UniDbGrid1.SetFocus ; // Joga o Foco para o Grid ;
end;

end.
