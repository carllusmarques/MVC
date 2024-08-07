unit UclienteModel;

interface


uses
  FireDAC.Comp.Client;

   type
      Tcliente = class
      private
        Fud: string;
        Fcodigo: string;
        Fid: integer;
        Fcidade: string;
        procedure Setcidade(const Value: string);
        procedure Setcodigo(const Value: string);
        procedure Setid(const Value: integer);
        procedure Setud(const Value: string);
      public
        property  id :integer read Fid write Setid;
        property codigo : string read Fcodigo write Setcodigo;
        property cidade : string read Fcidade write Setcidade;
        property ud : string read Fud write Setud;

        function listar : TFDQuery;
      end;

implementation

{ Tcliente }

uses UclienteDao;

function Tcliente.listar: TFDQuery;
var
  clienteDao : TClienteDao;
begin
  clienteDao := TClienteDao.Create;
  result := clienteDao.listar;
end;

procedure Tcliente.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure Tcliente.Setcodigo(const Value: string);
begin
  Fcodigo := Value;
end;

procedure Tcliente.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure Tcliente.Setud(const Value: string);
begin
  Fud := Value;
end;

end.
