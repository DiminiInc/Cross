unit Cross;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TApp = class(TForm)
    procedure DrawCross;
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
  private
    size: integer;
  public
    { Public declarations }
  end;

var
  App: TApp;

implementation

{$R *.dfm}

procedure TApp.DrawCross();
var
  centerX, centerY: real;
begin
  centerX := App.ClientWidth / 2;
  centerY := App.ClientHeight / 2;

  App.Canvas.Refresh;
  App.Canvas.Brush.Color:=clFuchsia;
  App.Canvas.Rectangle(0, 0, App.ClientWidth, App.ClientHeight);
  App.Canvas.Brush.Color:=clBlack;

  App.Canvas.MoveTo(round(centerX - size / 2), 0);
  App.Canvas.LineTo(round(centerX - size / 2), App.Height);
  App.Canvas.MoveTo(round(centerX + size / 2), 0);
  App.Canvas.LineTo(round(centerX + size / 2), App.Height);

  App.Canvas.MoveTo(0, round(centerY - size / 2));
  App.Canvas.LineTo(App.Width, round(centerY - size / 2));
  App.Canvas.MoveTo(0, round(centerY + size / 2));
  App.Canvas.LineTo(App.Width, round(centerY + size / 2));
end;

procedure TApp.FormCreate(Sender: TObject);
begin
  size:=10;
end;

procedure TApp.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  size := size - 1;
  DrawCross();
end;

procedure TApp.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  size := size + 1;
  DrawCross();
end;

procedure TApp.FormPaint(Sender: TObject);
begin
  DrawCross();
end;

procedure TApp.FormResize(Sender: TObject);
begin
   DrawCross();
end;

end.
