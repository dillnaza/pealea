unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, pngimage, ExtCtrls, mmsystem, MPlayer;

type
  TForm4 = class(TForm)
    Image12: TImage;
    Label1: TLabel;
    Image13: TImage;
    Image10: TImage;
    Image11: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    BitBtn2: TBitBtn;
    Memo1: TMemo;
    Image14: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure FormPaint(Sender: TObject);
    procedure FormDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image11MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image12MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image11Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  bm: tbitmap;
  l, t, i, imagesource, san: Integer;
  nota: array [1 .. 10] of string = (
    '1. Целая нота “До”',
    '2. 16 нота “Ля”',
    '3. 4 нота “Соль”',
    '4. 32 нота “Ре”',
    '5. 8 нота “Фа”',
    '6. Целая нота “Си”',
    '7. 16 нота “Ля”',
    '8. Половинная нота “Ми”',
    '9. 8 нота “Соль”',
    '10. 4 нота “До”'
  );
  memoline: array [1 .. 2] of string = (
    'Жаль... У тебя маловато баллов, но не расстраивайся! Музыка - это вещь, которую не так легко запомнить. Я уверена что ты сможешь улучшить свой результат!',
    'Очень хорошо! Тест сдан достаточно хорошо, хоть мне и казалось, что будет очень трудно.Ты молодец ! Надеюсь, что Ты тоже научишься играть на чём - то, но это уже тебе решать !'
  );

implementation

uses Unit2;
{$R *.dfm}

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  case san of
    0 .. 5:
      Memo1.Lines.Add(memoline[1]);
    6 .. 10:
      Memo1.Lines.Add(memoline[2]);
  end;

end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  i := 1;
  Label1.Caption := nota[i];
  if imag then
  begin
    Image6.Picture.Bitmap.TransparentColor := clwhite;
    Image1.Picture.LoadFromFile(put + '\nota' + '\целая1.bmp');
    Image2.Picture.LoadFromFile(put + '\nota' + '\половинная1.bmp');
    Image3.Picture.LoadFromFile(put + '\nota' + '\41.bmp');
    Image4.Picture.LoadFromFile(put + '\nota' + '\81.bmp');
    Image5.Picture.LoadFromFile(put + '\nota' + '\161.bmp');
    Image6.Picture.LoadFromFile(put + '\nota' + '\321.bmp');
    Image1.Picture.Bitmap.TransparentColor := clblack;
    Image2.Picture.Bitmap.TransparentColor := clblack;
    Image3.Picture.Bitmap.TransparentColor := clblack;
    Image3.Picture.Bitmap.TransparentColor := clblack;
    Image5.Picture.Bitmap.TransparentColor := clblack;
    Image6.Picture.Bitmap.TransparentColor := clblack;
  end
  else
  begin
    Image1.Picture.LoadFromFile(put + '\nota' + '\целая.bmp');
    Image2.Picture.LoadFromFile(put + '\nota' + '\половинная.bmp');
    Image3.Picture.LoadFromFile(put + '\nota' + '\4.bmp');
    Image4.Picture.LoadFromFile(put + '\nota' + '\8.bmp');
    Image5.Picture.LoadFromFile(put + '\nota' + '\16.bmp');
    Image6.Picture.LoadFromFile(put + '\nota' + '\32.bmp');
    Image1.Picture.Bitmap.TransparentColor := clwhite;
    Image2.Picture.Bitmap.TransparentColor := clwhite;
    Image3.Picture.Bitmap.TransparentColor := clwhite;
    Image3.Picture.Bitmap.TransparentColor := clwhite;
    Image5.Picture.Bitmap.TransparentColor := clwhite;
  end;
  Image1.top := 144;
  Image1.left := 764;
  Image2.top := 87;
  Image2.left := 900;
  Image3.top := 215;
  Image3.left := 736;
  Image4.top := 215;
  Image4.left := 900;
  Image5.top := 343;
  Image5.left := 736;
  Image6.top := 343;
  Image6.left := 900;
end;

