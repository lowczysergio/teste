program Menu_teste;

uses
  Vcl.Forms,
  Un_Menu in 'Un_Menu.pas' {FrmMenu},
  view.pedidos in 'View\view.pedidos.pas' {FrmPedidos},
  controller.conexao in 'Controller\controller.conexao.pas',
  model.dao.conexao in 'Model\dao\model.dao.conexao.pas',
  model.acoes in 'Model\model.acoes.pas',
  model.cliente in 'Model\model.cliente.pas',
  model.dao.cliente in 'Model\dao\model.dao.cliente.pas',
  model.dao.produto in 'Model\dao\model.dao.produto.pas',
  model.pedidos in 'Model\model.pedidos.pas',
  model.dao.pedidos in 'Model\dao\model.dao.pedidos.pas',
  model.produto in 'Model\model.produto.pas',
  controller.cliente in 'Controller\controller.cliente.pas',
  controller.produto in 'Controller\controller.produto.pas',
  controller.pedidos in 'Controller\controller.pedidos.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := False;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;

end.
