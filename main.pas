unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Vcl.Imaging.pngimage, Vcl.ExtCtrls, data.dbxjson,FuncPublicas,Usuario,ApiRequestResponse;

type
  T_FrmMain = class(TForm)
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    LblUsuario: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    GridValores: TStringGrid;
    Panel4: TPanel;
    LblMes: TLabel;
    LblLocal: TLabel;
    LblSaldo: TLabel;
    CboAno: TComboBox;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    function  ObterMesExtenso(mes:integer):string;
    procedure Image7Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure PreencherComboAno();
    procedure CboAnoSelect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FrmMain         :T_FrmMain;
  Glb_Logado       :string='N';
  Glb_mes          :integer;
  Glb_ano          :integer;
  Glb_total        :currency=0.00;
  ListaValores     :TList;
  UsuarioDados     :TUsuarioDados;
  MovDados         :TMovDados;
  ApiREST          :TApiREST;

implementation

{$R *.dfm}
uses
FrmLogin,Lancamentos,FrmValores;

procedure T_FrmMain.PreencherComboAno();
var
anoatual:integer;
i:integer;
begin

    CboAno.Items.Clear;
    anoatual:= StrToInt(formatdatetime('yyyy',now));
    for i := -2 to 5 do
      begin
          CboAno.Items.Add((anoatual+i).ToString());
      end;

end;

function T_FrmMain.ObterMesExtenso(mes:integer):string;
var
MesEx     :Array[0..11] of string;
indexArray:integer;
begin
   MesEx[0]   :=#13'JANEIRO';
   MesEx[1]   :=#13'FEVEREIRO';
   MesEx[2]   :=#13'MAR?O';
   MesEx[3]   :=#13'ABRIL';
   MesEx[4]   :=#13'MAIO';
   MesEx[5]   :=#13'JUNHO';
   MesEx[6]   :=#13'JULHO';
   MesEx[7]   :=#13'AGOSTO';
   MesEx[8]   :=#13'SETEMBRO';
   MesEx[9]   :=#13'OUTUBRO';
   MesEx[10]  :=#13'NOVEMBRO';
   MesEx[11]  :=#13'DEZEMBRO';
   indexArray := mes-1;

result:=MesEx[indexArray];
end;

procedure T_FrmMain.CboAnoSelect(Sender: TObject);
begin
  Glb_ano := StrToInt(CboAno.Text);
  MovDados.MesAtual      :=Glb_mes;
  MovDados.AnoAtual      :=Glb_ano;
  MovDados.GerarGrid;
end;

procedure T_FrmMain.FormShow(Sender: TObject);
begin

   ApiREST               := TApiREST.Create('https://localhost:7173/');
   UsuarioDados          := TUsuarioDados.Create();
  _FrmLogin              := T_FrmLogin.Create(Self);
  _FrmLogin.ShowModal();
  _FrmLogin.Release;
   UsuarioDados.TokenJWT  := ApiREST.TokenJWT;

  if(Glb_Logado='N')then
  Application.Terminate;
  PreencherComboAno;
  Glb_ano := StrToInt(CboAno.Text);

  UsuarioDados.DefinirDadosUsuario(ApiREST.JsonStringUsuario);
  Glb_mes                      := StrToInt(formatdatetime('mm',now));
  LblMes.Caption               := ObterMesExtenso(Glb_mes);
  LblUsuario.Caption           := 'Ol?, '+UsuarioDados.Conta+' !';
  LblLocal.Caption             := UsuarioDados.Cidade+', '+UsuarioDados.Uf+', '+UsuarioDados.Pais+'.';
  MovDados                     := TMovDados.Create();
  MovDados.MesAtual            := Glb_mes;
  MovDados.AnoAtual            := Glb_ano;
  MovDados.GerarGrid;
  MovDados.GridDados.Parent    := GridValores;
  LblSaldo.Caption             := 'Total dos Gatos R$: '+FormatCurr('##0.00',MovDados.Total);

end;
procedure T_FrmMain.Image2Click(Sender: TObject);
begin
  if(Application.MessageBox('Deseja Sair?','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then   exit;
  application.Terminate;
end;

procedure T_FrmMain.Image4Click(Sender: TObject);
begin

  if(Application.MessageBox('Excluir Registro','Pergunta',MB_ICONQUESTION+MB_YESNO)=ID_NO)then   exit;

      if(ApiREST.Delete( MovDados.GridDados.Cells[0,MovDados.GridDados.Row] )=true)then
      begin
        MovDados.MesAtual      :=Glb_mes;
        MovDados.AnoAtual      :=Glb_ano;
        MovDados.GerarGrid;
        LblSaldo.Caption :='Total dos Gatos R$: '+FormatCurr('##0.00',MovDados.Total);
      end;

end;

procedure T_FrmMain.Image5Click(Sender: TObject);
begin
    _FrmValores:=T_FrmValores.Create(self);
    _FrmValores.ShowModal();
    MovDados.MesAtual      :=Glb_mes;
    MovDados.AnoAtual      :=Glb_ano;
    MovDados.GerarGrid;
    LblSaldo.Caption :='Total dos Gatos R$: '+FormatCurr('##0.00',MovDados.Total);
   _FrmValores.Release;
end;

procedure T_FrmMain.Image6Click(Sender: TObject);
begin
  if Glb_mes < 12 then
  begin
       Glb_mes                := Glb_mes + 1;
       LblMes.Caption         :=ObterMesExtenso(Glb_mes);
       MovDados.MesAtual      :=Glb_mes;
       MovDados.AnoAtual      :=Glb_ano;
       MovDados.GerarGrid;
       LblSaldo.Caption       :='Total dos Gatos R$: '+FormatCurr('##0.00',MovDados.Total);

  end;
end;

procedure T_FrmMain.Image7Click(Sender: TObject);
begin

  if Glb_mes > 1 then
  begin
       Glb_mes                := Glb_mes-1;
       LblMes.Caption         :=ObterMesExtenso(Glb_mes);
       MovDados.MesAtual      :=Glb_mes;
       MovDados.AnoAtual      :=Glb_ano;
       MovDados.GerarGrid;
       LblSaldo.Caption       :='Total dos Gatos R$: '+FormatCurr('##0.00',MovDados.Total);

  end;

end;


end.
