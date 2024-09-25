object DmTabelas: TDmTabelas
  OldCreateOrder = False
  Height = 435
  Width = 635
  object DsProdutos: TDataSource
    DataSet = CdsProdutos
    Left = 488
    Top = 41
  end
  object QryInserir: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmConexao.SQLConnection
    Left = 40
    Top = 32
  end
  object QryAlterar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DmConexao.SQLConnection
    Left = 40
    Top = 88
    object IntegerField2: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'DES_NOMEPRODUTO'
      Size = 100
    end
    object StringField4: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object SingleField2: TSingleField
      FieldName = 'VAL_PRECO'
    end
  end
  object QryExcluir: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmConexao.SQLConnection
    Left = 40
    Top = 152
    object IntegerField3: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object StringField5: TStringField
      FieldName = 'DES_NOMEPRODUTO'
      Size = 100
    end
    object StringField6: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object SingleField3: TSingleField
      FieldName = 'VAL_PRECO'
    end
  end
  object QryPesquisar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = DmConexao.SQLConnection
    Left = 40
    Top = 216
    object IntegerField4: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'DES_NOMEPRODUTO'
      Size = 100
    end
    object StringField8: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object SingleField4: TSingleField
      FieldName = 'VAL_PRECO'
    end
  end
  object QryPesquisarItens: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tab_venda_item')
    SQLConnection = DmConexao.SQLConnection
    Left = 131
    Top = 216
    object QryPesquisarItensID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Required = True
    end
    object QryPesquisarItensCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object QryPesquisarItensCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object QryPesquisarItensDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object QryPesquisarItensVAL_QUANTIDADE: TIntegerField
      FieldName = 'VAL_QUANTIDADE'
      Required = True
    end
    object QryPesquisarItensVAL_PRECO_UNITARIO: TSingleField
      FieldName = 'VAL_PRECO_UNITARIO'
    end
    object QryPesquisarItensVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
    end
  end
  object QryTemp: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select vda.cod_venda'
      ', vda.dta_venda'
      ', vda.des_nomecliente'
      ', vdi.id_venda'
      ', vdi.cod_produto'
      ', vdi.des_descricao'
      ', vdi.val_quantidade'
      ', vdi.val_preco_unitario'
      ', vdi.val_total_venda'
      ', vda.val_total_venda as val_tot_venda'
      'from tab_venda vda'
      'inner join tab_venda_item vdi on vda.cod_venda = vdi.cod_venda'
      'order by vda.dta_venda desc')
    SQLConnection = DmConexao.SQLConnection
    Left = 40
    Top = 280
    object QryTempCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object QryTempDTA_VENDA: TDateField
      FieldName = 'DTA_VENDA'
    end
    object QryTempDES_NOMECLIENTE: TStringField
      FieldName = 'DES_NOMECLIENTE'
      Size = 100
    end
    object QryTempID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Required = True
    end
    object QryTempCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object QryTempDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object QryTempVAL_QUANTIDADE: TIntegerField
      FieldName = 'VAL_QUANTIDADE'
      Required = True
    end
    object QryTempVAL_PRECO_UNITARIO: TSingleField
      FieldName = 'VAL_PRECO_UNITARIO'
      DisplayFormat = '#,##0.00'
    end
    object QryTempVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
    end
    object QryTempVAL_TOT_VENDA: TSingleField
      FieldName = 'VAL_TOT_VENDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object CdsProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspProdutos'
    Left = 384
    Top = 96
    object CdsProdutosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object CdsProdutosDES_NOMEPRODUTO: TStringField
      FieldName = 'DES_NOMEPRODUTO'
      Size = 100
    end
    object CdsProdutosDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object CdsProdutosVAL_PRECO: TSingleField
      FieldName = 'VAL_PRECO'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DspProdutos: TDataSetProvider
    DataSet = TblProdutos
    Left = 488
    Top = 96
  end
  object TblProdutos: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tab_produto'
      'order by des_nomeproduto')
    SQLConnection = DmConexao.SQLConnection
    Left = 384
    Top = 40
    object TblProdutosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object TblProdutosDES_NOMEPRODUTO: TStringField
      FieldName = 'DES_NOMEPRODUTO'
      Size = 100
    end
    object TblProdutosDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object TblProdutosVAL_PRECO: TSingleField
      FieldName = 'VAL_PRECO'
      DisplayFormat = '#,##0.00'
    end
  end
  object TblVendas: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tab_venda'
      'order by dta_venda desc')
    SQLConnection = DmConexao.SQLConnection
    Left = 384
    Top = 176
    object TblVendasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object TblVendasDTA_VENDA: TDateField
      FieldName = 'DTA_VENDA'
    end
    object TblVendasDES_NOMECLIENTE: TStringField
      FieldName = 'DES_NOMECLIENTE'
      Size = 100
    end
    object TblVendasDES_CEP: TStringField
      FieldName = 'DES_CEP'
      Size = 10
    end
    object TblVendasDES_ENDERECO: TStringField
      FieldName = 'DES_ENDERECO'
      Size = 100
    end
    object TblVendasDES_COMPLEMENTO: TStringField
      FieldName = 'DES_COMPLEMENTO'
      Size = 50
    end
    object TblVendasDES_BAIRRO: TStringField
      FieldName = 'DES_BAIRRO'
      Size = 100
    end
    object TblVendasDES_CIDADE: TStringField
      FieldName = 'DES_CIDADE'
      Size = 100
    end
    object TblVendasDES_ESTADO: TStringField
      FieldName = 'DES_ESTADO'
      Size = 2
    end
    object TblVendasVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object DsVendas: TDataSource
    DataSet = CdsVendas
    Left = 488
    Top = 177
  end
  object CdsVendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVendas'
    Left = 384
    Top = 232
    object CdsVendasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object CdsVendasDTA_VENDA: TDateField
      FieldName = 'DTA_VENDA'
    end
    object CdsVendasDES_NOMECLIENTE: TStringField
      FieldName = 'DES_NOMECLIENTE'
      Size = 100
    end
    object CdsVendasDES_CEP: TStringField
      FieldName = 'DES_CEP'
      Size = 10
    end
    object CdsVendasDES_ENDERECO: TStringField
      FieldName = 'DES_ENDERECO'
      Size = 100
    end
    object CdsVendasDES_COMPLEMENTO: TStringField
      FieldName = 'DES_COMPLEMENTO'
      Size = 50
    end
    object CdsVendasDES_BAIRRO: TStringField
      FieldName = 'DES_BAIRRO'
      Size = 100
    end
    object CdsVendasDES_CIDADE: TStringField
      FieldName = 'DES_CIDADE'
      Size = 100
    end
    object CdsVendasDES_ESTADO: TStringField
      FieldName = 'DES_ESTADO'
      Size = 2
    end
    object CdsVendasVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object DspVendas: TDataSetProvider
    DataSet = TblVendas
    Left = 488
    Top = 232
  end
  object TblVendasProdutos: TSQLQuery
    Active = True
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from tab_venda_item')
    SQLConnection = DmConexao.SQLConnection
    Left = 384
    Top = 304
    object TblVendasProdutosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object TblVendasProdutosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object TblVendasProdutosDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object TblVendasProdutosVAL_QUANTIDADE: TIntegerField
      FieldName = 'VAL_QUANTIDADE'
      Required = True
    end
    object TblVendasProdutosVAL_PRECO_UNITARIO: TSingleField
      FieldName = 'VAL_PRECO_UNITARIO'
      DisplayFormat = '#,##0.00'
    end
    object TblVendasProdutosVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object DsVendasProdutos: TDataSource
    DataSet = CdsVendasProdutos
    Left = 490
    Top = 303
  end
  object CdsVendasProdutos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVendasProdutos'
    Left = 384
    Top = 368
    object CdsVendasProdutosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object CdsVendasProdutosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object CdsVendasProdutosDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object CdsVendasProdutosVAL_QUANTIDADE: TIntegerField
      FieldName = 'VAL_QUANTIDADE'
      Required = True
    end
    object CdsVendasProdutosVAL_PRECO_UNITARIO: TSingleField
      FieldName = 'VAL_PRECO_UNITARIO'
      DisplayFormat = '#,##0.00'
    end
    object CdsVendasProdutosVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
      DisplayFormat = '#,##0.00'
    end
  end
  object DspVendasProdutos: TDataSetProvider
    DataSet = TblVendasProdutos
    Left = 488
    Top = 368
  end
  object DsTemp: TDataSource
    DataSet = CdsTemp
    Left = 112
    Top = 281
  end
  object CdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspTemp'
    Left = 40
    Top = 344
    object CdsTempCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Required = True
    end
    object CdsTempDTA_VENDA: TDateField
      FieldName = 'DTA_VENDA'
    end
    object CdsTempDES_NOMECLIENTE: TStringField
      FieldName = 'DES_NOMECLIENTE'
      Size = 100
    end
    object CdsTempID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Required = True
    end
    object CdsTempCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      Required = True
    end
    object CdsTempDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Size = 100
    end
    object CdsTempVAL_QUANTIDADE: TIntegerField
      FieldName = 'VAL_QUANTIDADE'
      Required = True
    end
    object CdsTempVAL_PRECO_UNITARIO: TSingleField
      FieldName = 'VAL_PRECO_UNITARIO'
    end
    object CdsTempVAL_TOTAL_VENDA: TSingleField
      FieldName = 'VAL_TOTAL_VENDA'
    end
    object CdsTempVAL_TOT_VENDA: TSingleField
      FieldName = 'VAL_TOT_VENDA'
    end
  end
  object DspTemp: TDataSetProvider
    DataSet = QryTemp
    Left = 112
    Top = 344
  end
end
