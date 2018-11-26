unit MyLibrary;

interface

uses SysUtils, DB, DBTables, Classes;

function IIFStr(Expr: Boolean; Par1, Par2: integer): integer;


implementation

function IIFStr(Expr: Boolean; Par1, Par2: integer): integer;
begin
  if Expr then
    Result := Par1
  else
    Result := Par2;
end;
end.
