unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniTreeView, uniTreeMenu,
  uniStatusBar, uniPageControl, uniButton, uniPanel, uniGUIBaseClasses,
  Vcl.Menus, uniMainMenu, uniImageList, uniLabel, uniTimer, uniGUIFrame, uniURLFrame,
  uniScreenMask, uniImage, Vcl.Imaging.pngimage, udmDashboard, uniHTMLFrame,
  uniScrollBox, URelRelacaoGeral;

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
    Menu: TUniTreeMenu;
    TimerResize: TUniTimer;
    TimerSessao: TUniTimer;
    Sair1: TUniMenuItem;
    UniLabel3: TUniLabel;
    lbEmpresaSelecionada: TUniLabel;
    UniScrollBox1: TUniScrollBox;
    dasboardhtml: TUniHTMLFrame;
    Relaogeraldebens1: TUniMenuItem;
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
    procedure Relaogeraldebens1Click(Sender: TObject);
  private
    procedure ToogleMenu;
  public
    { Public declarations }
    procedure AtualizaDasboard;
  end;


function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, uUnidade, uCentroCusto,
  uMotivoTransferencia, uGrupo, uCategoria, UPessoa, uCidade, uSetor,
  uPatrimonio, ClassAuxiliar, Utils, uFornecedor, uUsuarios, uEmpresaUsuaria;


function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.AtualizaDasboard;
begin
  dmDashboard.sqlTotalBens.Close;
  dmDashboard.sqlTotalBens.ParamByName('CODIEMPRESA').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
  dmDashboard.sqlTotalBens.Open;

  dmDashboard.sqlBensAtivos.Close;
  dmDashboard.sqlBensAtivos.ParamByName('CODIEMPRESA').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
  dmDashboard.sqlBensAtivos.Open;

  dmDashboard.sqlBensEmprestados.Close;
  dmDashboard.sqlBensEmprestados.ParamByName('CODIEMPRESA').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
  dmDashboard.sqlBensEmprestados.Open;

  dmDashboard.sqlBaixados.Close;
  dmDashboard.sqlBaixados.ParamByName('CODIEMPRESA').AsInteger := UniMainModule.UserRecord.vEmpresaEscolhia;
  dmDashboard.sqlBaixados.Open;
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


procedure TMainForm.Relaogeraldebens1Click(Sender: TObject);
begin
  FrmRelRelacaoGeral.ShowModal;
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

procedure TMainForm.ToogleMenu;
begin
  if Menu.Width > 50 then
  begin
    Menu.Micro   := true;
    pnLogo.Width := 44;
    lbTitulo.Visible := false;
  end else
  begin

    pnLogo.ClientEvents.UniEvents.Clear;

    Menu.Micro := false;

    pnLogo.ClientEvents.UniEvents.Add('resize=function resize(sender, width, height, oldWidth, oldHeight, eOpts)'+
                                      '{sender.cls="animated zoomIn";}');

    pnLogo.Width :=  250;
    pnLogo.Repaint;
    lbTitulo.Visible := true;
  end;

end;

procedure TMainForm.Unidadeadministrativa1Click(Sender: TObject);
begin
 AddTab(PageControlGeral,TFrame(TfrmCadUnidade),'Unidade Administrativa');
end;

procedure TMainForm.UniFormBeforeShow(Sender: TObject);
//var
  //Chat : TChat ;
