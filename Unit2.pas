unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  bm: tbitmap;
  put: string;
  imag: boolean;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9;
{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
begin
  imag := true;
  put := ExtractFilePath(Application.ExeName);
end;

procedure TForm2.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image1.Height := 41;
  Image1.Width := 164;
  if imag then
  begin
    Label1.Font.Color := clblue;
    Label2.Font.Color := clblue;
  end
  else
  begin
    Label1.Font.Color := clpurple;
    Label2.Font.Color := clpurple;
  end;
  Image2.Height := 41;
  Image2.Width := 185;
end;

procedure TForm2.Image1Click(Sender: TObject);
begin
  Form1.Visible := true;
  Form1.Top := Form2.Top;
  Form1.Left := Form2.Left;
  Form2.Close;
end;

procedure TForm2.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image1.Height := 43;
  Image1.Width := 166;
end;

procedure TForm2.Image2Click(Sender: TObject);
begin
  if imag then
  begin
    Label1.Font.Color := clpurple;
    Label2.Font.Color := clpurple;
    Image2.Picture.Loadfromfile(put + '������\' + '������ ����.bmp');
    Image3.Picture.Loadfromfile(put + '��������\' + '1 ���.bmp');
    form3.Memo1.Color := clcream;
    form3.Image6.Picture.Loadfromfile(put + '��������\' + '1 ���.bmp');
    form3.Memo1.Font.Color := clblack;
    form3.RadioGroup1.Font.Color := clwhite;
    form3.Image4.Picture.Loadfromfile(put + '������\' + 'reset.png');
    form3.Image3.Picture.Loadfromfile(put + '������\' + 'next.bmp');
    form3.Image2.Picture.Loadfromfile(put + '������\' + 'pred.bmp');
    form3.Label1.Font.Color := clmaroon;
    form4.Image12.Picture.Loadfromfile(put + '������\' + 'reset.png');
    form4.Image10.Picture.Loadfromfile(put + '������\' + 'next.bmp');
    form4.Image13.Picture.Loadfromfile(put + '������\' + 'pred.bmp');
    form4.Image14.Picture.Loadfromfile(put + '������\' + 'gromcost.png');
    form4.Memo1.Color := clcream;
    form4.Memo1.Font.Color := clblack;
    form4.Label1.Font.Color := clmaroon;
    form5.Label1.Font.Color := clblack;
    form5.Color := clcream;
    form5.RichEdit1.Color := clcream;
    form6.Label10.Font.Color := clmaroon;
    form7.Color := clcream;
    form7.Memo1.Color := clcream;
    form7.Memo1.Font.Color := clblack;
    form8.Color := clcream;
    form8.RichEdit1.Color := clcream;
    form8.RichEdit1.Font.Color := clblack;
    form8.Label1.Font.Color := clblack;
    form8.Label2.Font.Color := clblack;
    imag := false;
  end
  else
  begin
    Label1.Font.Color := clblue;
    Label2.Font.Color := clblue;
    Image2.Picture.Loadfromfile(put + '������\' + '������� ����.bmp');
    Image3.Picture.Loadfromfile(put + '��������\' + '������ ���.bmp');
    form3.Memo1.Color := clblack;
    form3.Image6.Picture.Loadfromfile(put + '��������\' + '3.bmp');
    form3.Memo1.Font.Color := clwhite;
    form3.RadioGroup1.Font.Color := clblack;
    form3.Image4.Picture.Loadfromfile(put + '������\' + 'reset1.png');
    form3.Image3.Picture.Loadfromfile(put + '������\' + 'next1.bmp');
    form3.Image2.Picture.Loadfromfile(put + '������\' + 'pred1.bmp');
    form3.Label1.Font.Color := clblue;
    form4.Image12.Picture.Loadfromfile(put + '������\' + 'reset1.png');
    form4.Image10.Picture.Loadfromfile(put + '������\' + 'next1.bmp');
    form4.Image13.Picture.Loadfromfile(put + '������\' + 'pred1.bmp');
    form4.Image14.Picture.Loadfromfile(put + '������\' + 'gromcost1.png');
    form4.Memo1.Color := clblack;
    form4.Memo1.Font.Color := clwhite;
    form4.Label1.Font.Color := clblue;
    form5.Color := clblack;
    form5.Label1.Font.Color := clwhite;
    form5.RichEdit1.Color := clblack;
    form6.Label10.Font.Color := clblue;
    form7.Color := clblack;
    form7.Memo1.Color := clblack;
    form7.Memo1.Font.Color := clwhite;
    form8.Color := clblack;
    form8.RichEdit1.Color := clblack;
    form8.RichEdit1.Font.Color := clwhite;
    form8.Label1.Font.Color := clwhite;
    form8.Label2.Font.Color := clwhite;
    imag := true;
  end;
end;

procedure TForm2.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image2.Height := 43;
  Image2.Width := 190;
end;

procedure TForm2.Label1Click(Sender: TObject);
begin
  if Form2.Caption = '���������' then
  begin
    form6.Show;
    form6.Top := Form2.Top;
    form6.Left := Form2.Left;
    form6.Caption := '��������� ������ ����';
    form6.Label1.Caption := '����� 1: ������';
    form6.Label2.Caption := '����� 2: ���� � ����';
    form6.Label3.Caption := '����� 3: ����';
    form6.Label4.Caption := '����� 4: �������';
    form6.Label5.Caption := '����� 5: �����, ������, ������ � �������� �����';
    form6.Label6.Caption := '����� 6: �������� � ����������';
    form6.Label7.Caption := '����� 7: �����������������';
    form6.Label8.Caption := '����� 8: ������ �������� ������';
    form6.Label9.Caption := '������';
    form6.Label10.Caption := '��� ��������� ������ ����';
  end;
  if Form2.Caption = '������' then
  begin
    form3.Show;
    form3.Top := Form2.Top;
    form3.Left := Form2.Left;
  end;
  Form2.Close;
end;

procedure TForm2.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clmaroon;
end;

procedure TForm2.Label2Click(Sender: TObject);
begin
  if Form2.Caption = '���������' then
  begin
    form6.Show;
    form6.Top := Form2.Top;
    form6.Left := Form2.Left;
    form6.Caption := '��������� ������ �� �������';
    form6.Label1.Caption := '���� � �������';
    form6.Label2.Caption := '����� ���������� � ��������� ������ ���� �����';
    form6.Label3.Caption := '����������� �����: ������ ����� �� ����� � ������';
    form6.Label4.Caption := '����������';
    form6.Label5.Caption := '';
    form6.Label6.Caption := '';
    form6.Label7.Caption := '';
    form6.Label8.Caption := '';
    form6.Label9.Caption := '';
    form6.Label10.Caption := '����� ���������� ��� ����������';
  end;
  if Form2.Caption = '������' then
  begin
    form4.Show;
    form4.Top := Form2.Top;
    form4.Left := Form2.Left;
  end;
  Form2.Close;
end;

end.
