unit TelaLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB ,Data.Win.ADODB, TelaCadastroLogin,
  Data.FMTBcd, Data.SqlExpr, Datasnap.DBClient, Principal , Datasnap.Provider;

type
  TLogin = class(TForm)
    lbNomeUsuario: TLabel;
    lb_Senha: TLabel;
    edit_Nome: TEdit;
    edit_Senha: TEdit;
    btn_Entrar: TButton;
    btn_Cadastro: TButton;
    Qaux: TADOQuery;
    ADOConnection1: TADOConnection;
    procedure FormShow(Sender: TObject);
    procedure btn_CadastroClick(Sender: TObject);
    procedure btn_EntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}

procedure TLogin.btn_CadastroClick(Sender: TObject);
begin
//          TelaCadastro := TelaCadastro.Create(Application);
          TelaCadastro.ShowModal;
end;



procedure TLogin.btn_EntrarClick(Sender: TObject);
begin
      Qaux.Close;
      Qaux.SQL.Clear;
      Qaux.SQL.Add('SELECT * from login WHERE USUARIO = :Pus AND SENHA = :Pse');
      Qaux.Parameters[0].Value := edit_Nome.Text;
      Qaux.Parameters[1].Value := edit_Senha.Text;
      Qaux.Open;


      if Qaux.IsEmpty then
      begin
          ShowMessage('Usuario ou Senha Invalidos')

      end
      else
      begin

             TelaPrincipal.ShowModal;

      end;

end;


procedure TLogin.FormShow(Sender: TObject);
begin

  ADOConnection1.ConnectionString := 'Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=projCrud;Data Source=MARCOS-PC\SQLEXPRESS;Initial File Name="";Server SPN=""';
  ADOConnection1.Connected := true;


end;

end.