begin

 { Chat := TChat.Create(Self) ;
  Try
    Chat.Ativar := True ;
    MainForm.Script.Text := Chat.CarregarScript ;
  Finally
     FreeAndNil(Chat) ;
  End;

  MainForm.Script.LoadFromFile('./files/chat.ini');  }
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  Menu.Font.Size   := 60;
  Menu.Font.Height := 20 ;
  lbEmpresaSelecionada.Caption := IntToStr(UniMainModule.UserRecord.vEmpresaEscolhia)+' - '+UniMainModule.UserRecord.vNomeEmpresa;
  AtualizaDasboard;


  dasboardhtml.HTML.Text := '<!DOCTYPE html> '+
                            '<html lang="pt-br">'+

                            '<head>'+

                             ' <title>Controle Patrimonial Web</title>'+

                              '<meta charset="utf-8">'+
                              '<meta http-equiv="X-UA-Compatible" content="IE=edge">'+
                              '<meta name="viewport"    content="width=device-width, initial-scale=1, shrink-to-fit=no">'+
                              '<meta name="description" content="">'+
                              '<meta name="author"      content="">'+



                              '<link href="./files/css/sb-admin-2.min.css" rel="stylesheet">'+




                            '</head>'+

                            '<body id="page-top">'+

                             ' <!-- Page Wrapper -->'+
                              '<div id="wrapper">'+

                               ' <!-- Content Wrapper -->'+
                                '<div id="content-wrapper" class="d-flex flex-column">'+

                                 ' <!-- Main Content -->'+
                                  '<div id="content">'+


                                   ' <!-- Begin Page Content -->'+
                                    '<div class="container-fluid">'+

                                     ' <!-- Page Heading -->'+
                                      '<div class="d-sm-flex align-items-center justify-content-between mb-4">'+
                                       ' <h1 class="h3 mb-0 text-gray-800"></h1>'+

                                      '</div>'+

                                      '<!-- Content Row -->'+
                                      '<div class="row">'+

                                       ' <!-- Earnings (Monthly) Card Example -->'+
                                        '<div class="col-xl-3 col-md-6 mb-4">'+
                                         ' <div class="card border-left-primary shadow h-100 py-2">'+
                                          '  <div class="card-body">'+
                                           '   <div class="row no-gutters align-items-center">'+
                                            '    <div class="col mr-2">'+
                                             '     <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Bens cadastrados</div>'+
                                              '    <div class="h5 mb-0 font-weight-bold text-gray-800">'+IntToStr(dmDashboard.sqlTotalBensCOUNT_CODIGO.Value)+'</div>'+
                                               ' </div>'+
                                               ' <div class="col-auto">'+
                                                '  <i class="fa fa-archive fa-2x text-gray-300"></i>'+
                                               ' </div>'+
                                              '</div>'+
                                            '</div>'+
                                          '</div>'+
                                        '</div>'+

                                        '<!-- Earnings (Monthly) Card Example -->'+
                                        '<div class="col-xl-3 col-md-6 mb-4">'+
                                         ' <div class="card border-left-success shadow h-100 py-2">'+
                                          '  <div class="card-body">'+
                                           '   <div class="row no-gutters align-items-center">'+
                                            '    <div class="col mr-2">'+
                                             '     <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Bens ativos</div>'+
                                              '    <div class="h5 mb-0 font-weight-bold text-gray-800">'+IntToStr(dmDashboard.sqlBensAtivosCOUNT_CODIGO.Value)+'</div>'+
                                               ' </div>'+
                                               ' <div class="col-auto">'+
                                               '   <i class="fa fa-star fa-2x text-gray-300"></i>'+
                                               ' </div>'+
                                             ' </div>'+
                                           ' </div>'+
                                         ' </div>'+
                                       ' </div>'+

                                       '<!-- Earnings (Monthly) Card Example -->'+
                                        '<div class="col-xl-3 col-md-6 mb-4">'+
                                         ' <div class="card border-left-info shadow h-100 py-2">'+
                                          '  <div class="card-body">'+
                                           '   <div class="row no-gutters align-items-center">'+
                                            '    <div class="col mr-2">'+
                                             '     <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Bens emprestados</div>'+
                                              '    <div class="row no-gutters align-items-center">'+
                                               '     <div class="col-auto">'+
                                                '      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">'+IntToStr(dmDashboard.sqlBensEmprestadosEMPRESTADO.Value)+'</div>'+
                                                 '   </div>'+

                                                 ' </div>'+
                                               ' </div>'+
                                              '  <div class="col-auto">'+
                                               '   <i class="fa fa-asterisk fa-2x text-gray-300"></i>'+
                                               ' </div> '+
                                             ' </div> '+
                                           ' </div> '+
                                         ' </div> '+
                                       ' </div> '+

                                        '<!-- Pending Requests Card Example -->'+
                                       ' <div class="col-xl-3 col-md-6 mb-4">'+
                                        '  <div class="card border-left-warning shadow h-100 py-2">'+
                                         '   <div class="card-body">'+
                                          '    <div class="row no-gutters align-items-center">'+
                                           '     <div class="col mr-2">'+
                                            '      <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Bens baixados / Alientados</div>'+
                                             '     <div class="h5 mb-0 font-weight-bold text-gray-800">'+IntToStr(dmDashboard.sqlBaixadosBAIXADO.Value)+'</div>'+
                                              '  </div>'+
                                              '  <div class="col-auto">'+
                                               '   <i class="fa fa-trash fa-2x text-gray-300"></i>'+
                                              '  </div>'+
                                             ' </div>'+
                                           ' </div>'+
                                         ' </div>'+
                                       ' </div>'+
                                     ' </div>'+


                                      '<!-- Content Row -->'+

                                     ' <div class="row">'+

                                      '  <!-- Area Chart -->'+
                                       ' <div class="col-xl-6 col-lg-6">'+
                                        '  <div class="card shadow mb-4">'+
                                         '   <!-- Card Header - Dropdown -->'+
                                          '  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">'+
                                           '   <h6 class="m-0 font-weight-bold text-primary">Como usar o Controle Patrimonial Web</h6>'+
                                            '  <div class="dropdown no-arrow">'+
                                             '   <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+
                                              '    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>'+
                                               ' </a>'+

                                              '</div>'+
                                            '</div>'+
                                            '<!-- Card Body -->'+
                                            '<div class="card-body" >'+
                                             ' <div class="chart-area" >'+
                                              '<div> Para começar o lançamento dos bens patrimoniais é necessário fazer o cadastros das tabelas bases, as tabelas bases são:<br>'+
                                              '<ol>'+
                                                  '<li>Empresa usuária</li>'+
                                                  '<li>Pessaos</li>'+
                                                  '<li>Fornecedores</li>'+
                                                  '<li>Unidade administrativa</li>'+
                                                  '<li>Centro de custo</li>'+
                                                  '<li>Categorias</li>'+
                                                  '<li>Grupos</li>'+
                                                  '<li>Setores</li>'+
                                              '</ol></div>'+
                                               '<div>'+
                                              '</div>'+

                                             ' </div>'+
                                           ' </div>'+
                                         ' </div>'+
                                       ' </div>'+

                                        '<!-- Pie Chart -->'+
                                       ' <div class="col-xl-6 col-lg-6">'+
                                        '  <div class="card shadow mb-4">'+
                                         '   <!-- Card Header - Dropdown -->'+
                                          '  <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">'+
                                           '   <h6 class="m-0 font-weight-bold text-primary">Visão Pizza</h6>'+
                                            '  <div class="dropdown no-arrow">'+
                                             '   <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">'+
                                              '    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>'+
                                               ' </a>'+
                                               ' <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">'+
                                                '  <div class="dropdown-header">Dropdown Header:</div>'+
                                                 ' <a class="dropdown-item" href="#">Action</a>'+
                                                 ' <a class="dropdown-item" href="#">Another action</a>'+
                                                 ' <div class="dropdown-divider"></div>'+
                                                 ' <a class="dropdown-item" href="#">Something else here</a>'+
                                               ' </div>'+

                                             ' </div>'+

                                           ' </div>'+

                                           ' <!-- Card Body -->'+
                                           ' <div class="card-body">'+
                                           '   <div class="chart-pie pt-4 pb-2">'+
                                           '     <canvas id="myPieChart"></canvas>'+
                                           '   </div>'+
                                           '   <div class="mt-4 text-center small">'+
                                           '     <span class="mr-2">'+
                                           '       <i class="fas fa-circle text-primary"></i> Direct'+
                                           '     </span>'+
                                           '     <span class="mr-2">'+
                                           '       <i class="fas fa-circle text-success"></i> Social'+
                                           '     </span>'+
                                           '     <span class="mr-2">'+
                                            '      <i class="fas fa-circle text-info"></i> Referral'+
                                            '    </span>'+
                                           '   </div>'+
                                          '  </div>'+

                                        '  </div>'+
                                      '  </div>'+
                                    '  </div>'+


                                   ' </div>'+
                                   ' <!-- /.container-fluid -->'+

                                 ' </div>'+
                                 ' <!-- End of Main Content -->'+



                               ' </div>'+
                              '  <!-- End of Content Wrapper -->'+

                             ' </div>'+
                             ' <!-- End of Page Wrapper -->'+



                           ' </body>'+

                            '</html>';


//UniURLFrame1.HTML.LoadFromFile('./www/index.html',TEncoding.UTF8);
//   UniURLFrame1.Show ;
//
 // UniTimer1Timer(nil);

  //MontaDashBoardHome ;

  dmDashboard.sqlTotalBens.Close;
  dmDashboard.sqlBensAtivos.Close;
  dmDashboard.sqlBensEmprestados.Close;
  dmDashboard.sqlBaixados.Close;
end;



procedure TMainForm.UniLabel2Click(Sender: TObject);
begin
  ToogleMenu;
end;


procedure TMainForm.UniLabel3Click(Sender: TObject);
begin
    UniApplication.Restart;
end;


initialization
  RegisterAppFormClass(TMainForm);

end.
