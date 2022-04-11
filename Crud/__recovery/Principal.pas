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
    procedure btn_SalvarClick(Sender: TObject);
    procedure edit_NumeroKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrincipal: TTelaPrincipal;

implementation

{$R *.dfm}



procedure TTelaPrincipal.btn_ApagarClick(Sender: TObject);
var id_Cliente : integer;
begin
    id_Cliente := StrToInt( InputBox('id_Cliente','Selecione: ', '4'));

 with AdoQuery2 do
 begin
   if ADOQuery2.Locate('id_Cliente', id_Cliente, []) = true then
   begin
           ADOQuery2.Delete;
           showmessage('Excluido com sucesso');
   end

   else
   begin
           showmessage('Excluido com sucesso');
   end;

 end;
end;

procedure TTelaPrincipal.btn_SalvarClick(Sender: TObject);
begin
  ADOQuery1.SQL.Text := 'INSERT INTO cliente(nome_Cliente, cpf, cep, endereço, numero, idade) VALUES(:nome_Cliente, :cpf, :cep, :endereço, :numero, :idade)';
  ADOQuery1.Parameters.ParamByName('nome_Cliente').Value := ed_NomeCliente.Text;
  ADOQuery1.Parameters.ParamByName('cpf').Value := medit_Cpf.Text;
  ADOQuery1.Parameters.ParamByName('cep').Value := medit_Cep.Text;
  ADOQuery1.Parameters.ParamByName('endereço').Value := edit_Endereco.Text;
  ADOQuery1.Parameters.ParamByName('numero').Value := edit_Numero.Text;
  ADOQuery1.Parameters.ParamByName('idade').Value := edit_Idade.Text;



  try
         ADOQuery1.ExecSQL;
         ShowMessage('Cliente cadastrado com Sucesso!');
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
      ADOConnection1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN="";';
      ADOConnection1.Connected := true;

end;

end.
