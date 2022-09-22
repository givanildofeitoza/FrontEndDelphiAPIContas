unit FuncoesPublicas;

interface

uses Lancamentos, Classes, Data.DB;

type TListaValores = Class
public
 FlistaValores : TList;
 Constructor Create;
 procedure   Adicionar(pValores:TLancamentos);
 Function    Count():Integer;

 //Function    Sum(DataI:TDateTime; DataF:TDateTime; Categoria:String):Currency;
End;

implementation


constructor TListaValores.Create;
begin
  inherited Create;
  FlistaValores := TList.Create;
end;
procedure TListaValores.Adicionar(pValores:TLancamentos);
begin
   FlistaValores.Add(pValores);
end;
Function TListaValores.Count():Integer;
begin
      Result:=  FlistaValores.Count;
end;



end.
