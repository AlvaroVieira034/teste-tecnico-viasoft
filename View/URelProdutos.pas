unit URelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TFrmRelProdutos = class(TForm)
    DsRelProdutos: TfrxDBDataset;
    FrxRelProdutos: TfrxReport;
    DsRelVendas: TfrxDBDataset;
    FrxRelVendas: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelProdutos: TFrmRelProdutos;

implementation

{$R *.dfm}

uses UMain, UDMConexao, UDmTabelas, untFormat, Biblioteca;

end.
