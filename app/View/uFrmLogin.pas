unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniMultiItem, uniComboBox,
  uniPanel, uniLabel, uniButton, uniBitBtn, uniEdit, uniGUIBaseClasses, uniImage,
  uniSweetAlert, ClassAlert, udmComum;

type
  TfLogin = class(TUniLoginForm)
    imgBG: TUniImage;
    pnLogin: TUniPanel;
    EdUsuario: TUniEdit;
    EdSenha: TUniEdit;
    UniBitBtn1: TUniBitBtn;
    lbkey: TUniLabel;
    cbEmpresa: TUniComboBox;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    btnContinuar: TUniBitBtn;
    procedure UniLoginFormBeforeShow(Sender: TObject);
    procedure UniLoginFormScreenResize(Sender: TObject; AWidth,
      AHeight: Integer);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnContinuarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function fLogin: TfLogin;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, Main, ClassLogin;

function fLogin: TfLogin;
begin
  Result := TfLogin(UniMainModule.GetFormInstance(TfLogin));
end;

procedure TfLogin.btnContinuarClick(Sender: TObject);
begin
  if cbEmpresa.ItemIndex > 0 then
  begin
    dmComum.FDQryEmpresa.First;
    dmComum.FDQryEmpresa.Locate('NOME',cbEmpresa.Text,[]);

    UniMainModule.vEmpresaEscolhia := dmComum.FDQryEmpresaCODIGO.Value;
    UniMainModule.vNomeEmpresa := dmComum.FDQryEmpresaNOME.AsString;
    ModalResult := mrOK;
  end else
    UniAlert.SwAlerta('ATENÇÃO' , 'Selecione uma empresa.' , Erro , 3000);
end;

procedure TfLogin.UniBitBtn1Click(Sender: TObject);
var
   oLogin   : TLogin ;
   vContEmp : Integer;
begin
  try
    oLogin := TLogin.Create;
    if not ( oLogin.ValidaUsuarioSenha(EdUsuario.Text,EdSenha.Text) ) then
       Begin
          UniAlert.SwAlerta('ATENÇÃO' , 'Usuário e/ou senha inválidos.' , Erro , 3000);
          EdUsuario.SetFocus ;
          ModalResult := mrNone;
          abort;
       End
    Else
       begin
          UniLabel2.Visible := False;
          UniLabel3.Visible := False;
          UniLabel1.Visible := False;
          EdUsuario.Visible := False;
          EdSenha.Visible := False;
          cbEmpresa.Visible := True;
          UniBitBtn1.Visible := False;
          btnContinuar.Visible := True;

          // Abre a tabela para selecionar as empresa que o usuário tem direito de acesso
          dmComum.FDQryEmpresa.Close;
          dmComum.FDQryEmpresa.ParamByName('CODIGO').AsInteger := UniMainModule.vUsuarioLongado;
          dmComum.FDQryEmpresa.Open;
          dmComum.FDQryEmpresa.First;

          // Verifica se o usuário tem acesso a apenas uma empresa, seleciona
          // automaticamente a empresa e segue, caso contrário adiciona as
          // empresas que o usuário tem acesso ao combobox
          vContEmp := dmComum.FDQryEmpresa.RecordCount;
          if vContEmp = 1 then
          begin
            UniMainModule.vEmpresaEscolhia := dmComum.FDQryEmpresaCODIGO.Value;
            UniMainModule.vNomeEmpresa := dmComum.FDQryEmpresaNOME.AsString;
            ModalResult := mrOK;
          end else
          while not(dmComum.FDQryEmpresa.eof) do
          begin
            cbEmpresa.Items.Add(dmComum.FDQryEmpresa.fieldbyname('NOME').Asstring);
            dmComum.FDQryEmpresa.Next;
          end;

       end  ;
  finally
    oLogin.Free ;
  end;
end;

procedure TfLogin.UniLoginFormBeforeShow(Sender: TObject);
begin

  imgBG.Url := '/files/images/background/11.jpg';

end;

procedure TfLogin.UniLoginFormScreenResize(Sender: TObject; AWidth,
  AHeight: Integer);
begin

   pnLogin.BorderStyle  := ubsNone;
   pnLogin.Left         := Round((AWidth/ 2) - (pnLogin.Width / 2));
   pnLogin.Top          := Round((AHeight / 2) - (pnLogin.Height / 2));
   pnLogin.Update;

end;


initialization
  RegisterAppFormClass(TfLogin);

end.
