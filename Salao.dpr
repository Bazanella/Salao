program Salao;

uses
  System.StartUpCopy,
  FMX.Forms,
  Salao.View.Principal in 'View\Salao.View.Principal.pas' {frmPrincipal},
  Salao.View.Padrao in 'View\Salao.View.Padrao.pas' {frmCadastroPadrao},
  Salao.View.Servicos in 'View\Salao.View.Servicos.pas' {frmCadastroServico},
  Salao.Model.Dados in 'Model\Salao.Model.Dados.pas' {dmDados: TDataModule},
  Salao.View.Clientes in 'View\Salao.View.Clientes.pas' {frmClientes},
  Salao.View.MensagemPadrao in 'View\Salao.View.MensagemPadrao.pas' {frmMensagemPadrao},
  Salao.View.Faturamento in 'View\Salao.View.Faturamento.pas' {frmFaturamento},
  Salao.View.Profissionais in 'View\Salao.View.Profissionais.pas' {frmCadastroProfissionais},
  Salao.Controller.Utils in 'Controller\Salao.Controller.Utils.pas',
  Salao.View.Pagamentos in 'View\Salao.View.Pagamentos.pas' {frmCadastroPagamentos},
  Salao.Model.Conexao.DatasetMongo in 'Model\Conexao\Salao.Model.Conexao.DatasetMongo.pas' {SalaoModelConexaoDataSetMongo: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmDados, dmDados);
  Application.Run;
end.
