unit FrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,IdURI, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  T_FrmLogin = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TxtEmail: TEdit;
    Panel3: TPanel;
    TxtSenha: TEdit;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image4: TImage;
    Label1: TLabel;
    Image5: TImage;
    Image6: TImage;
    Label5: TLabel;
    Label6: TLabel;
    lblErrorLogin: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure TxtEmailEnter(Sender: TObject);
    procedure TxtSenhaEnter(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FrmLogin: T_FrmLogin;

implementation

{$R *.dfm}
uses
main,ApiRequestResponse,FrmCadUsuario;

procedure T_FrmLogin.Image4Click(Sender: TObject);
begin

   lblErrorLogin.Visible:=false;
   if(ApiREST.PostLogin(TxtEmail.Text, TxtSenha.Text)=false)then
   begin
      lblErrorLogin.Visible:=true;
      Glb_Logado:='N';
      exit
   end
   else
   begin
     Glb_Logado:='S';
     modalresult:=-1;
   end;

end;

procedure T_FrmLogin.Image5Click(Sender: TObject);
begin
_FrmNovoUsuario:=T_FrmNovoUsuario.Create(Self);
_FrmNovoUsuario.ShowModal;
_FrmNovoUsuario.release;

end;

procedure T_FrmLogin.Label2Click(Sender: TObject);
begin
modalresult:=-1;
end;

procedure T_FrmLogin.TxtEmailEnter(Sender: TObject);
begin

 if(TxtEmail.Text='Email')then
 TxtEmail.Text:='';

end;

procedure T_FrmLogin.TxtSenhaEnter(Sender: TObject);
begin

 if(TxtSenha.Text='senha')then
 TxtSenha.Text:='';


end;

end.
