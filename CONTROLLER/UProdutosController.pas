unit UProdutosController;

interface

uses
  UProdutosModel,System.SysUtils, FireDAC.Comp.Client;

  type
    TProdutosController = class
      private
    Fcliente: TProdutos;
    Fprodutos: TProdutos;
    procedure Setprodutos(const Value: TProdutos);

      public

        constructor Create;
        destructor Destroy; override;

        function listar : TFDQuery;
        property produtos : TProdutos read Fprodutos write Setprodutos;
      end;

implementation

{ TProdutosController }

constructor TProdutosController.Create;
begin
  produtos := TProdutos.Create;
end;

destructor TProdutosController.Destroy;
begin
  produtos.Free;
  inherited;
end;

function TProdutosController.listar: TFDQuery;
var
  ProdutosModel : TProdutos;
begin
  ProdutosModel := TProdutos.Create;
  result := ProdutosModel.listar;

end;

procedure TProdutosController.Setprodutos(const Value: TProdutos);
begin
  Fprodutos := Value;
end;

end.
