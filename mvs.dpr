program mvs;

uses
  Vcl.Forms,
  UFrmPrincipal in 'UFrmPrincipal.pas' {Form1},
  uConexao in 'DAO\uConexao.pas',
  UclienteModel in 'MODEL\UclienteModel.pas',
  UClienteController in 'CONTROLLER\UClienteController.pas',
  UclienteDao in 'DAO\UclienteDao.pas',
  UProdutosController in 'CONTROLLER\UProdutosController.pas',
  UProdutosModel in 'MODEL\UProdutosModel.pas',
  UProdutosDao in 'DAO\UProdutosDao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
