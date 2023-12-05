unit uPatrimonio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox,
  uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses, uniEdit,
  uniPageControl, uniButton, uniBitBtn, uniLabel, MainModule, uniDateTimePicker,
  uniDBDateTimePicker, uniDBEdit, uniMemo, uniDBMemo, udmComum, ClassAlert;

type
  TfrmCadPatrimonio = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroTOMBAMENTO: TFloatField;
    FDQryFiltroDESCREDUZAIDA: TStringField;
    FDQryFiltroDATACOMPTA: TSQLTimeStampField;
    FDQryFiltroESTADOCONS: TStringField;
    FDQryFiltroVALOR: TFloatField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroCODIEMPRESA: TIntegerField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadCODIUNIDADE: TSmallintField;
    FDQryCadCODICATEGORIA: TIntegerField;
    FDQryCadCODIGOGRUPO: TIntegerField;
    FDQryCadCODICENTRO: TIntegerField;
    FDQryCadCODIPESSOA: TIntegerField;
    FDQryCadCODIEMPRESA: TIntegerField;
    FDQryCadTOMBAMENTO: TFloatField;
    FDQryCadPLACASERIE: TStringField;
    FDQryCadMARCA: TStringField;
    FDQryCadDESCREDUZAIDA: TStringField;
    FDQryCadDESCDETALHADA: TMemoField;
    FDQryCadESTADOCONS: TStringField;
    FDQryCadVALOR: TFloatField;
    FDQryCadCODISETOR: TIntegerField;
    FDQryCadBAIXA: TStringField;
    FDQryCadDATA_BAIXA: TSQLTimeStampField;
    FDQryCadDOCUMENTOBAIXA: TStringField;
    FDQryCadSTATUS: TStringField;
    FDQryCadEMPRESTIMO: TStringField;
    FDQryCadOBS: TMemoField;
    FDQryCadMODIFICADOPOR: TStringField;
    FDQryCadDATAMODIFICAO: TSQLTimeStampField;
    FDQryCadCODIFORNECEDOR: TIntegerField;
    FDQryCadNOTAFISCAL: TStringField;
    FDQryCadCHAVENOTA: TStringField;
    FDQryCadDATACOMPTA: TSQLTimeStampField;
    FDQryCadPREGAO: TStringField;
    FDQryCadCONVENIO: TStringField;
    FDQryCadPATCODIGOBARRA: TStringField;
    FDQryCadDATAIMPLANTACAO: TSQLTimeStampField;
    FDQryCadFIMGARANTIA: TSQLTimeStampField;
    FDQryCadDATAACEITE: TSQLTimeStampField;
    FDQryCadDATACADASTRO: TSQLTimeStampField;
    FDQryCadDATAVISTORIA: TSQLTimeStampField;
    FDQryCadDATAMARCACAO: TSQLTimeStampField;
    FDQryCadVEICULOCHASSI: TStringField;
    FDQryCadVEICULORENAVAM: TStringField;
    FDQryCadVEICULOANO: TStringField;
    FDQryCadVEICULOMODELO: TStringField;
    FDQryCadTIPODEBEM: TStringField;
    FDQryCadIMTITULARIDADE: TStringField;
    FDQryCadIMADMINISTRACAO: TStringField;
    FDQryCadIMTIPOIMOVEL: TStringField;
    FDQryCadIMREGISTOORGAO: TStringField;
    FDQryCadIMCARTORIO: TStringField;
    FDQryCadIMOBSERVACAO: TMemoField;
    FDQryCadIMORGAOINSCRICAO: TStringField;
    FDQryCadIDTIPOSUO: TIntegerField;
    FDQryCadIMENDERECO: TStringField;
    FDQryCadIMBAIRRO: TStringField;
    FDQryCadIMNUMERO: TStringField;
    FDQryCadIMCOMPLEMENTO: TStringField;
    FDQryCadIMCIDADE: TStringField;
    FDQryCadIMUF: TStringField;
    FDQryCadIMCEP: TStringField;
    FDQryCadAREATOTAL: TFloatField;
    FDQryCadAREACONSTRUIDA: TFloatField;
    FDQryCadUNAREATOTAL: TStringField;
    FDQryCadUNAREACONSTRUIDA: TStringField;
    FDQryCadIMOVEL: TStringField;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBComboBox1: TUniDBComboBox;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniDBComboBox3: TUniDBComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBComboBox2: TUniDBComboBox;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniDBNumberEdit2: TUniDBNumberEdit;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniContainerPanel6: TUniContainerPanel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniSimplePanel1: TUniSimplePanel;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    UniDBEdit15: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbriTabelas;
  public
    { Public declarations }
  end;

var
  frmCadPatrimonio: TfrmCadPatrimonio;

implementation

{$R *.dfm}

{ TfrmCadPatrimonio }

procedure TfrmCadPatrimonio.AbriTabelas;
begin
try
  dmComum.FDQryUnidade.Close;
  dmComum.FDQryUnidade.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Unidade.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryPessoa.Close;
  dmComum.FDQryPessoa.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Pessoa.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryCategoria.Close;
  dmComum.FDQryCategoria.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Categoria.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQrySetor.Close;
  dmComum.FDQrySetor.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Setor.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryGrupo.Close;
  dmComum.FDQryGrupo.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Grupo.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryCentro.Close;
  dmComum.FDQryCentro.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Centro de Custro.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryPessoa.Close;
  dmComum.FDQryPessoa.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Pessoa.' , Aviso , 3000);
   Abort ;
End ;

try
  dmComum.FDQryFornecedor.Close;
  dmComum.FDQryFornecedor.Open;
Except
   UniAlert.SwAlerta('ATENÇÃO' , 'Não foi possível abrir a tabela Fornecedor.' , Aviso , 3000);
   Abort ;
End ;
end;

procedure TfrmCadPatrimonio.BtAltClick(Sender: TObject);
begin
  AbriTabelas;
  inherited;

end;

procedure TfrmCadPatrimonio.BtIncClick(Sender: TObject);
begin
  AbriTabelas;
  inherited;

end;

end.
