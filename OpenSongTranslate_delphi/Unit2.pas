unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, strutils;

type
  TForm2 = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
function PosFromEnd(Substr: String; S: String): Integer;
var
  I : Integer;
begin
  Result := 0;
  for I := (Length(S) - Length(Substr) + 1) downto 1 do
    if Substr = Copy(s, I, Length(Substr)) then
      begin
        Result := I;
        Break;
      end;
end;
var
  oud, nieuw, refr: TStringList;
  liednr, versnr, aantalVers, dummy, I, II, III, IIII: Integer;
  LiedNrS, titel, S, Snext: string;
  S1, S2, S3: string;
  HeeftRefrein, isrefrein: Boolean;
  Hoeveelsterefr: Integer;
  isVers: boolean;
begin

//for liednr := 1 to 602 do
  begin
 // LiedNrS := RightStr('000'+inttostr(liednr),3);
    oud := TStringList.Create;
    oud.LoadFromFile('D:\Projects\opensong_gp\OpenSongTranslate_delphi\Gezangen.txt');
    Nieuw := TStringList.Create;
    refr := TStringList.Create;
    HeeftRefrein := False;
    isrefrein := False;
    aantalVers := 1;
//  Hoeveelsterefr := 0;
//  for I := 0 to oud.Count - 1 do
//  begin
//    S := Trim(oud[i]);
//    Snext := '';
//    if I + 1 <= oud.count-1 then
//     Snext := Trim(oud[i+1]);
//    if pos( '(c)',Snext) > 0 then
//      Break;
//    if pos('Tekst&muziek',Snext) > 0 then
//      Break;


//    if (I > 2) and (trim(s) = '') then
//    begin
//      if Snext <> '' then
//    if Pos('REFREIN', uppercase(Snext)) = 0 then
//        Inc(aantalVers);
//    end;
//  end;
//  versnr := 1;
    for I := 0 to oud.Count - 1 do
    begin
      S := Trim(oud[i]);
      Snext := '';
//    if I + 1 <= oud.count-1 then
//     Snext := Trim(oud[i+1]);
//    if pos( '(c)',Snext) > 0 then
//      Break;
//    if pos('Tekst&muziek',Snext) > 0 then
//      Break;
      if LeftStr(S, 6) = 'Gezang' then
      begin
        if titel <> '' then
        begin
          S2 := '';
          nieuw.Add('</lyrics></song>');
          for ii := 1 to aantalVers do
            S2 := S2 + 'V' + inttostr(II) + ' ';
          nieuw[3] := '<presentation>' + trim(s2) + '</presentation>';
          III := PosFromEnd(' ',titel);
          titel := LeftStr(titel,iii)+ RightStr('000'+copy(titel, iii+1),3);
          nieuw.savetofile('D:\Projects\opensong_gp\OpenSongTranslate_delphi\Gezangen\' + Titel);
          nieuw.clear;
        end;
        titel := S;
      //  titel[1] := 'P';

//      II := Pos('  ',S);
//      if II > 0  then
//        titel := LeftStr(titel,II-1);
//      if pos('Opwekking', titel) <= 0 then
//        titel := 'Opwekking '+inttostr(liednr) + ' '+titel;
//      S := '';
 //         for ii := 1 to aantalVers do
 //           S2 := S2 + 'V' + inttostr(II) + ' ';
        nieuw.Add('<?xml version="1.0" encoding="UTF-8"?>');
        nieuw.Add('<song>');
        nieuw.Add('<title>' + titel + '</title>');
        nieuw.Add('<presentation>' + trim(s2) + '</presentation>');
        nieuw.Add('<lyrics>[V1]');
        S2 := '<presentation>V1';
      end else
      begin
        if trim(S) <> '' then
        begin
          if TryStrToInt((S), dummy) then
          begin
            aantalVers := StrToInt(S);
            S := '[V' + S + ']';
            if S = '[V1]' then
              S := '';

          end;
        if trim(S) <> '' then
          nieuw.add(' ' + S);
        end;
      end;
//      if HeeftRefrein then
//      begin
//        for IIII := 0 to refr.Count - 1 do
//          nieuw.Insert(5+IIII, refr[IIII]);
//        nieuw.Insert(5+IIII, '[V1]');
//        nieuw[4] := '<lyrics>[C]' ;
//        nieuw[3] := StringReplace(nieuw[3],' ', ' C ',[ rfReplaceAll]);
//        nieuw[3] := StringReplace(nieuw[3],'</', ' C</',[ rfReplaceAll]);
//      end;
 //     refr.clear;
//          if isrefrein then
//          begin
//            refr.Add(' ' + S);
//          end;


    end;
  end;  end;



end.

