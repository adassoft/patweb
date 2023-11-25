unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniTreeView, uniTreeMenu,
  uniStatusBar, uniPageControl, uniButton, uniPanel, uniGUIBaseClasses,
  Vcl.Menus, uniMainMenu, uniImageList, uniLabel, uniTimer, uniGUIFrame, uniURLFrame,
  uniScreenMask;

type
  TMainForm = class(TUniForm)
    PagePrincipal: TUniPageControl;
    TabHome: TUniTabSheet;
    UniStatusBar1: TUniStatusBar;
    UniTreeMenu1: TUniTreeMenu;
    UniMenuItems1: TUniMenuItems;
    Arquivo1: TUniMenuItem;
    Cadastro1: TUniMenuItem;
    Empresausuria1: TUniMenuItem;
    Relatrios1: TUniMenuItem;
    Pessoas1: TUniMenuItem;
    Unidadeadministrativa1: TUniMenuItem;
    Centrodecusto1: TUniMenuItem;
    Categorias1: TUniMenuItem;
    Grupos1: TUniMenuItem;
    Motivosdetransferncia1: TUniMenuItem;
    UniNativeImageList1: TUniNativeImageList;
    UniContainerPanel1: TUniContainerPanel;
    PanelTop: TUniPanel;
    UniLabel1: TUniLabel;
    UniLblButtoDrower: TUniLabel;
    UniTimer1Timer: TUniTimer;
    UniScreenMask1: TUniScreenMask;
    UniURLFramePrincipal: TUniURLFrame;
    procedure UniFormCreate(Sender: TObject);
    procedure UniLblButtoDrowerClick(Sender: TObject);
    procedure Unidadeadministrativa1Click(Sender: TObject);
    procedure NovaAba(nomeFormFrame: TFrame; descFormFrame: string; Fechar: Boolean);
    procedure Centrodecusto1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Motivosdetransferncia1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uUnidade, uCentroCusto,
  uMotivoTransferencia;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Centrodecusto1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfrmCentroCusto),'Centro de custo',True);
end;

procedure TMainForm.Grupos1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfrmCentroCusto),'Grupo',True);
end;

procedure TMainForm.Motivosdetransferncia1Click(Sender: TObject);
begin
  NovaAba(TFrame(TfrmMotivoTransferencia),'Motivo de transferência',True);
end;

procedure TMainForm.NovaAba(nomeFormFrame: TFrame; descFormFrame: string;
  Fechar: Boolean);
var TabSheet      :TUniTabSheet;
    FCurrentFrame :TUniFrame;
    I             :Integer;
begin
   //   UniTreeMenu1.Micro    := true ; /// fecha o lateral
      pagePrincipal.Visible := True;
      {Verificando se a tela já está aberto e redireciona a ela}
      for I := 0 to pagePrincipal.PageCount - 1 do
        with pagePrincipal do
          if Pages[I].Caption = descFormFrame  then
            begin
              pagePrincipal.ActivePageIndex := I;
              Exit;
            end;
      TabSheet              := TUniTabSheet.Create(Self);
      TabSheet.PageControl  := pagePrincipal;
      TabSheet.Caption      := descFormFrame;
      TabSheet.Closable     := Fechar;
      UniScreenMask1.Enabled := true ;
      FCurrentFrame:= TUniFrameClass(nomeFormFrame).Create(Self);
      with FCurrentFrame do
        begin
          Align               := alClient;
          Parent              := TabSheet;
        end;
      Refresh;
      pagePrincipal.ActivePage := TabSheet;
end;

procedure TMainForm.Unidadeadministrativa1Click(Sender: TObject);
begin
 NovaAba(TFrame(TfrmCadUnidade),'Unidade Administrativa',True);
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  UniTreeMenu1.Font.Size   := 60;
  UniTreeMenu1.Font.Height := 20 ;
//
 // UniTimer1Timer(nil);

  //MontaDashBoardHome ;
end;

procedure TMainForm.UniLblButtoDrowerClick(Sender: TObject);
begin
UniTreeMenu1.Micro := not UniTreeMenu1.Micro;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
