unit UProdutosModel;

interface

uses
  FireDAC.Comp.Client,UProdutosDao;

  type
      TProdutos = class
      private
    Fpreco_venda: double;
    Fdescricao: string;
    Fcodigo: string;
    Fid: integer;
    Fdao: TProdutosDao;
    procedure Setcodigo(const Value: string);
    procedure Setdescricao(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setpreco_venda(const Value: double);
    procedure Setdao(const Value: TProdutosDao);

      public

        property id : integer read Fid write Setid;
        property codigo : string read Fcodigo write Setcodigo;
        property descricao : string read Fdescricao write Setdescricao;
        property preco_venda : double read Fpreco_venda write Setpreco_venda;


        function listar : TFDQuery;
      end;

implementation

{ TProdutos }



function TProdutos.listar: TFDQuery;
var
   ProdutosDao: TProdutosDao;
begin
   ProdutosDao := TProdutosDao.Create;
   result :=  ProdutosDao.listar;
end;

procedure TProdutos.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
end;

procedure TProdutos.Setdao(const Value: TProdutosDao);
begin
  Fdao := Value;
end;

procedure TProdutos.Setdescricao(const Value: string);
begin
  Fdescricao := Value;
end;

procedure TProdutos.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TProdutos.Setpreco_venda(const Value: double);
begin
  Fpreco_venda := Value;
end;

end.
