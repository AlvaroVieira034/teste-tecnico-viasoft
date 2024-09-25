program TesteTecnico;

uses
  Vcl.Forms,
  UMain in 'View\UMain.pas' {FrmMain},
  UDmConexao in 'Dao\UDmConexao.pas' {DmConexao: TDataModule},
  UCadastroPadrao in 'View\UCadastroPadrao.pas' {FrmCadastroPadrao},
  UCadProduto in 'View\UCadProduto.pas' {FrmCadProduto},
  untFormat in 'Lib\untFormat.pas',
  Biblioteca in 'Lib\Biblioteca.pas',
  UCadVenda in 'View\UCadVenda.pas' {FrmCadVenda},
  VendaController in 'Controller\VendaController.pas',
  VendaItensController in 'Controller\VendaItensController.pas',
  ProdutoController in 'Controller\ProdutoController.pas',
  UDmTabelas in 'Dao\UDmTabelas.pas' {DmTabelas: TDataModule},
  UPesqPedidos in 'View\UPesqPedidos.pas' {FrmPesqPedidos},
  UMenuRelatorios in 'View\UMenuRelatorios.pas' {FrmMenuRelatorios},
  URelatorios in 'View\URelatorios.pas' {FrmRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmTabelas, DmTabelas);
  Application.CreateForm(TFrmMenuRelatorios, FrmMenuRelatorios);
  Application.CreateForm(TFrmRelatorios, FrmRelatorios);
  Application.Run;
end.
