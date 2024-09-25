unit UMenuRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmMenuRelatorios = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    RdgRelatorios: TRadioGroup;
    GrbDatas: TGroupBox;
    Label1: TLabel;
    EdtDataInicio: TEdit;
    EdtDataFim: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    BtnImprimir: TSpeedButton;
    BtnSair: TSpeedButton;
    procedure BtnImprimirClick(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure RdgRelatoriosClick(Sender: TObject);
    procedure EdtDataInicioChange(Sender: TObject);
    procedure EdtDataFimChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuRelatorios: TFrmMenuRelatorios;

implementation

{$R *.dfm}

uses UMain, UDMConexao, UDmTabelas, untFormat, Biblioteca, URelatorios;

procedure TFrmMenuRelatorios.BtnImprimirClick(Sender: TObject);
begin
  if RdgRelatorios.ItemIndex = 0 then
    FrmRelatorios.FrxRelProdutos.ShowReport();

  if RdgRelatorios.ItemIndex = 1 then
    FrmRelatorios.FrxRelVendas.ShowReport();


end;

procedure TFrmMenuRelatorios.BtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmMenuRelatorios.EdtDataInicioChange(Sender: TObject);
begin
  Formatar(EdtDataInicio, TFormato.Dt, '')
end;

procedure TFrmMenuRelatorios.EdtDataFimChange(Sender: TObject);
begin
  Formatar(EdtDataFim, TFormato.Dt, '')
end;

procedure TFrmMenuRelatorios.RdgRelatoriosClick(Sender: TObject);
begin
  if RdgRelatorios.ItemIndex = 0 then
    GrbDatas.Enabled := False
  else
  if RdgRelatorios.ItemIndex = 1 then
  begin
    GrbDatas.Enabled := True;
    EdtDataInicio.SetFocus;
  end;

end;

end.
