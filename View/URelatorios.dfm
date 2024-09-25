object FrmRelatorios: TFrmRelatorios
  Left = 0
  Top = 0
  Caption = 'FrmRelatorios'
  ClientHeight = 188
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DsRelProdutos: TfrxDBDataset
    UserName = 'DsRelProdutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'COD_PRODUTO=COD_PRODUTO'
      'DES_NOMEPRODUTO=DES_NOMEPRODUTO'
      'DES_DESCRICAO=DES_DESCRICAO'
      'VAL_PRECO=VAL_PRECO')
    DataSource = DmTabelas.DsProdutos
    BCDToCurrency = False
    Left = 352
    Top = 24
  end
  object FrxRelProdutos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45539.822917615700000000
    ReportOptions.Name = 'FrxRelProdutos'
    ReportOptions.LastChange = 45539.853778194400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 32
    Datasets = <
      item
        DataSet = DsRelProdutos
        DataSetName = 'DsRelProdutos'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem de Produtos Cadastrados')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 41.574805590000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = -6.000000000000000000
          Top = 15.000000000000000000
          Width = 718.110236220472000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          Top = 12.000000000000000000
          Width = 73.984230000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          Left = 86.000000000000000000
          Top = 12.000000000000000000
          Width = 273.147568240000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Produto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 381.147568240000000000
          Top = 12.000000000000000000
          Width = 251.962667980000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 633.110236220000000000
          Top = 12.000000000000000000
          Width = 85.000000000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pre'#231'o Unit.')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = DsRelProdutos
        DataSetName = 'DsRelProdutos'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 77.763760000000000000
          Height = 18.897650000000000000
          DataField = 'COD_PRODUTO'
          DataSet = DsRelProdutos
          DataSetName = 'DsRelProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DsRelProdutos."COD_PRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo8: TfrxMemoView
          Left = 86.000000000000000000
          Top = 1.000000000000000000
          Width = 273.147568240000000000
          Height = 18.897650000000000000
          DataField = 'DES_NOMEPRODUTO'
          DataSet = DsRelProdutos
          DataSetName = 'DsRelProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DsRelProdutos."DES_NOMEPRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          Left = 381.147568240000000000
          Top = 1.000000000000000000
          Width = 251.962667980000000000
          Height = 18.897650000000000000
          DataField = 'DES_DESCRICAO'
          DataSet = DsRelProdutos
          DataSetName = 'DsRelProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DsRelProdutos."DES_DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo10: TfrxMemoView
          Left = 633.110236220000000000
          Top = 1.000000000000000000
          Width = 85.000000000000000000
          Height = 18.897650000000000000
          DataField = 'VAL_PRECO'
          DataSet = DsRelProdutos
          DataSetName = 'DsRelProdutos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DsRelProdutos."VAL_PRECO"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo12: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo13: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina: [Page#]')
        end
      end
    end
  end
  object DsRelVendas: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = DmTabelas.QryTemp
    BCDToCurrency = False
    Left = 352
    Top = 88
  end
  object FrxRelVendas: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45539.904230798600000000
    ReportOptions.LastChange = 45539.946383993100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 40
    Top = 104
    Datasets = <
      item
        DataSet = DsRelVendas
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Relatorio de Vendas - Agrupado por Venda')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 68.031540000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Left = 85.826840000000000000
          Top = 3.000000000000000000
          Width = 98.968987790000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Data da Venda')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          Left = 8.254952320000000000
          Top = 3.000000000000000000
          Width = 59.850318610000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ID Venda')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          Left = 195.829760930000000000
          Top = 3.000000000000000000
          Width = 88.910608590000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'C'#243'd. Produto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          Left = 291.960839530000000000
          Top = 3.000000000000000000
          Width = 337.633166430000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Descri'#231#227'o do Produto')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          Left = 643.712125950000000000
          Top = 3.000000000000000000
          Width = 85.407972910000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          Left = 747.364068860000000000
          Top = 3.000000000000000000
          Width = 80.132440190000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Pre'#231'o Unit.')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          Left = 865.630490000000000000
          Top = 3.000000000000000000
          Width = 88.184186430000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."COD_VENDA"'
        object Memo12: TfrxMemoView
          Align = baWidth
          Width = 921.937540000000000000
          Height = 22.677180000000000000
          DataField = 'COD_VENDA'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            '[frxDBDataset1."COD_VENDA"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 368.110917790000000000
          Top = 3.779530000000000000
          Width = 319.695674530000000000
          Height = 18.897650000000000000
          DataField = 'DES_NOMECLIENTE'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DES_NOMECLIENTE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo26: TfrxMemoView
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 816.110700000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Total da Venda:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 921.937540000000000000
          Top = 3.779530000000000000
          Width = 80.625126430000000000
          Height = 18.897650000000000000
          DataField = 'VAL_TOT_VENDA'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."VAL_TOT_VENDA"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        DataSet = DsRelVendas
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo15: TfrxMemoView
          Left = 8.254952320000000000
          Top = 0.779530000000000000
          Width = 48.511728610000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID_VENDA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          Left = 209.609290930000000000
          Width = 73.792488590000000000
          Height = 18.897650000000000000
          DataField = 'COD_PRODUTO'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."COD_PRODUTO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          Left = 291.960839530000000000
          Width = 80.625126430000000000
          Height = 18.897650000000000000
          DataField = 'DES_DESCRICAO'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DES_DESCRICAO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          Left = 644.271185950000000000
          Top = 3.779530000000000000
          Width = 85.407972910000000000
          Height = 18.897650000000000000
          DataField = 'VAL_QUANTIDADE'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."VAL_QUANTIDADE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          Left = 741.017748860000000000
          Top = 3.000000000000000000
          Width = 106.589150190000000000
          Height = 18.897650000000000000
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VAL_PRECO_UNITARIO"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          Left = 874.063609050000000000
          Top = 0.779530000000000000
          Width = 92.240610740000000000
          Height = 18.897650000000000000
          DataField = 'VAL_TOTAL_VENDA'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."VAL_TOTAL_VENDA"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo13: TfrxMemoView
          Left = 95.708720000000000000
          Width = 87.630397790000000000
          Height = 18.897650000000000000
          DataField = 'DTA_VENDA'
          DataSet = DsRelVendas
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."DTA_VENDA"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Top = 245.669450000000000000
        Width = 1046.929810000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 306.141930000000000000
        Width = 1046.929810000000000000
        object Memo22: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo23: TfrxMemoView
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo24: TfrxMemoView
          Align = baRight
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object Memo2: TfrxMemoView
        Left = 57.472480000000000000
        Top = 411.968770000000000000
        Width = 718.110236220000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Width = 2.000000000000000000
        ParentFont = False
        Style = 'Header line'
      end
    end
  end
end
