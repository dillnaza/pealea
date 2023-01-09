unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, pngimage;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image2: TImage;
    Label4: TLabel;
    procedure Label2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit9;
{$R *.dfm}

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Label2.Font.Color := clwhite;
  Label3.Font.Color := clwhite;
  Label4.Font.Color := clwhite;
  Image2.Height := 44;
  Image2.Width := 44;
  form9.Close;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  form9.Show;
  form9.Left := Form1.Left;
  form9.Top := Form1.Top;
end;

procedure TForm1.Image2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image2.Height := 46;
  Image2.Width := 46;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
  Form1.Visible := false;
  form2.Show;
  form2.Top := Form1.Top;
  form2.Left := Form1.Left;
  form2.Caption := 'Задачи';
  form2.Label1.Caption := '* Тест';
  form2.Label2.Caption := '* Найти заданную ноту';
end;

procedure TForm1.Label2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  TLabel(Sender).Font.Color := clmaroon;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
  Form1.Visible := false;
  form2.Show;
  form2.Top := Form1.Top;
  form2.Left := Form1.Left;
  form2.Caption := 'Научиться';
  form2.Label1.Caption := '* Научиться читать ноты';
  form2.Label2.Caption := '* Уроки фортепиано';
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
  Form1.Close;
end;

end.
