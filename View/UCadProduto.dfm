inherited FrmCadProduto: TFrmCadProduto
  Caption = 'Cadastro de Produtos'
  ClientHeight = 486
  ClientWidth = 662
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitWidth = 668
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited PnlDados: TPanel
    Left = 0
    Top = 65
    Width = 662
    Height = 137
    Align = alTop
    ExplicitLeft = 0
    ExplicitTop = 65
    ExplicitWidth = 662
    ExplicitHeight = 137
    inherited GrbDados: TGroupBox
      Left = 3
      Top = 3
      Width = 652
      Height = 128
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Dados do Produto '
      Enabled = False
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 652
      ExplicitHeight = 128
      object Label1: TLabel
        Left = 64
        Top = 22
        Width = 37
        Height = 13
        Caption = '&C'#243'digo:'
      end
      object Label2: TLabel
        Left = 30
        Top = 99
        Width = 71
        Height = 13
        Caption = '&Pre'#231'o Unit'#225'rio:'
      end
      object Label6: TLabel
        Left = 51
        Top = 73
        Width = 50
        Height = 13
        Caption = '&Descri'#231#227'o:'
      end
      object Label3: TLabel
        Left = 14
        Top = 47
        Width = 87
        Height = 13
        Caption = '&Nome do Produto:'
      end
      object EdtPrecoUnitario: TEdit
        Left = 110
        Top = 96
        Width = 76
        Height = 21
        Alignment = taRightJustify
        CharCase = ecUpperCase
        MaxLength = 12
        TabOrder = 3
        Text = '0.00'
        OnKeyPress = EdtPrecoUnitarioKeyPress
      end
      object EdtCodProduto: TEdit
        Left = 110
        Top = 18
        Width = 76
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object EdtDescricao: TEdit
        Left = 110
        Top = 70
        Width = 331
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 2
      end
      object EdtNomeProduto: TEdit
        Left = 110
        Top = 44
        Width = 331
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 100
        TabOrder = 1
      end
    end
  end
  inherited PnlTopo: TPanel
    Width = 662
    ExplicitWidth = 662
    inherited BtnInserir: TSpeedButton
      Left = 7
      Width = 105
      OnClick = BtnInserirClick
      ExplicitLeft = 7
      ExplicitWidth = 105
    end
    inherited BtnAlterar: TSpeedButton
      Left = 114
      Width = 105
      OnClick = BtnAlterarClick
      ExplicitLeft = 114
      ExplicitWidth = 105
    end
    inherited BtnExcluir: TSpeedButton
      Left = 222
      Width = 105
      OnClick = BtnExcluirClick
      ExplicitLeft = 222
      ExplicitWidth = 105
    end
    inherited BtnGravar: TSpeedButton
      Left = 330
      Width = 105
      OnClick = BtnGravarClick
      ExplicitLeft = 330
      ExplicitWidth = 105
    end
    inherited BtnCancelar: TSpeedButton
      Left = 440
      Width = 105
      OnClick = BtnCancelarClick
      ExplicitLeft = 440
      ExplicitWidth = 105
    end
    inherited BtnSair: TSpeedButton
      Left = 548
      Width = 105
      OnClick = BtnSairClick
      ExplicitLeft = 548
      ExplicitWidth = 105
    end
  end
  inherited PnlGrid: TPanel
    Left = 0
    Top = 202
    Width = 662
    Height = 284
    Align = alClient
    ExplicitLeft = 0
    ExplicitTop = 202
    ExplicitWidth = 662
    ExplicitHeight = 284
    inherited GrbGrid: TGroupBox
      Left = 6
      Top = 6
      Width = 652
      Height = 267
      Anchors = [akLeft, akTop, akRight]
      ExplicitLeft = 6
      ExplicitTop = 6
      ExplicitWidth = 652
      ExplicitHeight = 267
      object LblTotRegistros: TLabel
        Left = 568
        Top = 214
        Width = 65
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Contador: 0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object PnlPesquisar: TPanel
        Left = 2
        Top = 228
        Width = 648
        Height = 37
        Align = alBottom
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          648
          37)
        object Label4: TLabel
          Left = 7
          Top = 11
          Width = 43
          Height = 11
          Caption = 'Filtrar por:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BtnPesquisar: TSpeedButton
          Left = 540
          Top = 3
          Width = 86
          Height = 27
          Anchors = [akTop, akRight]
          Caption = '&Pesquisar'
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFCCCCCCCCCCCCF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC497FAA4980ACB1BDC6CFCFCFCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC407F
            AF1EAAFF5AC8FF4593C7BB8825B67E0EB57B09B67E0DB88113BB8211B6831B90
            7E5B7A7A7C7B79787B79788F816B72A1C558C8FFBAF2FF4193CCB67E0EFFFFFF
            FFFFFFFFFFFFB47800F0EEF481848DB6B9BEE4E8ECE2E5EAE4E6EAB8B7B7827A
            76CFE3ED3290D4FFFFFFB47B09FFFFFFFFFFFFFFFFFFC99A3B928267B9BBBFE8
            DDCEEEC57DF6D789FCE49AECE7D8BBBABC9B9084FFFFFFFFFFFFB47A07FFFFFF
            FFFFFFFFFFFFFFFFFF7B7A7CF0F3F8E7B572F0CF92F6DC94FFEFA4FBE499F0F2
            F8818288FFFFFFFFFFFFB47A08FFFFFFFFFFFFFFFFFFE1CAB07F7F81F5F9FEEB
            C696F5E1BEF3DAA0F6DB94F4D587F5F9FF868587FFFFFFFFFFFFB47B08FFFFFF
            D5BB9DDAC3A8B65A0084888CFEFFFFE3B076FAF2E4F4E1BDEFCE91ECC37CFEFF
            FF8A898BFFFFFFFFFFFFB47B08FFFFFFFFFFF7FFFFFFB65E06A9A39BCED2D5F6
            E3CFE2B074E9C494E5B571F8EBD7CFD1D79C8A67FFFFFFFFFFFFB47B09FFFFFF
            D6B892DBC1A1B5600ACBA2748F9093D3D7DCFFFFFFFFFFFFFFFFFFD1D3D79293
            9CB7821AFFFFFFFFFFFFB47B08FFFFFFFFFBE4FFFFF2B5600BE2B580D7AC7A9F
            8A7491959B9194988F9195B5B1ABFFFFFFB87E09FFFFFFFFFFFFB57B08FFFFFF
            DDB382E1BB8EB95D04BD6108BE6106BD6106C06003C06001BB5B00E2BA8BFFFF
            FFB67C09FFFFFFFFFFFFB57C09FFFFFF44C4FF46C8FFE5BB8649CEFF4ACFFFE7
            BD894ACFFF4ACEFFE5BA8542C7FFFFFFFFB67C09FFFFFFFFFFFFB67E0EFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFB67E0EFFFFFFFFFFFFBD8C27B67E0EB67C09B67B08B57B08B67B08B67B08B5
            7B08B67B08B67B08B57B08B67C09B67E0EBD8C27FFFFFFFFFFFF}
          OnClick = BtnPesquisarClick
        end
        object EdtPesquisar: TEdit
          Left = 156
          Top = 6
          Width = 382
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          CharCase = ecUpperCase
          TabOrder = 1
        end
        object CbxFiltro: TComboBox
          Left = 55
          Top = 6
          Width = 97
          Height = 21
          TabOrder = 0
          Text = 'C'#243'digo'
          Items.Strings = (
            'Codigo'
            'Nome'
            'Descri'#231#227'o')
        end
      end
    end
  end
  object DBGridProdutos: TDBGrid
    Left = 15
    Top = 219
    Width = 639
    Height = 200
    DataSource = DmTabelas.DsProdutos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGridProdutosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'COD_PRODUTO'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_NOMEPRODUTO'
        Title.Caption = 'Nome do Produto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DES_DESCRICAO'
        Title.Caption = 'Descri'#231#227'o do Produto'
        Width = 225
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VAL_PRECO'
        Title.Alignment = taCenter
        Title.Caption = 'Valor Unit'#225'rio'
        Width = 75
        Visible = True
      end>
  end
end
