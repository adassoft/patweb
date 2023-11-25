program PatWeb;

uses
  Forms,
  ServerModule in 'Model\ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'Model\MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'View\Main.pas' {MainForm: TUniForm},
  UFrameBase in 'View\UFrameBase.pas' {FrameBase: TUniFrame},
  ClassAlert in 'Controller\ClassAlert.pas',
  ClassAuxiliar in 'Controller\ClassAuxiliar.pas',
  ClassDashBoardHome in 'Controller\ClassDashBoardHome.pas',
  ClassLogin in 'Controller\ClassLogin.pas',
  uniSweetAlert in 'Controller\uniSweetAlert.pas',
  Unit_Captcha in 'Controller\Unit_Captcha.pas',
  UDmLogin in 'Model\UDmLogin.pas' {DMLogin: TDataModule},
  uUnidade in 'View\uUnidade.pas' {frmCadUnidade: TUniFrame},
  uCentroCusto in 'View\uCentroCusto.pas' {frmCentroCusto: TUniFrame},
  ClassIGrowl in 'Controller\ClassIGrowl.pas',
  uGrupo in 'View\uGrupo.pas' {frmGrupos: TUniFrame},
  uMotivoTransferencia in 'View\uMotivoTransferencia.pas' {frmMotivoTransferencia: TUniFrame};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
end.
