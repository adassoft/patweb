unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniTreeView, uniTreeMenu,
  uniStatusBar, uniPageControl, uniButton, uniPanel, uniGUIBaseClasses,
  Vcl.Menus, uniMainMenu, uniImageList, uniLabel, uniTimer, uniGUIFrame, uniURLFrame,
  uniScreenMask, uFornecedor, uniImage, Utils, uUsuarios, uEmpresaUsuaria,
  ClassAuxiliar;

type
  TMainForm = class(TUniForm)
    UniStatusBar1: TUniStatusBar;
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
    UniScreenMask1: TUniScreenMask;
    Cidades1: TUniMenuItem;
    Setores1: TUniMenuItem;
    Patrimnio1: TUniMenuItem;
    Responsive1: TUniMenuItem;
    Fornecedores1: TUniMenuItem;
    PnlTop: TUniPanel;
    pnLogo: TUniPanel;
    Logo: TUniImage;
    lbTitulo: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    PageControlGeral: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniURLFrame1: TUniURLFrame;
    Menu: TUniTreeMenu;
    TimerResize: TUniTimer;
    TimerSessao: TUniTimer;
    Sair1: TUniMenuItem;
    UniLabel3: TUniLabel;
    lbEmpresaSelecionada: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure Unidadeadministrativa1Click(Sender: TObject);
    procedure Centrodecusto1Click(Sender: TObject);
    procedure Grupos1Click(Sender: TObject);
    procedure Motivosdetransferncia1Click(Sender: TObject);
    procedure Categorias1Click(Sender: TObject);
    procedure Pessoas1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Setores1Click(Sender: TObject);
    procedure Patrimnio1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure UniLabel2Click(Sender: TObject);
    procedure TimerResizeTimer(Sender: TObject);
    procedure Responsive1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure UniLabel3Click(Sender: TObject);
    procedure Empresausuria1Click(Sender: TObject);
    procedure UniFormBeforeShow(Sender: TObject);
  private
    procedure ToogleMenu;
  public
    { Public declarations }
  end;

  TChat = class (TComponent)
  private
    Fativar: Boolean ;
  public
    property Ativar: Boolean read Fativar write Fativar ;

    function CarregarScript:string ;

  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uUnidade, uCentroCusto,
  uMotivoTransferencia, uGrupo, uCategoria, UPessoa, uCidade, uSetor,
  uPatrimonio;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.Categorias1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmCategoria), 'Categoria');
end;

procedure TMainForm.Centrodecusto1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmCentroCusto),'Centro de custo');
end;

procedure TMainForm.Cidades1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmCidades), 'Cidades');
end;


procedure TMainForm.Empresausuria1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmEmpresaUsuaria), 'Empresa usuária');
end;

procedure TMainForm.Fornecedores1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmFornecedor), 'Fornecedores');
end;

procedure TMainForm.Grupos1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmGrupos),'Grupo');
end;


procedure TMainForm.Motivosdetransferncia1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmMotivoTransferencia),'Motivo de transferência');
end;


procedure TMainForm.Patrimnio1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmCadPatrimonio), 'Patrimônio');
end;

procedure TMainForm.Pessoas1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmCadPessoa), 'Pessoa');
end;


procedure TMainForm.Responsive1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmUsuarios), 'Usuários');
end;

procedure TMainForm.Sair1Click(Sender: TObject);
begin
    Close;
    UniApplication.Restart;
end;

procedure TMainForm.Setores1Click(Sender: TObject);
begin
  AddTab(PageControlGeral,TFrame(TfrmSetor), 'Setores');
end;

procedure TMainForm.TimerResizeTimer(Sender: TObject);
begin
//  if Menu.Micro = False then
  begin

    if MainForm.Width < 760 then
    begin
      Menu.Micro   := True;
      pnLogo.Width := 44;
      pnLogo.Update;
    end else
    begin
      Menu.Micro   := False;
      pnLogo.Width := Menu.Width ;
      pnLogo.Update;
    end;

    TimerResize.Enabled := False;

    UniSession.Synchronize();

  end;

end;

procedure TMainForm.ToogleMenu;
begin
  if Menu.Width > 50 then
  begin
    Menu.Micro   := true;
    pnLogo.Width := 44;
  end else
  begin

    pnLogo.ClientEvents.UniEvents.Clear;

    Menu.Micro := false;

    pnLogo.ClientEvents.UniEvents.Add('resize=function resize(sender, width, height, oldWidth, oldHeight, eOpts)'+
                                      '{sender.cls="animated zoomIn";}');

    pnLogo.Width :=  221;
    pnLogo.Repaint;
  end;

end;

procedure TMainForm.Unidadeadministrativa1Click(Sender: TObject);
begin
 AddTab(PageControlGeral,TFrame(TfrmCadUnidade),'Unidade Administrativa');
end;

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
var
  Chat : TChat ;
begin

  Chat := TChat.Create(Self) ;
  Try
    Chat.Ativar := True ;
    MainForm.Script.Text := Chat.CarregarScript ;
  Finally
     FreeAndNil(Chat) ;
  End;

  MainForm.Script.LoadFromFile('./files/chat.ini');
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  Menu.Font.Size   := 60;
  Menu.Font.Height := 20 ;
  lbEmpresaSelecionada.Caption := UniMainModule.vNomeEmpresa;


  UniURLFrame1.HTML.LoadFromFile('./www/index.html',TEncoding.UTF8);
   UniURLFrame1.Show ;
//
 // UniTimer1Timer(nil);

  //MontaDashBoardHome ;
end;


procedure TMainForm.UniLabel2Click(Sender: TObject);
begin
  Menu.Micro := not Menu.Micro;
end;


procedure TMainForm.UniLabel3Click(Sender: TObject);
begin
    Close;
    UniApplication.Restart;
end;

initialization
  RegisterAppFormClass(TMainForm);

end.
