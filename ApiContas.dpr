program ApiContas;

uses
  Vcl.Forms,
  main in 'main.pas' {_FrmMain},
  FrmLogin in 'FrmLogin.pas' {_FrmLogin},
  ApiRequestResponse in 'ApiRequestResponse.pas',
  Lancamentos in 'Lancamentos.pas',
  FrmValores in 'FrmValores.pas' {_FrmValores},
  FuncPublicas in 'FuncPublicas.pas',
  Usuario in 'Usuario.pas',
  FrmCadUsuario in 'FrmCadUsuario.pas' {_FrmNovoUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(T_FrmMain, _FrmMain);
  Application.CreateForm(T_FrmLogin, _FrmLogin);
  Application.CreateForm(T_FrmValores, _FrmValores);
  Application.CreateForm(T_FrmNovoUsuario, _FrmNovoUsuario);
  Application.Run;
end.
