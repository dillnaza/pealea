unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Image1: TImage;
    Image3: TImage;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Image1Click(Sender: TObject);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label9Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  d, mem, k: string;
  f: textfile;
  j: Integer;

implementation

uses Unit2, Unit5, Unit7, Unit8;
{$R *.dfm}

procedure TForm6.FormActivate(Sender: TObject);
begin
  if imag then
    Image3.Picture.Loadfromfile(put + 'картинки\' + 'черный фон.bmp')
  else
    Image3.Picture.Loadfromfile(put + 'картинки\' + '1 фон.bmp');
end;

procedure TForm6.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if imag then
  begin
    Label1.Font.Color := clwhite;
    Label2.Font.Color := clwhite;
    Label3.Font.Color := clwhite;
    Label4.Font.Color := clwhite;
    Label5.Font.Color := clwhite;
    Label6.Font.Color := clwhite;
    Label7.Font.Color := clwhite;
    Label8.Font.Color := clwhite;
    Label9.Font.Color := clwhite;
  end
  else
  begin
    Label1.Font.Color := clblack;
    Label2.Font.Color := clblack;
    Label3.Font.Color := clblack;
    Label4.Font.Color := clblack;
    Label5.Font.Color := clblack;
    Label6.Font.Color := clblack;
    Label7.Font.Color := clblack;
    Label8.Font.Color := clblack;
    Label9.Font.Color := clblack;
  end;
  Label1.Font.Style := [];
  Label2.Font.Style := [];
  Label3.Font.Style := [];
  Label4.Font.Style := [];
  Label5.Font.Style := [];
  Label6.Font.Style := [];
  Label7.Font.Style := [];
  Label8.Font.Style := [];
  Label9.Font.Style := [];
  Image1.Height := 41;
  Image1.Width := 164;
end;

procedure TForm6.Image1Click(Sender: TObject);
begin
  form2.Show;
  form2.Top := Form6.Top;
  form2.Left := Form6.Left;
  Form6.Close;
end;

procedure TForm6.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TImage(Sender).Height := 43;
  TImage(Sender).Width := 166;
end;

procedure TForm6.Label1Click(Sender: TObject);
begin
  if Label10.Caption = ' ак научитьс€ читать ноты' then
  begin
    if (TLabel(Sender) = Label1) then
      d := '1'
    else if (TLabel(Sender) = Label2) then
      d := '2'
    else if (TLabel(Sender) = Label3) then
      d := '3'
    else if (TLabel(Sender) = Label4) then
      d := '4'
    else if (TLabel(Sender) = Label5) then
      d := '5'
    else if (TLabel(Sender) = Label6) then
      d := '6'
    else if (TLabel(Sender) = Label7) then
      d := '7'
    else if (TLabel(Sender) = Label8) then
      d := '8'
    else if (TLabel(Sender) = Label9) then
      d := '9';
    form2.Close;
    form5.Show;
    form5.Top := form6.Top;
    form5.Left := form6.Left;
  end
  else
  begin
    form8.Label1.Caption := TLabel(Sender).Caption;
    if TLabel(Sender) = Label1 then
      k := '1';
    if TLabel(Sender) = Label2 then
      k := '3';
    if TLabel(Sender) = Label3 then
      k := '7';
    if TLabel(Sender) = Label4 then
      k := '11';
    form8.Show;
    Form6.Close;
    form8.Top := Form6.Top;
    form8.Left := Form6.Left;
  end;
end;

procedure TForm6.Label1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clmaroon;
  TLabel(Sender).Font.Style := [fsunderline];
end;

procedure TForm6.Label9Click(Sender: TObject);
begin
  if Label10.Caption = ' ак научитьс€ читать ноты' then
  begin
    form7.Show;
    form7.Left := form2.Left;
    form7.Top := form2.Top;
    form2.Close;
  end;
end;

end.
