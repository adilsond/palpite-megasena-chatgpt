program MegaSena;
var
  dezenas: array[1..6] of integer;
  i, j: integer;
  num: integer;
  flag: boolean;
begin
  randomize;
  writeln('Palpite para Mega Sena');
  writeln;
  write('As dezenas sorteadas são: ');
  for i := 1 to 6 do
  begin
    repeat
      num := random(60) + 1;
      flag := true;
      for j := 1 to i - 1 do
      begin
        if dezenas[j] = num then
        begin
          flag := false;
          break;
        end;
      end;
    until flag;
    dezenas[i] := num;
    if i < 6 then
    begin
      write(dezenas[i], ' - ');
    end
    else
    begin
      write(dezenas[i]);
    end;
  end;
  writeln;
  write('As dezenas na ordem são: ');
  for i := 1 to 6 do
  begin
    for j := i + 1 to 6 do
    begin
      if dezenas[i] > dezenas[j] then
      begin
        num := dezenas[i];
        dezenas[i] := dezenas[j];
        dezenas[j] := num;
      end;
    end;
    if i < 6 then
    begin
      write(dezenas[i], ' - ');
    end
    else
    begin
      write(dezenas[i]);
    end;
  end;
  writeln;
  writeln;
end.
