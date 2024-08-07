unit UProdutosDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uClienteModel, System.SysUtils;


type
  TProdutosDao = class
  private
    FConexao: TConexao;
  public
    constructor Create;

    function listar: TFDQuery;
  end;

implementation

{ TProdutosDao }

constructor TProdutosDao.Create;
begin
    FConexao := TConexao.Create;
end;

function TProdutosDao.listar: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open('select id,codigo,descricao,preco_venda from produtos order by 1');

  Result := VQry;

end;

end.
