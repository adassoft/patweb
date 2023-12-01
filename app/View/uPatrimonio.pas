unit uPatrimonio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel, uniDBEdit,
  uniMultiItem, uniComboBox, uniDBComboBox, uniDBLookupComboBox, uniRadioGroup,
  uniDBRadioGroup, ACBrBase, ACBrEnterTab, uniImage, uniMemo, uniDBMemo,
  Vcl.Imaging.pngimage, uniDateTimePicker, uniDBDateTimePicker;

type
  TfrmCadPatrimonio = class(TFrameBase)
    FDQryFiltroCODIGO: TIntegerField;
    FDQryFiltroTOMBAMENTO: TFloatField;
    FDQryFiltroDESCREDUZAIDA: TStringField;
    FDQryFiltroNOME: TStringField;
    FDQryFiltroDATACOMPTA: TSQLTimeStampField;
    FDQryFiltroESTADOCONS: TStringField;
    FDQryFiltroVALOR: TFloatField;
    FDQryCadCODIGO: TIntegerField;
    FDQryCadCODIUNIDADE: TSmallintField;
    FDQryCadCODICATEGORIA: TIntegerField;
    FDQryCadCODIGOGRUPO: TIntegerField;
    FDQryCadCODICENTRO: TIntegerField;
    FDQryCadCODIPESSOA: TIntegerField;
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
    UniSimplePanel1: TUniSimplePanel;
    plEsquerdo: TUniSimplePanel;
    UniScrollBox2: TUniScrollBox;
    UniSimplePanel7: TUniSimplePanel;
    UniSimplePanel5: TUniSimplePanel;
    UniSimplePanel2: TUniSimplePanel;
    UniDBEdit1: TUniDBEdit;
    UniImage4: TUniImage;
    UniSimplePanel4: TUniSimplePanel;
    UniDBEdit2: TUniDBEdit;
    UniImage5: TUniImage;
    UniSimplePanel17: TUniSimplePanel;
    UniDBComboBox1: TUniDBComboBox;
    UniSimplePanel9: TUniSimplePanel;
    UniSimplePanel3: TUniSimplePanel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniImage1: TUniImage;
    UniSimplePanel11: TUniSimplePanel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniSimplePanel8: TUniSimplePanel;
    UniSimplePanel10: TUniSimplePanel;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniImage2: TUniImage;
    UniSimplePanel12: TUniSimplePanel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniSimplePanel13: TUniSimplePanel;
    UniSimplePanel14: TUniSimplePanel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniImage3: TUniImage;
    UniSimplePanel18: TUniSimplePanel;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniSimplePanel15: TUniSimplePanel;
    UniSimplePanel16: TUniSimplePanel;
    UniDBEdit3: TUniDBEdit;
    UniSimplePanel21: TUniSimplePanel;
    UniContainerPanel1: TUniContainerPanel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniSimplePanel20: TUniSimplePanel;
    UniSimplePanel22: TUniSimplePanel;
    UniDBMemo1: TUniDBMemo;
    UniSimplePanel23: TUniSimplePanel;
    UniSimplePanel24: TUniSimplePanel;
    UniDBEdit4: TUniDBEdit;
    UniImage6: TUniImage;
    UniSimplePanel25: TUniSimplePanel;
    UniDBEdit5: TUniDBEdit;
    UniImage7: TUniImage;
    UniSimplePanel26: TUniSimplePanel;
    UniDBComboBox2: TUniDBComboBox;
    UniImage8: TUniImage;
    UniSimplePanel27: TUniSimplePanel;
    UniDBComboBox3: TUniDBComboBox;
    UniSimplePanel28: TUniSimplePanel;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniSimplePanel29: TUniSimplePanel;
    UniSimplePanel30: TUniSimplePanel;
    UniDBNumberEdit1: TUniDBNumberEdit;
    UniImage11: TUniImage;
    UniSimplePanel31: TUniSimplePanel;
    UniDBNumberEdit2: TUniDBNumberEdit;
    UniImage12: TUniImage;
    UniSimplePanel33: TUniSimplePanel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniSimplePanel32: TUniSimplePanel;
    UniSimplePanel34: TUniSimplePanel;
    UniImage13: TUniImage;
    UniSimplePanel35: TUniSimplePanel;
    UniImage14: TUniImage;
    UniSimplePanel36: TUniSimplePanel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniDBNumberEdit3: TUniDBNumberEdit;
    UniSimplePanel37: TUniSimplePanel;
    UniContainerPanel4: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniSimplePanel38: TUniSimplePanel;
    UniSimplePanel39: TUniSimplePanel;
    UniDBEdit8: TUniDBEdit;
    UniImage16: TUniImage;
    UniSimplePanel40: TUniSimplePanel;
    UniDBEdit9: TUniDBEdit;
    UniImage17: TUniImage;
    UniSimplePanel41: TUniSimplePanel;
    UniImage18: TUniImage;
    UniSimplePanel42: TUniSimplePanel;
    UniDBEdit10: TUniDBEdit;
    UniDBEdit11: TUniDBEdit;
    UniSimplePanel43: TUniSimplePanel;
    UniContainerPanel5: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniSimplePanel44: TUniSimplePanel;
    UniSimplePanel45: TUniSimplePanel;
    UniDBEdit12: TUniDBEdit;
    UniImage20: TUniImage;
    UniSimplePanel46: TUniSimplePanel;
    UniDBEdit13: TUniDBEdit;
    UniImage21: TUniImage;
    UniSimplePanel47: TUniSimplePanel;
    UniDBEdit14: TUniDBEdit;
    UniImage22: TUniImage;
    UniSimplePanel48: TUniSimplePanel;
    UniDBEdit15: TUniDBEdit;
    plDireito: TUniSimplePanel;
    procedure BtIncClick(Sender: TObject);
    procedure BtAltClick(Sender: TObject);
  private
    { Private declarations }
    procedure AbriTabelas;
    procedure RedimenciosaTela;
  public
    { Public declarations }
  end;

var
  frmCadPatrimonio: TfrmCadPatrimonio;

implementation

{$R *.dfm}

uses MainModule, udmComum, ClassAlert;

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
  inherited;
  AbriTabelas;
end;

procedure TfrmCadPatrimonio.BtIncClick(Sender: TObject);
begin
  inherited;
  AbriTabelas;
end;

procedure TfrmCadPatrimonio.RedimenciosaTela;
begin
  //Se a aplicação for acessada através de um dispositivo mobile ajusta os campos
  {if (UniSession.IsMobile) then
  begin
     plEsquerdo.Width := 10;
     plDireito.Width := 10;
  end else

     if frmCadPatrimonio.Width < 760 then
     begin
        UniSimplePanel3.Align := alClient;
     end;}
end;

end.
