unit URelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet;

type
  TFrmRelatorios = class(TForm)
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
  FrmRelatorios: TFrmRelatorios;

implementation

{$R *.dfm}

uses UMain, UDMConexao, UDmTabelas, untFormat, Biblioteca;

end.
