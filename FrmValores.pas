unit FrmValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, RxToolEdit, Vcl.Mask, RxCurrEdit,data.dbxjson;

type
  T_FrmValores = class(TForm)
    TxtDesc: TEdit;
    CboCategoria: TComboBox;
    TxtValor: TCurrencyEdit;
    TxtData: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel3: TPanel;
    Image5: TImage;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  _FrmValores: T_FrmValores;

implementation

{$R *.dfm}
uses
main,ApiRequestResponse,FuncPublicas;

procedure T_FrmValores.BitBtn1Click(Sender: TObject);
var
JsonText:string;
begin

 if(TxtDesc.Text = String.Empty)then exit;

 if(TxtData.Text = '  /  /    ')then exit;

 if(TxtValor.value = 0)then exit;

       JsonText:=  '{ '+
                      '"Date":"'+formatdatetime('yyyy-MM-dd',TxtData.Date)+'",'+
                      '"Type":"debito",'+
                      '"Describle":"'+TxtDesc.Text+'",'+
                      '"Category":"'+CboCategoria.Text+'",'+
                      '"Value":'+formatcurr('##0.00',TxtValor.value)+','+
                      '"State":0,'+
                      '"Check":0,'+
                      '"IdCustomer":'+UsuarioDados.Id+','+
                      '"NameCustomer":""' +
                    '}';

        if  ApiREST.PostNewValue(JsonText)=false then
            Application.MessageBox('N�o foi poss�vel incluir!','Erro',MB_ICONEXCLAMATION+MB_OK)
            else
            begin

              MovDados.MesAtual:=Glb_mes;
              MovDados.AnoAtual:=Glb_ano;
              MovDados.GerarGrid;

              ModalResult:=-1;
            end;


end;

end.
