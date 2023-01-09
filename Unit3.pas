unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, pngimage;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Memo1: TMemo;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    Image1: TImage;
    Image6: TImage;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image5Click(Sender: TObject);
    procedure Image5MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  answers: array [1 .. 15] of boolean;
  imagecount, i, count: byte;
  question: array [1 .. 15] of string = (
    'Как называется этот ключ?',
    'Как называются эти линии?',
    'Как называется эламент ноты под номером 2?',
    'Длительность этой ноты?',
    'Длительность этой ноты?',
    'Сколько долей в одном такте',
    'Что означает эта решетка?',
    'Что означает этот знак?',
    'Что это?',
    'Что означает этот знак?',
    'Что означает этот знак?',
    'Что означает этот знак?',
    'Длительность этой паузы?',
    'Длительность паузы?',
    'Какая нота?'
  );
  qindex: array [1 .. 15, 1 .. 4] of string =
    (('Нотный ключ', 'Скрипичный ключ', 'Басовый ключ', 'Пианный ключ'),
    ('Нотный cтан', 'Скрипичные линии', 'Нотные линии', '5 нотных линии'),
    ('Флажок', 'Головка ноты', 'Соединитель', 'Штиль'), ('4', '8', '16', '32'),
    ('4', '8', '16', '32'), ('2', '3', '4', '5'), ('Диез', 'Диель', 'Бекарь',
      'Дейла'), ('Бемоль', 'Диез', 'Бирель', 'Бекарь'), ('Ударение', 'Акцент',
      'Акапелла', 'Главный удар'), ('Бемоль', 'Диез', 'Бирель', 'Бекарь'),
    ('Крещендо', 'Ударение', 'Диминуэндо', 'Акцент'),
    ('Ударение', 'Диминуэндо', 'Акцент', 'Крещендо'), ('Целая', '4', '8',
      'Половинная'), ('Половинная', '8', '4', 'Целая'), ('До', 'Ля', 'Ре', 'Си')
    );

implementation
uses Unit2;
{$R *.dfm}

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
  for i := 1 to 15 do
    if answers[i] then
      inc(count);
  if count < 16 then
    Memo1.Lines.Add(inttostr(count) + ' из 15 вопросов');
  RadioGroup1.Enabled := false;
  BitBtn2.Enabled := false;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  imagecount := 1;
  count := 0;
  RadioGroup1.Items.Clear;
  Memo1.Lines.Clear;
  RadioGroup1.Enabled := true;
  Image3.Visible := false;
  Image2.Visible := true;
  if imagecount <> 16 then
    BitBtn2.Enabled := false;
  Image1.Picture.Loadfromfile(put + 'test\1.bmp');
  RadioGroup1.Caption := '1. ' + question[1];
  for i := 1 to 4 do
    RadioGroup1.Items.Add(qindex[1, i]);
end;

procedure TForm3.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image4.Height := 57;
  Image4.Width := 57;
  Image3.Height := 57;
  Image3.Width := 57;
  Image2.Height := 57;
  Image2.Width := 57;
  Image5.Height := 41;
  Image5.Width := 164;
end;

procedure TForm3.Image2Click(Sender: TObject);
begin
  count := 0;
  case imagecount of
    1, 5, 9, 13, 14:
      if RadioGroup1.ItemIndex = 1 then
      begin
        answers[1] := true;
        answers[5] := true;
        answers[9] := true;
        answers[13] := true;
        answers[14] := true;
      end
      else
      begin
        answers[1] := false;
        answers[5] := false;
        answers[9] := false;
        answers[13] := false;
        answers[14] := false;
      end;
    2, 7, 10:
      if RadioGroup1.ItemIndex = 0 then
      begin
        answers[2] := true;
        answers[7] := true;
        answers[10] := true;
      end
      else
      begin
        answers[2] := false;
        answers[7] := false;
        answers[10] := false;
      end;
    3, 4, 6, 11:
      if RadioGroup1.ItemIndex = 2 then
      begin
        answers[3] := true;
        answers[4] := true;
        answers[6] := true;
        answers[11] := true;
      end
      else
      begin
        answers[3] := false;
        answers[4] := false;
        answers[6] := false;
        answers[11] := false;
      end;
    8, 12, 15:
      if RadioGroup1.ItemIndex = 3 then
      begin
        answers[8] := true;
        answers[12] := true;
        answers[15] := true;
      end
      else
      begin
        answers[8] := false;
        answers[12] := false;
        answers[15] := false;
      end;
  end;
  RadioGroup1.Items.Clear;
  inc(imagecount);
  if imagecount < 16 then
  begin
    RadioGroup1.Caption := inttostr(imagecount) + '. ' + question[imagecount];
    Image1.Picture.Loadfromfile(put + 'test\' + inttostr(imagecount) + '.bmp');
  end
  else
  begin
    BitBtn2.Enabled := true;
    Image2.Visible := false;
  end;
  if imagecount > 1 then
    Image3.Visible := true;
  for i := 1 to 4 do
    RadioGroup1.Items.Add(qindex[imagecount, i]);
end;

procedure TForm3.Image3Click(Sender: TObject);
begin
  RadioGroup1.Items.Clear;
  dec(imagecount);
  Image1.Picture.Loadfromfile(put + 'test\' + inttostr(imagecount) + '.bmp');
  if imagecount < 16 then
    Image2.Visible := true;
  if imagecount = 1 then
    Image3.Visible := false;
  RadioGroup1.Caption := inttostr(imagecount) + '. ' + question[imagecount];
  if imagecount < 16 then
    for i := 1 to 4 do
      RadioGroup1.Items.Add(qindex[imagecount, i]);
end;

procedure TForm3.Image4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TImage(Sender).Height := 58;
  TImage(Sender).Width := 58;
end;

procedure TForm3.Image5Click(Sender: TObject);
begin
  Form2.Show;
  Form2.Top := Form3.Top;
  Form2.Left := Form3.Left;
  Form3.Close;
end;

procedure TForm3.Image5MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image5.Height := 43;
  Image5.Width := 166;
end;

end.
