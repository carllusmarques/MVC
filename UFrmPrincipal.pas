unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls,UClienteController, UProdutosController;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable2: TFDMemTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ClienteController : TClienteController;
  ProdutosController : TProdutosController;

implementation

{$R *.dfm}

uses uConexao;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      ClienteController.Free;
      ProdutosController.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ClienteController := TClienteController.Create;


  FDMemTable1.Data := ClienteController.listar.Data;
  FDMemTable1.Open;


  ProdutosController := TProdutosController.Create;


  FDMemTable2.Data := ProdutosController.listar.Data;
  FDMemTable2.Open;




end;

end.