procedure TForm4.FormDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  TImage(Source).Parent := Form4;
  if TImage(Source) = Image1 then
    imagesource := 1;
  if TImage(Source) = Image2 then
    imagesource := 2;
  if TImage(Source) = Image3 then
    imagesource := 3;
  if TImage(Source) = Image4 then
    imagesource := 4;
  if TImage(Source) = Image5 then
    imagesource := 5;
  if TImage(Source) = Image6 then
    imagesource := 6;
  if (X > 88) and (X < 152) and (Y < 368) and (Y > 336) then // do
    case imagesource of
      1:
        begin
          l := 100;
          t := 333;
        end;
      2:
        begin
          l := 75;
          t := 265;
        end;
      3:
        begin
          l := 75;
          t := 265;
        end;
      4:
        begin
          l := 85;
          t := 267;
        end;
      5:
        begin
          l := 85;
          t := 270;
        end;
      6:
        begin
          l := 85;
          t := 262;
        end;
    end;
  if (X > 184) and (X < 232) and (Y < 352) and (Y > 320) then // re
    case imagesource of
      1:
        begin
          l := 188;
          t := 318;
        end;
      2:
        begin
          l := 165;
          t := 250;
        end;
      3:
        begin
          l := 165;
          t := 250;
        end;
      4:
        begin
          l := 170;
          t := 254;
        end;
      5:
        begin
          l := 170;
          t := 254;
        end;
      6:
        begin
          l := 170;
          t := 248;
        end;
    end;
  if (X > 256) and (X < 304) and (Y < 336) and (Y > 304) then // mi
    case imagesource of
      1:
        begin
          l := 267;
          t := 304;
        end;
      2:
        begin
          l := 243;
          t := 240;
        end;
      3:
        begin
          l := 243;
          t := 240;
        end;
      4:
        begin
          l := 251;
          t := 240;
        end;
      5:
        begin
          l := 251;
          t := 240;
        end;
      6:
        begin
          l := 251;
          t := 232;
        end;
    end;
  if (X > 336) and (X < 384) and (Y < 320) and (Y > 288) then // fa
    case imagesource of
      1:
        begin
          l := 345;
          t := 289;
        end;
      2:
        begin
          l := 320;
          t := 222;
        end;
      3:
        begin
          l := 320;
          t := 222;
        end;
      4:
        begin
          l := 328;
          t := 225;
        end;
      5:
        begin
          l := 328;
          t := 225;
        end;
      6:
        begin
          l := 328;
          t := 219;
        end;
    end;
  if (X > 424) and (X < 481) and (Y < 305) and (Y > 272) then // sol
    case imagesource of
      1:
        begin
          l := 432;
          t := 272;
        end;
      2:
        begin
          l := 407;
          t := 206;
        end;
      3:
        begin
          l := 407;
          t := 206;
        end;
      4:
        begin
          l := 417;
          t := 206;
        end;
      5:
        begin
          l := 416;
          t := 210;
        end;
      6:
        begin
          l := 415;
          t := 202;
        end;
    end;
  if (X > 504) and (X < 552) and (Y < 289) and (Y > 256) then // la
    case imagesource of
      1:
        begin
          l := 515;
          t := 256;
        end;
      2:
        begin
          l := 489;
          t := 192;
        end;
      3:
        begin
          l := 489;
          t := 192;
        end;
      4:
        begin
          l := 495;
          t := 192;
        end;
      5:
        begin
          l := 497;
          t := 195;
        end;
      6:
        begin
          l := 497;
          t := 188;
        end;
    end;
  if (X > 595) and (X < 652) and (Y < 280) and (Y > 240) then // si
    case imagesource of
      1:
        begin
          l := 596;
          t := 242;
        end;
      2:
        begin
          l := 575;
          t := 178;
        end;
      3:
        begin
          l := 575;
          t := 178;
        end;
      4:
        begin
          l := 583;
          t := 178;
        end;
      5:
        begin
          l := 583;
          t := 178;
        end;
      6:
        begin
          l := 583;
          t := 172;
        end;
    end;
  TImage(Source).left := l;
  TImage(Source).top := t;
end;

procedure TForm4.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TImage;
end;

procedure TForm4.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image11.Height := 41;
  Image11.Width := 164;
  Image12.Height := 57;
  Image12.Width := 57;
  Image13.Height := 57;
  Image13.Width := 57;
  Image10.Height := 57;
  Image10.Width := 57;
  Image14.Height := 57;
  Image14.Width := 57;
end;

procedure TForm4.FormPaint(Sender: TObject);
begin
  bm := tbitmap.Create;
  if imag then
    bm.LoadFromFile(put + 'картинки\' + '41.bmp')
  else
    bm.LoadFromFile(put + 'картинки\' + '4.bmp');
  Form4.Canvas.Draw(0, 0, bm);
end;

procedure TForm4.Image11Click(Sender: TObject);
begin
  Form2.Show;
  Form2.top := Form4.top;
  Form2.left := Form4.left;
  Form4.Close;
end;

procedure TForm4.Image11MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image11.Height := 43;
  Image11.Width := 166;
end;

procedure TForm4.Image12MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TImage(Sender).Height := 58;
  TImage(Sender).Width := 58;
end;

procedure TForm4.Image13Click(Sender: TObject);
begin
  if (Image1.top = 333) and (Image1.left = 100) and (i = 1) then
    san := san + 1;
  if (Image5.top = 195) and (Image5.left = 497) and (i = 2) then
    san := san + 1;
  if (Image3.top = 206) and (Image3.left = 407) and (i = 3) then
    san := san + 1;
  if (Image6.top = 248) and (Image6.left = 170) and (i = 4) then
    san := san + 1;
  if (Image4.top = 225) and (Image4.left = 328) and (i = 5) then
    san := san + 1;
  if (Image6.top = 172) and (Image6.left = 583) and (i = 6) then
    san := san + 1;
  if (Image5.top = 192) and (Image5.left = 495) and (i = 7) then
    san := san + 1;
  if (Image2.top = 240) and (Image2.left = 243) and (i = 8) then
    san := san + 1;
  if (Image4.top = 206) and (Image4.left = 417) and (i = 9) then
    san := san + 1;
  if (Image3.top = 265) and (Image3.left = 75) and (i = 10) then
    san := san + 1;
  inc(i);
  if i > 10 then
    Label1.Caption := ' '
  else
    Label1.Caption := nota[i];
  Image1.top := 144;
  Image1.left := 764;
  Image2.top := 87;
  Image2.left := 900;
  Image3.top := 215;
  Image3.left := 736;
  Image4.top := 215;
  Image4.left := 900;
  Image5.top := 343;
  Image5.left := 736;
  Image6.top := 343;
  Image6.left := 900;
end;

procedure TForm4.Image14Click(Sender: TObject);
begin
  MediaPlayer1.FileName := put + '\zvuk\' + inttostr(i) + '.wav';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
