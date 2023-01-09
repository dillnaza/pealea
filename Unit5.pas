unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, pngimage, ExtCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    RichEdit1: TRichEdit;
    procedure Image3MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormActivate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  i: Integer;
  lbl: array [1 .. 9, 1 .. 6] of string;

implementation

uses Unit2, Unit6;
{$R *.dfm}

procedure TForm5.FormActivate(Sender: TObject);
begin
  lbl[1, 1] := '1.1. ������� ������ ����.';
  lbl[1, 2] := '1.2. ������ �� ����������� �����.';
  lbl[1, 3] := '1.3. ������� ����.';
  lbl[1, 4] := '1.4. �������� ����.';
  lbl[2, 1] := '2.1. �������� �����.';
  lbl[2, 2] := '2.2. ������� ���� � ����.';
  lbl[3, 1] := '3.1.������ ����.';
  lbl[3, 2] := '3.2. �����������, ��� �� �������.';
  lbl[3, 3] := '3.3. ���������������!';
  lbl[3, 4] := '3.4. ������� ����!';
  lbl[3, 5] := '3.5. ���� � �����.';
  lbl[3, 6] := '3.6. ����������.';
  lbl[4, 1] := '4.1.';
  lbl[4, 2] := '4.2. ������� �� �������� ��������.';
  lbl[4, 3] := '4.3. ������� ����� � ����� (����������).';
  lbl[4, 4] := '4.4. �����������! �� ��������� ������ ����!';
  lbl[5, 1] := '5.1. ��������� � ���������� ����.';
  lbl[5, 2] := '5.2. ���� � ��������.';
  lbl[5, 3] := '5.3. ����������� � ��������� �������.';
  lbl[6, 1] := '6.1. ��������� ��� ������� ���������.';
  lbl[6, 2] := '6.2. ������� � �����, ���������� ��� ���-�� ����� ����.';
  lbl[6, 3] :=
    '6.3. ������� ��� ������, � ������, � ������ ��� ����, � ����, � ����.';
  lbl[7, 1] := '7.1. ����������� �������!';
  lbl[8, 1] := '8.1. ������� ��� �������� �����.';
  lbl[9, 1] := '������:';
  i := 1;
  Label1.Caption := lbl[strtoint(d), i];
  Image3.Visible := true;
  Image1.Picture.LoadFromFile(put + 'photo\' + d + '.' + inttostr(i) + '.bmp');
  RichEdit1.Lines.LoadFromFile(put + 'file\' + d + '.' + inttostr(i) + '.rtf');
  if imag then
    Form5.RichEdit1.Font.Color := clblack
  else
    Form5.RichEdit1.Font.Color := clwhite;
  if (d = '8') then
    Image3.Visible := false;
end;

procedure TForm5.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image2.Height := 41;
  Image2.Width := 164;
  Image3.Height := 41;
  Image3.Width := 164;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
  if (i > 1) then
  begin
    dec(i);
    Image1.Picture.LoadFromFile(put + 'photo\' + d + '.' + inttostr(i)
        + '.bmp');
    Label1.Caption := lbl[strtoint(d), i];
    RichEdit1.Lines.LoadFromFile(put + 'file\' + d + '.' + inttostr(i)
        + '.rtf');
    if imag then
      Form5.RichEdit1.Font.Color := clblack
    else
      Form5.RichEdit1.Font.Color := clwhite;
  end
  else
  begin
    form6.Show;
    form6.Top := Form5.Top;
    form6.Left := Form5.Left;
    Form5.Close;
  end;

end;

procedure TForm5.Image3Click(Sender: TObject);
begin
  if (d = '8') then
    Image3.Visible := false;
  Label1.Caption := lbl[strtoint(d), i];
  Image3.Picture.LoadFromFile(put + '������\������.png');
  Image1.Picture.LoadFromFile(put + 'photo\' + d + '.' + inttostr(i) + '.bmp');
  RichEdit1.Lines.LoadFromFile(put + 'file\' + d + '.' + inttostr(i) + '.rtf');
  if imag then
    Form5.RichEdit1.Font.Color := clblack
  else
    Form5.RichEdit1.Font.Color := clwhite;
  if (d = '1') and (i = 4) or (d = '2') and (i = 2) or (d = '3') and (i = 6) or
    (d = '4') and (i = 4) or (d = '5') and (i = 3) or (d = '6') and (i = 3) or
    (d = '7') and (i = 1) then
  begin
    d := inttostr(strtoint(d) + 1);
    i := 1;
    Image3.Picture.LoadFromFile(put + '������\' + d + '.bmp');
  end
  else if d = '8' then
    Image3.Picture.LoadFromFile(put + '������\' + d + '.bmp')
  else
    inc(i);
end;

procedure TForm5.Image3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TImage(Sender).Height := 43;
  TImage(Sender).Width := 166;
end;

end.
