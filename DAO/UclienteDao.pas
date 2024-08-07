unit UclienteDao;

interface

uses
  FireDAC.Comp.Client, uConexao, uClienteModel, System.SysUtils;

  type
  TClienteDao = class
  private
    FConexao: TConexao;
  public
    constructor Create;

    function listar: TFDQuery;
  end;

implementation

{ TClienteDao }

constructor TClienteDao.Create;
begin
    FConexao := TConexao.Create;
end;

function TClienteDao.listar: TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open('select id,codigo,nome,cidade,uf from clientes order by 1');

  Result := VQry;

end;

end.
