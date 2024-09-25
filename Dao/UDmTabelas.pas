unit UDmTabelas;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider,
  Datasnap.DBClient, Data.DB, Data.SqlExpr;

type
  TDmTabelas = class(TDataModule)
    DsProdutos: TDataSource;
    QryInserir: TSQLQuery;
    QryAlterar: TSQLQuery;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    SingleField2: TSingleField;
    QryExcluir: TSQLQuery;
    IntegerField3: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    SingleField3: TSingleField;
    QryPesquisar: TSQLQuery;
    IntegerField4: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    SingleField4: TSingleField;
    QryPesquisarItens: TSQLQuery;
    QryTemp: TSQLQuery;
    CdsProdutos: TClientDataSet;
    CdsProdutosCOD_PRODUTO: TIntegerField;
    CdsProdutosDES_NOMEPRODUTO: TStringField;
    CdsProdutosDES_DESCRICAO: TStringField;
    CdsProdutosVAL_PRECO: TSingleField;
    DspProdutos: TDataSetProvider;
    TblProdutos: TSQLQuery;
    TblProdutosCOD_PRODUTO: TIntegerField;
    TblProdutosDES_NOMEPRODUTO: TStringField;
    TblProdutosDES_DESCRICAO: TStringField;
    TblProdutosVAL_PRECO: TSingleField;
    TblVendas: TSQLQuery;
    DsVendas: TDataSource;
    CdsVendas: TClientDataSet;
    DspVendas: TDataSetProvider;
    TblVendasCOD_VENDA: TIntegerField;
    TblVendasDTA_VENDA: TDateField;
    TblVendasDES_NOMECLIENTE: TStringField;
    TblVendasDES_CEP: TStringField;
    TblVendasDES_ENDERECO: TStringField;
    TblVendasDES_COMPLEMENTO: TStringField;
    TblVendasDES_BAIRRO: TStringField;
    TblVendasDES_CIDADE: TStringField;
    TblVendasDES_ESTADO: TStringField;
    TblVendasVAL_TOTAL_VENDA: TSingleField;
    TblVendasProdutos: TSQLQuery;
    DsVendasProdutos: TDataSource;
    CdsVendasProdutos: TClientDataSet;
    DspVendasProdutos: TDataSetProvider;
    TblVendasProdutosCOD_VENDA: TIntegerField;
    TblVendasProdutosCOD_PRODUTO: TIntegerField;
    TblVendasProdutosDES_DESCRICAO: TStringField;
    TblVendasProdutosVAL_QUANTIDADE: TIntegerField;
    TblVendasProdutosVAL_PRECO_UNITARIO: TSingleField;
    TblVendasProdutosVAL_TOTAL_VENDA: TSingleField;
    CdsVendasProdutosCOD_VENDA: TIntegerField;
    CdsVendasProdutosCOD_PRODUTO: TIntegerField;
    CdsVendasProdutosDES_DESCRICAO: TStringField;
    CdsVendasProdutosVAL_QUANTIDADE: TIntegerField;
    CdsVendasProdutosVAL_PRECO_UNITARIO: TSingleField;
    CdsVendasProdutosVAL_TOTAL_VENDA: TSingleField;
    CdsVendasCOD_VENDA: TIntegerField;
    CdsVendasDTA_VENDA: TDateField;
    CdsVendasDES_NOMECLIENTE: TStringField;
    CdsVendasDES_CEP: TStringField;
    CdsVendasDES_ENDERECO: TStringField;
    CdsVendasDES_COMPLEMENTO: TStringField;
    CdsVendasDES_BAIRRO: TStringField;
    CdsVendasDES_CIDADE: TStringField;
    CdsVendasDES_ESTADO: TStringField;
    CdsVendasVAL_TOTAL_VENDA: TSingleField;
    QryPesquisarItensID_VENDA: TIntegerField;
    QryPesquisarItensCOD_VENDA: TIntegerField;
    QryPesquisarItensCOD_PRODUTO: TIntegerField;
    QryPesquisarItensDES_DESCRICAO: TStringField;
    QryPesquisarItensVAL_QUANTIDADE: TIntegerField;
    QryPesquisarItensVAL_PRECO_UNITARIO: TSingleField;
    QryPesquisarItensVAL_TOTAL_VENDA: TSingleField;
    QryTempCOD_VENDA: TIntegerField;
    QryTempDTA_VENDA: TDateField;
    QryTempDES_NOMECLIENTE: TStringField;
    QryTempID_VENDA: TIntegerField;
    QryTempCOD_PRODUTO: TIntegerField;
    QryTempDES_DESCRICAO: TStringField;
    QryTempVAL_QUANTIDADE: TIntegerField;
    QryTempVAL_PRECO_UNITARIO: TSingleField;
    QryTempVAL_TOTAL_VENDA: TSingleField;
    QryTempVAL_TOT_VENDA: TSingleField;
    DsTemp: TDataSource;
    CdsTemp: TClientDataSet;
    DspTemp: TDataSetProvider;
    CdsTempCOD_VENDA: TIntegerField;
    CdsTempDTA_VENDA: TDateField;
    CdsTempDES_NOMECLIENTE: TStringField;
    CdsTempID_VENDA: TIntegerField;
    CdsTempCOD_PRODUTO: TIntegerField;
    CdsTempDES_DESCRICAO: TStringField;
    CdsTempVAL_QUANTIDADE: TIntegerField;
    CdsTempVAL_PRECO_UNITARIO: TSingleField;
    CdsTempVAL_TOTAL_VENDA: TSingleField;
    CdsTempVAL_TOT_VENDA: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmTabelas: TDmTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

uses UMain, UDmConexao;

end.
