object App: TApp
  Left = 0
  Top = 0
  Caption = 'Cross'
  ClientHeight = 500
  ClientWidth = 500
  Color = clFuchsia
  TransparentColor = True
  TransparentColorValue = clFuchsia
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = AppMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  OnMouseWheelDown = FormMouseWheelDown
  OnMouseWheelUp = FormMouseWheelUp
  OnPaint = FormPaint
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object AppMenu: TMainMenu
    object Mode1: TMenuItem
      Caption = 'Mode'
      object Rectangle1: TMenuItem
        Caption = 'Rectangle'
        Checked = True
        RadioItem = True
        OnClick = Rectangle1Click
      end
      object Circle1: TMenuItem
        Caption = 'Circle'
        RadioItem = True
        OnClick = Circle1Click
      end
    end
    object Window1: TMenuItem
      Caption = 'Window'
      object Square1: TMenuItem
        Caption = 'Square'
        RadioItem = True
        OnClick = Square1Click
      end
      object Custom1: TMenuItem
        Caption = 'Custom'
        Checked = True
        RadioItem = True
        OnClick = Custom1Click
      end
    end
    object Help: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Caption = 'About'
      end
    end
  end
end
