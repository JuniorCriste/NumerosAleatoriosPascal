program numale;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unit1numale
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Gerador de Números Aleatórios';
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TappGNA, appGNA);
  Application.Run;
end.

