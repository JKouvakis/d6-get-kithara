object Form1: TForm1
  Left = 220
  Top = 145
  Width = 474
  Height = 393
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 315
    Width = 40
    Height = 13
    Caption = 'Items := '
  end
  object Label2: TLabel
    Left = 140
    Top = 315
    Width = 40
    Height = 13
    Caption = 'Items := '
  end
  object ListBox1: TListBox
    Left = 5
    Top = 5
    Width = 126
    Height = 306
    ItemHeight = 13
    TabOrder = 0
  end
  object Button1: TButton
    Left = 5
    Top = 335
    Width = 126
    Height = 16
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 140
    Top = 335
    Width = 126
    Height = 16
    Caption = 'Button2'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListBox2: TListBox
    Left = 140
    Top = 5
    Width = 126
    Height = 306
    ItemHeight = 13
    TabOrder = 3
  end
  object Button3: TButton
    Left = 270
    Top = 317
    Width = 191
    Height = 16
    Caption = 'Compare them ! ! !'
    TabOrder = 4
    OnClick = Button3Click
  end
  object ListBox3: TListBox
    Left = 275
    Top = 9
    Width = 186
    Height = 286
    ItemHeight = 13
    TabOrder = 5
  end
  object OpenDialog1: TOpenDialog
    Filter = '.txt|*.txt'
    InitialDir = 'c:\temp'
    Left = 255
    Top = 5
  end
end
