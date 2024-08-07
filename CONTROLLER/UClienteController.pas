unit UClienteController;

interface

uses
  UclienteModel,System.SysUtils, FireDAC.Comp.Client;

   type
      TClienteController = class
      private
    Fcliente: Tcliente;
    procedure Setcliente(const Value: Tcliente);
      public

        constructor Create;
        destructor Destroy; override;

        function listar : TFDQuery;
        property cliente : Tcliente read Fcliente write Setcliente;
      end;

implementation



{ TClienteController }

constructor TClienteController.Create;
begin
  cliente := Tcliente.Create;
end;

destructor TClienteController.Destroy;
begin
  cliente.Free;

  inherited;
end;

function TClienteController.listar: TFDQuery;
var
  clienteModel : Tcliente;
begin
  clienteModel := Tcliente.Create;
  result := clienteModel.listar;
end;

procedure TClienteController.Setcliente(const Value: Tcliente);
begin
  Fcliente := Value;
end;

end.
