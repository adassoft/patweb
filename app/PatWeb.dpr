program PatWeb;

uses
  Forms,
  ServerModule in 'Model\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'Model\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'View\Main.pas' {MainForm: TUniForm},
  UFrameBase in 'View\UFrameBase.pas' {FrameBase: TUniFrame},
  ClassAlert in 'Controller\ClassAlert.pas',
  ClassAuxiliar in 'Controller\ClassAuxiliar.pas',
  uniSweetAlert in 'Controller\uniSweetAlert.pas',
  UDmLogin in 'Model\UDmLogin.pas' {DMLogin: TDataModule},
  uUnidade in 'View\uUnidade.pas' {frmCadUnidade: TUniFrame},
  uCentroCusto in 'View\uCentroCusto.pas' {frmCentroCusto: TUniFrame},
  uGrupo in 'View\uGrupo.pas' {frmGrupos: TUniFrame},
  uMotivoTransferencia in 'View\uMotivoTransferencia.pas' {frmMotivoTransferencia: TUniFrame},
  uCategoria in 'View\uCategoria.pas' {frmCategoria: TUniFrame},
  UPessoa in 'View\UPessoa.pas' {frmCadPessoa: TUniFrame},
  uCidade in 'View\uCidade.pas' {frmCidades: TUniFrame},
  uPatrimoniorrrr in 'View\uPatrimoniorrrr.pas' {frmCadPatrimoniorr: TUniFrame},
  uFornecedor in 'View\uFornecedor.pas' {frmFornecedor: TUniFrame},
  Utils in 'Controller\Utils.pas',
  udmComum in 'Model\udmComum.pas' {dmComum: TDataModule},
  uFrmLogin in 'View\uFrmLogin.pas' {fLogin: TUniLoginForm},
  ClassLogin in 'Controller\ClassLogin.pas',
  uUsuarios in 'View\uUsuarios.pas' {frmUsuarios: TUniFrame},
  uEmpresaUsuaria in 'View\uEmpresaUsuaria.pas' {frmEmpresaUsuaria: TUniFrame},
  udmDashboard in 'Model\udmDashboard.pas' {dmDashboard: TDataModule},
  uSetor in 'View\uSetor.pas' {frmSetor: TUniFrame},
  uPatrimonio in 'View\uPatrimonio.pas' {frmCadPatrimonio: TUniFrame},
  UFrameRelatorioGeral in 'View\Relatorios\Frames\UFrameRelatorioGeral.pas' {FrmRelatorioGeral: TUniForm},
  URelRelacaoGeral in 'View\Relatorios\URelRelacaoGeral.pas' {FrmRelRelacaoGeral: TUniForm},
  udmRelatorios in 'Model\udmRelatorios.pas' {dmRelatorios: TDataModule},
  ClassRelatorios in 'Controller\ClassRelatorios.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
