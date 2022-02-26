object Form2: TForm2
  Left = 268
  Top = 201
  Width = 473
  Height = 391
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
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
  object Label3: TLabel
    Left = 280
    Top = 320
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 276
    Top = 275
    Width = 40
    Height = 13
    Caption = 'Items := '
  end
  object Memo3: TRichEdit
    Left = -280
    Top = 108
    Width = 745
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
    WordWrap = False
  end
  object FileListBox1: TFileListBox
    Left = 40
    Top = 24
    Width = 185
    Height = 169
    ItemHeight = 13
    Mask = '*.html'
    TabOrder = 7
    Visible = False
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
    Width = 260
    Height = 16
    Caption = 'Get Original Index File'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ListBox2: TListBox
    Left = 140
    Top = 5
    Width = 126
    Height = 306
    ItemHeight = 13
    TabOrder = 2
  end
  object Button3: TButton
    Left = 280
    Top = 293
    Width = 177
    Height = 16
    Caption = 'Compare them ! ! !'
    TabOrder = 3
    OnClick = Button3Click
  end
  object ListBox3: TMemo
    Left = 280
    Top = 8
    Width = 177
    Height = 257
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
    WordWrap = False
  end
  object Button2: TButton
    Left = 280
    Top = 336
    Width = 177
    Height = 17
    Caption = 'Save Them ! ! !'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 208
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 8
    Visible = False
    OnClick = Button4Click
  end
  object OpenDialog1: TOpenDialog
    Filter = '.txt|*.txt'
    InitialDir = 'c:\temp'
    Left = 255
    Top = 5
  end
end
