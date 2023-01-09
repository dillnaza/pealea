unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls;

type
  TForm7 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit6, Unit5;
{$R *.dfm}

procedure TForm7.FormMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image1.Height := 41;
  Image1.Width := 164;
end;

procedure TForm7.Image1Click(Sender: TObject);
begin
  form6.Show;
  form6.Top := Form7.Top;
  form6.Left := Form7.Left;
  Form7.Close;
end;

procedure TForm7.Image1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  Image1.Height := 43;
  Image1.Width := 166;
end;

end.
