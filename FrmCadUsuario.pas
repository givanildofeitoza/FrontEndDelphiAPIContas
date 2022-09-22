unit FrmCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,main,Usuario,ApiRequestResponse;

type
  T_FrmNovoUsuario = class(TForm)
    Panel1: TPanel;
    TxtFone: TEdit;
    Label4: TLabel;
    TxtPais: TEdit;
    Label6: TLabel;
    TxtUf: TEdit;
    Label5: TLabel;
    TxtCidade: TEdit;
    Label7: TLabel;
    TxtSobrenome: TEdit;
    Label1: TLabel;
    TxtNome: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    TxtEmail: TEdit;
    Panel3: TPanel;
    Image2: TImage;
    TxtSenha: TEdit;
    Label8: TLabel;
    Image6: TImage;
    Panel4: TPanel;
    Image3: TImage;
    TxtConSenha: TEdit;
    Image4: TImage;
    Label3: TLabel;
    TxtEndereco: TEdit;
    Label9: TLabel;
    procedure Image4Click(Sender: TObject);
    procedure TxtEmailEnter(Sender: TObject);
    procedure TxtSenhaEnter(Sender: TObject);
    procedure TxtConSenhaEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Label9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FrmNovoUsuario: T_FrmNovoUsuario;

implementation

{$R *.dfm}

procedure T_FrmNovoUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if(key = #13)then
    Perform(WM_NEXTDLGCTL,0,0);

end;

procedure T_FrmNovoUsuario.Image4Click(Sender: TObject);
var
UsuarioDados:TUsuarioDados;
begin

  if TxtEmail.Text = string.Empty then
  exit;

  if TxtNome.Text = string.Empty then
  exit;

  if TxtSobrenome.Text = string.Empty then
  exit;

  if TxtSenha.Text = string.Empty then
  exit;

  if TxtConSenha.Text = string.Empty then
  exit;

  if TxtConSenha.Text <> TxtSenha.Text then
  exit;

  UsuarioDados          := TUsuarioDados.Create;
  UsuarioDados.Nome     := TxtNome.Text;
  UsuarioDados.Conta    := TxtNome.Text+' '+TxtSobrenome.Text;
  UsuarioDados.Email    := TxtEmail.Text;
  UsuarioDados.Cidade   := TxtCidade.Text;
  UsuarioDados.Uf       := TxtUf.Text;
  UsuarioDados.Pais     := TxtPais.Text;
  UsuarioDados.Endereco := TxtEndereco.Text;
  UsuarioDados.Senha    := TxtSenha.Text;

   try
   begin
    ApiREST.PostRegister(UsuarioDados);
    ModalResult:=-1;
   end;
   except

   end;


end;

procedure T_FrmNovoUsuario.Label9Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_FrmNovoUsuario.TxtConSenhaEnter(Sender: TObject);
begin
 if(TxtConSenha.Text='SENHA')then
 TxtConSenha.Text:='';
end;

procedure T_FrmNovoUsuario.TxtEmailEnter(Sender: TObject);
begin
 if(TxtEmail.Text='E-mail')then
 TxtEmail.Text:='';
end;

procedure T_FrmNovoUsuario.TxtSenhaEnter(Sender: TObject);
begin
 if(TxtSenha.Text='SENHA')then
 TxtSenha.Text:='';
end;

end.
