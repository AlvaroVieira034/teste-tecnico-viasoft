unit UPesqPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmPesqPedidos = class(TForm)
    PnlFundo: TPanel;
    GroupBox1: TGroupBox;
    DbGridPedidos: TDBGrid;
    PnlPesquisar: TPanel;
    Label4: TLabel;
    BtnPesquisar: TSpeedButton;
    EdtPesquisar: TEdit;
    CbxFiltro: TComboBox;
    procedure DbGridPedidosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesqPedidos: TFrmPesqPedidos;

implementation

{$R *.dfm}

uses UMain, UDMConexao, UDmTabelas, VendaController, VendaItensController, UCadVenda, untFormat, Biblioteca;

procedure TFrmPesqPedidos.BtnPesquisarClick(Sender: TObject);
var Venda : TVenda;
    campoIndice: string;
begin
  Venda := TVenda.Create;
  try
    if CbxFiltro.Text = 'Nome Cliente' then
      campoIndice := 'DES_NOMECLIENTE'
    else
      campoIndice := 'COD_VENDA';

    Venda.Pesquisar(Trim(EdtPesquisar.Text) + '%', campoIndice);
  finally
    FreeAndNil(Venda);
  end;
end;

procedure TFrmPesqPedidos.DbGridPedidosDblClick(Sender: TObject);
begin
  FrmCadVenda.codigoVenda := DmTabelas.DsVendas.DataSet.FieldByName('COD_VENDA').AsInteger;
  FrmCadVenda.pesqVenda := True;
  Close;
end;

procedure TFrmPesqPedidos.FormShow(Sender: TObject);
begin
  DmTabelas.TblVendas.Open;
  DbGridPedidos.Refresh;
end;

end.
