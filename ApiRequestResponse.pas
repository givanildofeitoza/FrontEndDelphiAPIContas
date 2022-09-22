unit ApiRequestResponse;

interface

uses
IdHTTP,IdURI,System.Classes,System.SysUtils,data.dbxjson,IdServerIOHandler,IdSSL, IdSSLOpenSSL,Usuario,clipbrd;


Type TApiREST = class
private
  FIdHTTP1           : TIdHTTP;
  FLHandler          : TIdSSLIOHandlerSocketOpenSSL;
  FAudience          : String;
  FEmail             : string;
  FTokenJWT          : string;
  FJsonStringUsuario : string;
public

  property Email            :string read FEmail    write FEmail;
  property TokenJWT         :string read FTokenJWT write FTokenJWT;
  property JsonStringUsuario:string read FJsonStringUsuario write FJsonStringUsuario;


  constructor Create(pAudience:string);
  Function LerTokenJWTJson(jsonStringData : String):string;
  Function PostLogin(Email:String; Senha:string):boolean;
  Function PostRegister(usuario:TUsuarioDados):boolean;
  Function GetByID(Parametro:string):string;
  Function GetAll(Id_Usuario:string):string;
  Function PostNewValue(ParJson:String):boolean;
  Function Put(ParJson:string):boolean;
  Function Delete(Parametro:string):boolean;
  function IdHTTP(autenticar:boolean):TIdHTTP;



end;


implementation

constructor TApiREST.Create(pAudience:string);
begin
  inherited create;
  FAudience:= pAudience;

end;
function TApiREST.IdHTTP(autenticar:boolean):TIdHTTP;
begin

   FIdHTTP1                     := TIdHTTP.Create();
   FIdHTTP1.Request.Accept      := '*/*';
   FIdHTTP1.Request.ContentType := 'application/json';
   if(autenticar=true)then
   FIdHTTP1.Request.CustomHeaders.Add('Authorization:Bearer ' + TokenJWT);

   //Para uso de HTTPs
   FLHandler           := TIdSSLIOHandlerSocketOpenSSL.create(nil);
   FIdHTTP1.IOHandler  :=FLHandler;

 Result:= FIdHTTP1;

end;


Function TApiREST.LerTokenJWTJson(jsonStringData : String):string;
var
   LJSONObject    : TJSONArray;
   LJsonValue     : TJSONValue;
   LItem          : TJSONValue;
   TokenJWT       : String;
   UsuarioDados   : TUsuarioDados;
begin

       FJsonStringUsuario := jsonStringData;
       LJSONObject := nil;
       LJSONObject := TJSONObject.ParseJSONValue('['+jsonStringData+']') as TJSONarray;

         for LJsonValue in LJSONObject do
         begin
              for LItem in TJSONArray(LJsonValue) do
              begin
                  if(TJSONPair(LItem).JsonString.Value ='tokenJWT')then
                  TokenJWT:= TJSONPair(LItem).JsonValue.Value;

                   if(TJSONPair(LItem).JsonString.Value ='email')then
                   Email:= TJSONPair(LItem).JsonValue.Value;
              end;
         end;

        Result:= TokenJWT;

end;

Function TApiREST.PostLogin(Email:String; Senha:string):boolean;
var
param    :TStringStream;
response :boolean;
begin
   param:=TStringStream.Create(UTF8Encode('{ "email":"'+Email+'","password":"'+Senha+'","TokenJWT":"","StatusRegistro":"" }'));

     try
       begin
        TokenJWT  :=LerTokenJWTJson(IdHTTP(false).Post(TIdURI.URLEncode(FAudience+'Security/v1/Login'),param));
        Response :=true;
       end;
       except on e:Exception do
       begin
         TokenJWT :='';
         Response:=False;
       end;
     end;

     Result:=Response;

end;

Function TApiREST.PostRegister(usuario:TUsuarioDados):boolean;
var
Param    :TStringStream;
response :boolean;
ParJson:string;
begin


 ParJson:=  '{'+
                '"name":"'+usuario.Nome+'",'+
                '"password":"'+usuario.Senha+'",'+
                '"confirmPassword":"'+usuario.Senha+'",'+
                '"email":"'+usuario.Email+'",'+
                '"account":"'+usuario.Conta+'",'+
                '"phone":"'+usuario.Telefone+'",'+
                '"adderss":"'+usuario.Endereco+'",'+
                '"city":"'+usuario.Cidade+'",'+
                '"loadImage": "",'+
                '"image": "",'+
                '"uf":"'+usuario.Uf+'",'+
                '"country":"'+usuario.Pais+'",'+
                '"statusRegistro":"",'+
                '"tokenJWT":""'+
           ' } ';


    Param:=  TStringStream.Create(UTF8Encode(ParJson));
     try
     begin
      IdHTTP(false).Post(TIdURI.URLEncode(FAudience+'Security/v1/Register-NewUser'),Param);
      response:=true;
     end;
     except on e:Exception do
         Response:=false;
     end;

     Result:=Response;

end;

Function TApiREST.GetByID(Parametro:string):string;
var
param    :TStringStream;
Response :string;
begin

     try
      Response := IdHTTP(true).Get(TIdURI.URLEncode(FAudience+'api/v1/Get-Value-id/'+Parametro));
     except on e:Exception do
         Response:='N�o foi poss�vel Obter Dados!';
     end;

       Result:=Response;
end;

Function TApiREST.GetAll(Id_Usuario:string):string;
var
param    :TStringStream;
Audience :string;
Response :string;
begin

    try
      Response := IdHTTP(true).Get(TIdURI.URLEncode(FAudience+'api/v1/Get-ValuesAll/'+Id_Usuario));
     except on e:Exception do
         Response:='N�o foi poss�vel Obter Dados!';
     end;

     Result:=Response;

end;

Function TApiREST.PostNewValue(ParJson:string):boolean;
var
Param    :TStringStream;
response :boolean;
begin


     Param:=  TStringStream.Create(UTF8Encode(ParJson));
     try
     begin
      IdHTTP(true).Post(FAudience+'api/v1/New-Value',Param);
      response:=true;
     end;
     except on e:Exception do
         Response:=false;
     end;

     Result:=Response;

end;

Function TApiREST.Put(ParJson:string):boolean;
var
Param    :TStringStream;
response :boolean;
begin

   Param:=  TStringStream.Create(UTF8Encode(ParJson));

     try
     begin
      IdHTTP(true).Put(TIdURI.URLEncode(FAudience+'api/v1/Update-Value/'),Param);
      response:=true;
     end;
     except on e:Exception do
         Response:=false;
     end;

     Result:=Response;

end;

Function TApiREST.Delete(Parametro:string):boolean;
var
param    :TStringStream;
Audience :string;
Response :boolean;
begin

     try
     begin
     IdHTTP(true).Delete(TIdURI.URLEncode(FAudience+'api/v1/Delete-Value-id/'+Parametro));
     Response := true;
     end;
     except on e:Exception do
         Response:=false;
     end;

       Result:=Response;
end;



end.
