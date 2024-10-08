unit VendaItensController;

interface

uses
  System.SysUtils;

Type
  TVendaItens = class
  private
    FCod_Venda: Integer;
    FCod_Produto: Integer;
    FDes_Descricao: string;
    FVal_Preco_Unitario: Double;
    FVal_Quantidade: Integer;
    FVal_Total_Venda: Double;
    procedure SetCod_Produto(const Value: Integer);

  public
    procedure Carregar(VendaItens: TVendaItens; iCodigo: Integer);
    procedure Pesquisar(VendaItens: TVendaItens; iCodigo: Integer);
    function Inserir(VendaItens: TVendaItens; out sErro: String): Boolean;
    function Alterar(VendaItens: TVendaItens; iCodigo: Integer; out sErro: String): Boolean;
    function Excluir(iCodigo: Integer; out sErro : String): Boolean;

    property Cod_Venda: Integer read FCod_Venda write FCod_Venda;
    property Cod_Produto: Integer read FCod_Produto write SetCod_Produto;
    property Des_Descricao: string read FDes_Descricao write FDes_Descricao;
    property Val_Preco_Unitario: Double read FVal_Preco_Unitario write FVal_Preco_Unitario;
    property Val_Quantidade: Integer read FVal_Quantidade write FVal_Quantidade;
    property Val_Total_Venda: Double read FVal_Total_Venda write FVal_Total_Venda;

  end;

implementation

uses UDmTabelas, UDmConexao, UCadVenda, Data.SqlExpr;

{ TVendaItens }

procedure TVendaItens.Carregar(VendaItens: TVendaItens; iCodigo: Integer);
begin
  with DmTabelas.QryPesquisarItens, VendaItens do
  begin
    Close;
    SQL.Clear;
    SQLConnection := DMConexao.SQLConnection;
    SQL.Clear;
    SQL.Add('select id_venda, ');
    SQL.Add('cod_venda, ');
    SQL.Add('cod_produto,');
    SQL.Add('des_descricao,');
    SQL.Add('val_preco_unitario, ');
    SQL.Add('val_quantidade, ');
    SQL.Add('val_total_venda');
    SQL.Add('from tab_venda_item');
    SQL.Add('where cod_venda = :cod_venda');
    ParamByName('COD_VENDA').AsInteger := iCodigo;
    Open;
  end;
end;

procedure TVendaItens.Pesquisar(VendaItens: TVendaItens; iCodigo: Integer);
begin
  with DmTabelas.TblVendasProdutos do
  begin
    Close;
    Active := False;
    SQL.Clear;
    SQL.Add('select vdi.id_venda, ');
    SQL.Add('vdi.cod_venda, ');
    SQL.Add('vdi.cod_produto, ');
    SQL.Add('vdi.des_descricao, ');
    SQL.Add('vdi.val_quantidade, ');
    SQL.Add('vdi.val_preco_unitario, ');
    SQL.Add('vdi.val_total_venda ');
    SQL.Add('from tab_venda_item vdi');
    SQL.Add('where vdi.cod_venda = :codvenda');
    SQL.Add('order by id_venda');
    ParamByName('codvenda').AsInteger := iCodigo;
    Open();
    Active := True;
  end;
end;

function TVendaItens.Inserir(VendaItens: TVendaItens; out sErro: String): Boolean;
begin
  with DmTabelas.QryInserir, VendaItens do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into tab_venda_item(');
    SQL.Add('cod_venda, ');
    SQL.Add('cod_produto, ');
    SQL.Add('des_descricao, ');
    SQL.Add('val_preco_unitario, ');
    SQL.Add('val_quantidade, ');
    SQL.Add('val_total_venda) ');
    SQL.Add('values (:cod_venda, ');
    SQL.Add(':cod_produto, ');
    SQL.Add(':des_descricao, ');
    SQL.Add(':val_preco_unitario, ');
    SQL.Add(':val_quantidade, ');
    SQL.Add(':val_total_venda) ');

    ParamByName('COD_VENDA').AsInteger := Cod_Venda;
    ParamByName('COD_PRODUTO').AsInteger := Cod_Produto;
    ParamByName('DES_DESCRICAO').AsString := Des_Descricao;
    ParamByName('VAL_QUANTIDADE').AsInteger := Val_Quantidade;
    ParamByName('VAL_PRECO_UNITARIO').AsFloat := Val_Preco_Unitario;
    ParamByName('VAL_TOTAL_VENDA').AsFloat := Val_Total_Venda;

    try
      Prepared := True;
      ExecSQL;
      Result := True;
    except
      on E: Exception do
      begin
        Result := False;
        sErro := 'Ocorreu um erro ao inserir um novo item da venda!' + sLineBreak + E.Message;
        raise;
      end;
    end;
  end;
end;

function TVendaItens.Alterar(VendaItens: TVendaItens; iCodigo: Integer; out sErro: String): Boolean;
begin
  with DmTabelas.QryAlterar, VendaItens do
  begin
    Result := False;
    Close;
    SQL.Clear;
    SQL.Add('update tab_venda_itens set ');
    Sql.Add('cod_produto = :cod_produto, ');
    SQL.Add('des_descricao = :des_descricao, ');
    SQL.Add('val_preco_unitario = :val_preco_unitario, ');
    SQL.Add('val_quantidade = :val_quantidade, ');
    SQL.Add('val_total_venda = :val_total_venda ');
    SQL.Add('where id_venda = :id_venda');

    ParamByName('COD_PRODUTO').AsInteger := Cod_Produto;
    ParamByName('DES_DESCRICAO').AsString := Des_Descricao;
    ParamByName('VAL_PRECO_UNITARIO').AsFloat := Val_Preco_Unitario;
    ParamByName('VAL_QUANTIDADE').AsInteger := Val_Quantidade;
    ParamByName('VAL_TOTAL_VENDA').AsFloat := Val_Total_Venda;
    ParamByName('ID_VENDA').AsInteger := iCodigo;

    try
      Prepared := True;
      ExecSQL();
    except on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao alterar o item da venda!' + sLineBreak + E.Message;
        Result := False;
        raise;
      end;
    end;
    Result:= True;
  end;
end;

function TVendaItens.Excluir(iCodigo: Integer; out sErro: String): Boolean;
begin
  with DmTabelas.QryExcluir do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'delete from tab_venda_item where cod_venda = :cod_venda';
    ParamByName('cod_venda').AsInteger := iCodigo;

    try
      Prepared := True;
      ExecSQL();
      Result := True;
    except on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir o item da venda !' + sLineBreak + E.Message;
        Result := False;
        raise;
      end;
    end;
  end;
end;

procedure TVendaItens.SetCod_Produto(const Value: Integer);
begin
  if Value = 0 then
    raise EArgumentException.Create('O campo ''C�digo do Produto'' precisa ser preenchido !');

  FCod_Produto := Value;
end;

end.
