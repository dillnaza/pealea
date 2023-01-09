unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, pngimage, ExtCtrls;

type
  TForm8 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    RichEdit1: TRichEdit;
    Label2: TLabel;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  put: string;
  nalbl: array [1 .. 11] of string = (
    'Расположение нот на клавишах',
    'Расположение полутонов на пианино',
    'Знаки альтерации',
    'фа-до-соль-ре-ля-ми-си',
    'си-ми-ля-ре-соль-до-фа',
    ' ',
    'Нумерация пальцев у музыкантов',
    'Гамма C dur – без знаков альтерации',
    'Гамма G dur с знаком альтерации Фа #',
    'Гамма F dur – знак альтерации Си b',
    ' '
  );
  arr: array [1 .. 4] of string = (
    'Ноты и клавиши',
    'Знаки альтерации – изменения высоты тона звука',
    'Музыкальные гаммы: играем гамму До мажор и другие',
    'Заключение'
  );

implementation

uses Unit6;
{$R *.dfm}

procedure TForm8.FormActivate(Sender: TObject);
begin
  put := ExtractFilePath(Application.ExeName);
  Image3.Visible := true;
  RichEdit1.Lines.LoadFromFile(put + 'piano\' + k + '.rtf');
  Image1.Picture.LoadFromFile(put + 'piano\' + k + '.bmp');
  if k = '11' then
    Image3.Visible := false;
end;

procedure TForm8.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image2.Height := 41;
  Image2.Width := 164;
  Image3.Height := 41;
  Image3.Width := 164;
end;

procedure TForm8.Image2Click(Sender: TObject);
begin
  Image3.Visible := true;
  if strtoint(k) > 1 then
  begin
    k := inttostr(strtoint(k) - 1);
    Label2.Caption := nalbl[strtoint(k)];
    Image1.Picture.LoadFromFile(put + 'piano\' + k + '.bmp');
    RichEdit1.Lines.LoadFromFile(put + 'piano\' + k + '.rtf');
    if k = '3' then
      Label1.Caption := form6.Label2.Caption;
    if k = '7' then
      Label1.Caption := form6.label3.Caption;
  end
  else
  begin
    form6.Show;
    form6.Top := Form8.Top;
    form6.Left := Form8.Left;
    Form8.Close;
  end;
end;

procedure TForm8.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TImage(Sender).Height := 43;
  TImage(Sender).Width := 166;
end;

procedure TForm8.Image3Click(Sender: TObject);
begin
  k := inttostr(strtoint(k) + 1);
  if k = '3' then
    Label1.Caption := form6.Label2.Caption;
  if k = '7' then
    Label1.Caption := form6.label3.Caption;
  if k = '11' then
  begin
    Image3.Visible := false;
    Label1.Caption := form6.label4.Caption;
  end;
  Label2.Caption := nalbl[strtoint(k)];
  Image1.Picture.LoadFromFile(put + 'piano\' + k + '.bmp');
  RichEdit1.Lines.LoadFromFile(put + 'piano\' + k + '.rtf');
end;

end.
