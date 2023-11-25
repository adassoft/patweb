program ServeridorPatWeb;

uses
  Vcl.Forms,
  uPrincipal in 'Viewes\uPrincipal.pas' {frmPrincipal},
  uDados in 'Model\uDados.pas' {dmDados: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
