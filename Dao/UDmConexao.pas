unit UDmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr;

type
  TDmConexao = class(TDataModule)
    SQLConnection: TSQLConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
