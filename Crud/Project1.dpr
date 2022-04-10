program Project1;

uses
  Vcl.Forms,
  TelaLogin in 'TelaLogin.pas' {Login},
  TelaCadastroLogin in 'TelaCadastroLogin.pas' {TelaCadastro},
  Principal in 'Principal.pas' {TelaPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TTelaCadastro, TelaCadastro);
  Application.CreateForm(TTelaPrincipal, TelaPrincipal);
  Application.Run;
end.
