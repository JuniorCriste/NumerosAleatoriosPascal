unit unit1numale;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ComCtrls, Types, clipbrd, ExtCtrls;

type

  { TappGNA }

  TappGNA = class(TForm)
    add: TButton;
    img: TImage;
    rem: TButton;
    copiar: TButton;
    gerar: TButton;
    numgerados: TEdit;
    quantnum: TLabel;
    txt1: TLabel;
    procedure addClick(Sender: TObject);
    procedure copiarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gerarClick(Sender: TObject);
    procedure remClick(Sender: TObject);
    procedure somarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure somarMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ToggleBox1Change(Sender: TObject);
  private

  public

  end;

var
  appGNA: TappGNA;

implementation

{$R *.lfm}

{ TappGNA }

procedure TappGNA.addClick(Sender: TObject);
begin
  quantnum.Caption := IntToStr(StrToInt(quantnum.Caption) + 1) ;
end;

procedure TappGNA.copiarClick(Sender: TObject);
begin
  clipboard.AsText:= numgerados.Text;
end;

procedure TappGNA.FormCreate(Sender: TObject);
begin
  randomize;
end;

procedure TappGNA.gerarClick(Sender: TObject);
var
  num: array of integer;
  i: integer;
begin
  numgerados.Text:= '';
  SetLength(num, StrToInt(quantnum.Caption));

  for  i:= 1 to Length(num) do
  begin
    num[i] := random(9);
    numgerados.Text:= numgerados.Text + IntToStr(num[i]);
  end;

end;

procedure TappGNA.remClick(Sender: TObject);
begin
if quantnum.Caption <> '1' then
  begin
  quantnum.Caption := IntToStr(StrToInt(quantnum.Caption) - 1) ;
  end;
end;

procedure TappGNA.somarMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

procedure TappGNA.somarMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  quantnum.Caption := IntToStr(StrToInt(quantnum.Caption) + 1) ;
end;

procedure TappGNA.ToggleBox1Change(Sender: TObject);
begin

end;


end.

