unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus, uRESTDWAbout, uRESTDWBasic, uRESTDWIdBase, Vcl.AppEvnts,
  uRESTDWAuthenticators, Vcl.Imaging.jpeg;

type
  TfrmPrincipal = class(TForm)
    PageControl1: TPageControl;
    Config: TTabSheet;
    Panel1: TPanel;
    Log: TTabSheet;
    GroStatus: TGroupBox;
    LblStatus: TLabel;
    ButtonStart: TButton;
    ButtonStop: TButton;
    ctiPrincipal: TTrayIcon;
    pmMenu: TPopupMenu;
    RestaurarAplicao1: TMenuItem;
    N5: TMenuItem;
    SairdaAplicao1: TMenuItem;
    tupdatelogs: TTimer;
    RESTDWIdServicePooler: TRESTDWIdServicePooler;
    Label2: TLabel;
    memoReq: TMemo;
    Label19: TLabel;
    memoResp: TMemo;
    ApplicationEvents1: TApplicationEvents;
    RESTDWAuthBasic: TRESTDWAuthBasic;
    Image2: TImage;
    Label1: TLabel;
    procedure RestaurarAplicao1Click(Sender: TObject);
    procedure SairdaAplicao1Click(Sender: TObject);
    procedure tupdatelogsTimer(Sender: TObject);
    procedure ApplicationEvents1Idle(Sender: TObject; var Done: Boolean);
    procedure ButtonStartClick(Sender: TObject);
    procedure ButtonStopClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    VLastRequest,VLastRequestB : string;
    procedure StartServer;
    procedure ShowApplication;
    Function  GetHandleOnTaskBar: THandle;
    procedure ChangeStatusWindow;
    procedure HideApplication;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uDados;


procedure TfrmPrincipal.ApplicationEvents1Idle(Sender: TObject;
  var Done: Boolean);
begin
// Aqui para ficar verificanado quando um Botão estiver Ativo o outro tem que Ficar False
  ButtonStart.Enabled   := Not RESTDWIdServicePooler.Active;
  ButtonStop.Enabled    := RESTDWIdServicePooler.Active;
end;

procedure TfrmPrincipal.ButtonStartClick(Sender: TObject);
begin
  StartServer;
end;

procedure TfrmPrincipal.ButtonStopClick(Sender: TObject);
begin
  Tupdatelogs.Enabled      := False;
  RESTDWIdServicePooler.Active := False;
  PageControl1.ActivePage  := Config;
  LblStatus.Caption        := 'Parado' ;
  ShowApplication;
end;

procedure TfrmPrincipal.ChangeStatusWindow;
begin
// Controle PopMenu
  If Self.Visible Then
    SairdaAplicao1.Caption := 'Minimizar para a bandeja'
  Else
    SairdaAplicao1.Caption := 'Sair da Aplicação';

  Application.ProcessMessages;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := Not RESTDWIdServicePooler.Active;
  If Not CanClose Then
  Begin
    CanClose := Not Self.Visible;
    If CanClose Then
       CanClose := Application.MessageBox('Você deseja realmente sair do SERVIDOR ?', 'Pergunta ?', Mb_IconQuestion + Mb_YesNo) = MrYes
    Else
      HideApplication;
  End;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
// Passa a classe ServerMethodClass para o Pooler do Rest DataWere
RESTDWIdServicePooler.ServerMethodClass := TdmDados;
end;

function TfrmPrincipal.GetHandleOnTaskBar: THandle;
begin
// Controle  para TaskBar ( minimizado )
  Result := Application.Handle;
end;

procedure TfrmPrincipal.HideApplication;
begin
  CtiPrincipal.Visible     := True;
  Application.ShowMainForm := False;
  If Self <> Nil Then
    Self.Visible := False;
  Application.Minimize;
  ShowWindow(GetHandleOnTaskBar, SW_HIDE);
  ChangeStatusWindow;
end;

procedure TfrmPrincipal.RestaurarAplicao1Click(Sender: TObject);
begin
  ShowApplication;
end;

procedure TfrmPrincipal.SairdaAplicao1Click(Sender: TObject);
begin
  Close ;
end;

procedure TfrmPrincipal.ShowApplication;
begin
  CtiPrincipal.Visible     := False;
  Application.ShowMainForm := True;
  If Self <> Nil Then
  Begin
    Self.Visible     := True;
    Self.WindowState := WsNormal;
  End;
  LblStatus.Caption := 'Ativo' ;
  ShowWindow(GetHandleOnTaskBar, SW_SHOW);
  ChangeStatusWindow;
end;

procedure TfrmPrincipal.StartServer;
begin
  If Not RESTDWIdServicePooler.Active Then
  Begin
    RESTDWIdServicePooler.Active   := True;
    If Not RESTDWIdServicePooler.Active Then
      Exit;
    PageControl1.ActivePage := Log;
    HideApplication;
    Tupdatelogs.Enabled := True;
  End;
end;

procedure TfrmPrincipal.tupdatelogsTimer(Sender: TObject);
var
  VTempLastRequest, VTempLastRequestB: string;
Begin
  Tupdatelogs.Enabled := False;
  Try
    VTempLastRequest  := VLastRequest  ;
    VTempLastRequestB := VLastRequestB ;
    If (VTempLastRequest <> '') Then
    Begin

    // aqui é a Parte requisição
      If MemoReq.Lines.Count > 0 Then
        If MemoReq.Lines[MemoReq.Lines.Count - 1] = VTempLastRequest Then
           Exit;

      If MemoReq.Lines.Count = 0 Then
        MemoReq.Lines.Add(Copy(VTempLastRequest, 1, 100))
      Else
        MemoReq.Lines[MemoReq.Lines.Count - 1] := Copy(VTempLastRequest, 1, 100);

      If Length(VTempLastRequest) > 1000 Then
        MemoReq.Lines[MemoReq.Lines.Count - 1] := MemoReq.Lines[MemoReq.Lines.Count - 1] + '...';

      If MemoResp.Lines.Count > 0 Then
        If MemoResp.Lines[MemoResp.Lines.Count - 1] = VTempLastRequestB Then
          Exit;

     // aqui é a Parte resposta
      If MemoResp.Lines.Count = 0 Then
        MemoResp.Lines.Add(Copy(VTempLastRequestB, 1, 100))
      Else
        MemoResp.Lines[MemoResp.Lines.Count - 1] := Copy(VTempLastRequestB, 1, 100);

      If Length(VTempLastRequest) > 1000 Then
         MemoResp.Lines[MemoResp.Lines.Count - 1] := MemoResp.Lines[MemoResp.Lines.Count - 1] + '...';
    End;
  Finally
    Tupdatelogs.Enabled := True;
  End;

end;

end.
