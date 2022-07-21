program Salao;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {FrmPrincipal},
  uFrmPadrao in 'uFrmPadrao.pas' {FrmCadastroPadrao},
  uFrmCadastroServicos in 'uFrmCadastroServicos.pas' {FrmCadastroPadrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
