unit TelaCadastroLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TTelaCadastro = class(TForm)
    lbNameUser: TLabel;
    lb_SenhaCadastro: TLabel;
    edit_NomeUser: TEdit;
    edit_SenhaUser: TEdit;
    btn_CancelarCadastro: TButton;
    btn_SalvarCadastro: TButton;
    ADOConnection1: TADOConnection;
    QAux: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btn_SalvarCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastro: TTelaCadastro;

implementation

{$R *.dfm}

procedure TTelaCadastro.btn_SalvarCadastroClick(Sender: TObject);
begin
  //ADOConnection1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN="';
  //ADOConnection1.Connected := true;
  Qaux.SQL.Text := 'insert into login(usuario, senha) values(:usuario, :senha)';
  Qaux.Parameters.ParamByName('usuario').Value := edit_NomeUser.Text;
  Qaux.Parameters.ParamByName('senha').Value := edit_SenhaUser.Text;




  try
         Qaux.ExecSQL;
         ShowMessage('Dados Inseridos com Sucesso!');
  Except
          ShowMessage('Ocorreu algum erro!');

  end;


end;

procedure TTelaCadastro.FormShow(Sender: TObject);
begin
  var conexao : String;
  //SetLength(conexao,  400);
  //conexao := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN=""';

  ADOConnection1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN=""';
  ADOConnection1.Connected := true;
end;

end.
