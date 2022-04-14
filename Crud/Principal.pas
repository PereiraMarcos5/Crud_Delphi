unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids;

type
  TTelaPrincipal = class(TForm)
    conj_Pag: TPageControl;
    pg_Vendas: TTabSheet;
    pg_Produtos: TTabSheet;
    pg_Clientes: TTabSheet;
    lb_NomeCliente: TLabel;
    lb_IdadeCliente: TLabel;
    lb_Cpf: TLabel;
    lb_Cep: TLabel;
    lb_Endereco: TLabel;
    lb_Numero: TLabel;
    ed_NomeCliente: TEdit;
    edit_Idade: TEdit;
    medit_Cpf: TMaskEdit;
    medit_Cep: TMaskEdit;
    edit_Endereco: TEdit;
    edit_Numero: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    btn_Salvar: TButton;
    DBGrid1: TDBGrid;
    ADOQuery2: TADOQuery;
    DataSource1: TDataSource;
    TPanel1: TPanel;
    btn_Apagar: TButton;
    Label1: TLabel;
    edit_Cidade: TEdit;
    Label2: TLabel;
    cb_Estado: TComboBox;
    DBGrid2: TDBGrid;
    ADOQueryProdIns: TADOQuery;
    ADOQueryProdSel: TADOQuery;
    DataSource2: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edit_NomeProd: TEdit;
    cb_Un: TComboBox;
    edit_Quant: TEdit;
    edit_Preço: TEdit;
    edit_Descricao: TEdit;
    btn_SalvarProd: TButton;
    btn_ApagarProd: TButton;
    procedure btn_SalvarClick(Sender: TObject);
    procedure edit_NumeroKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SalvarProdClick(Sender: TObject);
    procedure btn_ApagarProdClick(Sender: TObject);
//    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrincipal: TTelaPrincipal;

implementation

{$R *.dfm}

uses TelaLogin;



procedure TTelaPrincipal.btn_ApagarClick(Sender: TObject);
   begin
     DBGrid1.DataSource.DataSet.Delete;
           showmessage('Excluido com sucesso');
   end;

procedure TTelaPrincipal.btn_ApagarProdClick(Sender: TObject);
begin
        begin
     DBGrid2.DataSource.DataSet.Delete;
           showmessage('Excluido com sucesso');
   end;
end;

procedure TTelaPrincipal.btn_SalvarClick(Sender: TObject);


begin
  var funcionou := false;
  ADOQuery1.Close;
  ADOQuery1.SQL.Text := 'INSERT INTO cliente(nome_Cliente, cpf, cep, endereço, numero, idade, cidade, estado) VALUES(:nome_Cliente, :cpf, :cep, :endereço, :numero, :idade, :cidade, :estado)';
  ADOQuery1.Parameters.ParamByName('nome_Cliente').Value := ed_NomeCliente.Text;
  ADOQuery1.Parameters.ParamByName('cpf').Value := medit_Cpf.Text;
  ADOQuery1.Parameters.ParamByName('cep').Value := medit_Cep.Text;
  ADOQuery1.Parameters.ParamByName('endereço').Value := edit_Endereco.Text;
  ADOQuery1.Parameters.ParamByName('numero').Value := edit_Numero.Text;
  ADOQuery1.Parameters.ParamByName('idade').Value := edit_Idade.Text;
  ADOQuery1.Parameters.ParamByName('cidade').Value := edit_Cidade.Text;
  ADOQuery1.Parameters.ParamByName('estado').Value := cb_Estado.Text;



  try
         ADOQuery1.ExecSQL;
         ShowMessage('Cliente cadastrado com Sucesso!');



  Except
          ShowMessage('Ocorreu algum erro!');
  end;


 // if funcionou = true then
 // begin
    //ADOQuery2.Refresh;
   //DataSource1.DataSet.Refresh;
 //end;


end;



procedure TTelaPrincipal.btn_SalvarProdClick(Sender: TObject);
begin

  ADOQueryProdIns.Close;
  ADOQueryProdIns.SQL.Text := 'INSERT INTO produtos(nome_Prod, unidade, quantidade, preco, descricao) VALUES(:nome_Prod, :unidade, :quantidade, :preco, :descricao)';
  ADOQueryProdIns.Parameters.ParamByName('nome_Prod').Value := edit_NomeProd.Text;
  ADOQueryProdIns.Parameters.ParamByName('unidade').Value := cb_Un.Text;
  ADOQueryProdIns.Parameters.ParamByName('quantidade').Value := edit_Quant.Text;
  ADOQueryProdIns.Parameters.ParamByName('preco').Value := edit_Preço.Text;
  ADOQueryProdIns.Parameters.ParamByName('descricao').Value := edit_Descricao.Text;

    try
         ADOQueryProdIns.ExecSQL;
         ShowMessage('Produto cadastrado com Sucesso!');


  Except
          ShowMessage('Ocorreu algum erro!');
  end;
end;

procedure TTelaPrincipal.edit_NumeroKeyPress(Sender: TObject; var Key: Char);
begin
if ((key in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 key := #0;
end;

procedure TTelaPrincipal.FormShow(Sender: TObject);
begin
    //  ADOConnection1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN="";';
    //  ADOConnection1.Connected := true;

end;

end.
