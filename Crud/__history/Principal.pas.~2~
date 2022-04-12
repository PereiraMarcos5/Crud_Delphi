unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.FMTBcd, Data.DB, Data.SqlExpr, Data.Win.ADODB;

type
  TTelaPrincipal = class(TForm)
    conj_Pag: TPageControl;
    pg_Vendas: TTabSheet;
    pg_Produtos: TTabSheet;
    pg_Clientes: TTabSheet;
    Panel1: TPanel;
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
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrincipal: TTelaPrincipal;

implementation

{$R *.dfm}



procedure TTelaPrincipal.Button1Click(Sender: TObject);
begin
  ADOQuery1.SQL.Text := 'INSERT INTO cliente(nome_Cliente, cpf, cep, endereço, numero, idade) VALUES(:nome_Cliente, :cpf, :cep, :endereço, :numero, :idade);)';
  ADOQuery1.Parameters.ParamByName('nome_Cliente').Value := ed_NomeCliente.Text;
  ADOQuery1.Parameters.ParamByName('cpf').Value := medit_Cpf.Text;
  ADOQuery1.Parameters.ParamByName('cep').Value := medit_Cep.Text;
  ADOQuery1.Parameters.ParamByName('endereço').Value := edit_Endereco.Text;
  ADOQuery1.Parameters.ParamByName('numero').Value := edit_Numero.Text;
  ADOQuery1.Parameters.ParamByName('idade').Value := edit_Idade.Text;

  try
         Qaux.ExecSQL;
         ShowMessage('Cliente cadastrado com Sucesso!');
  Except
          ShowMessage('Ocorreu algum erro!');

  end;
end;

end.
