unit uUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses, uniEdit,
  uniPageControl, uniButton, uniBitBtn, uniLabel, MainModule, uniDateTimePicker,
  uniDBDateTimePicker, uniDBEdit, uniMemo, uniDBMemo, uniImage, ClassAlert,
  uniListBox, uniDBListBox, uniDBLookupListBox, uniDBNavigator;

type
  TfrmUsuarios = class(TFrameBase)
    FDQryFiltroID: TIntegerField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroSENHA: TStringField;
    FDQryFiltroEMAIL: TStringField;
    FDQryFiltroDATA_CADASTRO: TDateField;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniScrollBox2: TUniScrollBox;
    plEsquerdo: TUniSimplePanel;
    plDireito: TUniSimplePanel;
    UniSimplePanel7: TUniSimplePanel;
    UniSimplePanel5: TUniSimplePanel;
    UniSimplePanel8: TUniSimplePanel;
    UniSimplePanel13: TUniSimplePanel;
    UniSimplePanel15: TUniSimplePanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniSimplePanel11: TUniSimplePanel;
    UniDBEdit1: TUniDBEdit;
    UniSimplePanel1: TUniSimplePanel;
    UniDBEdit2: TUniDBEdit;
    UniSimplePanel2: TUniSimplePanel;
    UniDBEdit3: TUniDBEdit;
    UniSimplePanel3: TUniSimplePanel;
    UniSimplePanel4: TUniSimplePanel;
    UniDBEdit4: TUniDBEdit;
    UniSimplePanel6: TUniSimplePanel;
    UniSimplePanel9: TUniSimplePanel;
    dbEditSenha: TUniDBEdit;
    UniSimplePanel10: TUniSimplePanel;
    edtConfirmarsenha: TUniEdit;
    FDQryCadID: TIntegerField;
    FDQryCadNOME: TStringField;
    FDQryCadSENHA: TStringField;
    FDQryCadEMAIL: TStringField;
    FDQryCadDATA_CADASTRO: TDateField;
    FDQryCadUSUARIO: TStringField;
    UniTabSheet2: TUniTabSheet;
    UniSimplePanel12: TUniSimplePanel;
    UniSimplePanel16: TUniSimplePanel;
    UniLabel4: TUniLabel;
    UniSimplePanel18: TUniSimplePanel;
    FDQryEmpresa: TRESTDWClientSQL;
    FDQryEmpresaCODIGO: TIntegerField;
    FDQryEmpresaNOME: TStringField;
    dsEmpresa: TDataSource;
    FDQryEmpresasUsuario: TRESTDWClientSQL;
    dsEmpresaUsuario: TDataSource;
    FDQryEmpresasUsuarioCODIUSUARIO: TIntegerField;
    FDQryEmpresasUsuarioCODIEMPRESA: TIntegerField;
    UniLabel5: TUniLabel;
    UniSimplePanel14: TUniSimplePanel;
    UniDBGrid2: TUniDBGrid;
    UniLabel6: TUniLabel;
    UniDBNavigator1: TUniDBNavigator;
    UniDBGrid3: TUniDBGrid;
    UniSimplePanel17: TUniSimplePanel;
    procedure BtGrvClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
    procedure BtIncClick(Sender: TObject);
    procedure UniDBGrid3BodyDblClick(Sender: TObject);
  private
    procedure AbriTabelas;
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.dfm}

procedure TfrmUsuarios.AbriTabelas;
begin
  FDQryEmpresa.Close;
  FDQryEmpresa.Open;

  FDQryEmpresasUsuario.Close;
  FDQryEmpresasUsuario.ParamByName('CODIGO').AsInteger := FDQryCadID.Value;
  FDQryEmpresasUsuario.Open;
end;

procedure TfrmUsuarios.BtAltClick(Sender: TObject);
begin
  inherited;
  AbriTabelas;
end;

procedure TfrmUsuarios.BtGrvClick(Sender: TObject);
begin
   if edtConfirmarsenha.Text <> dbEditSenha.Text then
  begin
    UniAlert.SwAlerta('ATENÇÃO' , 'Confira a digitação do campo Senha e Confirmação de senha.' , Aviso , 3000);
    Abort;
  end;
  inherited;
end;

procedure TfrmUsuarios.BtIncClick(Sender: TObject);
begin
  inherited;
  AbriTabelas;
end;

procedure TfrmUsuarios.UniDBGrid3BodyDblClick(Sender: TObject);
Var
 vError : String;
begin
  FDQryEmpresasUsuario.Insert;

  if FDQryEmpresasUsuario.State in [dsInsert,dsEdit] then
  begin
    FDQryEmpresasUsuarioCODIUSUARIO.Value := FDQryCadID.Value;
    FDQryEmpresasUsuarioCODIEMPRESA.Value := FDQryEmpresaCODIGO.Value;
    FDQryEmpresasUsuario.Post;
    if not FDQryEmpresasUsuario.ApplyUpdates(vError) then
    begin
       UniAlert.SwAlerta('ERRO' , vError , Erro , 3000);
       abort ;
    end;
    FDQryEmpresasUsuario.Close;
    FDQryEmpresasUsuario.ParamByName('CODIGO').AsInteger := FDQryCadID.Value;
    FDQryEmpresasUsuario.Open;
  end;
end;


end.
