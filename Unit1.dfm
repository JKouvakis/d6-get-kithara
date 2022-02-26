object Form1: TForm1
  Left = 254
  Top = 137
  Width = 610
  Height = 432
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
    Left = 200
    Top = 300
    Width = 26
    Height = 13
    Caption = 'Title :'
  end
  object Label2: TLabel
    Left = 200
    Top = 325
    Width = 29
    Height = 13
    Caption = 'Artist :'
  end
  object Label3: TLabel
    Left = 200
    Top = 350
    Width = 34
    Height = 13
    Caption = 'Music :'
  end
  object Label4: TLabel
    Left = 200
    Top = 375
    Width = 37
    Height = 13
    Caption = 'Words :'
  end
  object Text1: TRichEdit
    Left = 195
    Top = 5
    Width = 204
    Height = 286
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 245
    Top = 295
    Width = 154
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 245
    Top = 320
    Width = 154
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 245
    Top = 345
    Width = 154
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 245
    Top = 370
    Width = 154
    Height = 21
    TabOrder = 4
  end
  object Button1: TButton
    Left = 5
    Top = 295
    Width = 186
    Height = 25
    Caption = 'Go !!!'
    TabOrder = 5
    OnClick = Button1Click
  end
  object List1: TFileListBox
    Left = 5
    Top = 5
    Width = 186
    Height = 286
    ItemHeight = 16
    Mask = '*.html'
    ShowGlyphs = True
    TabOrder = 6
  end
  object ShellTreeView1: TShellTreeView
    Left = 402
    Top = 186
    Width = 197
    Height = 105
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    UseShellImages = True
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 7
    OnChange = ShellTreeView1Change
  end
  object GroupBox1: TGroupBox
    Left = 403
    Top = 4
    Width = 196
    Height = 181
    Caption = 'Characters:'
    TabOrder = 8
    object Label5: TLabel
      Left = 10
      Top = 20
      Width = 10
      Height = 13
      Caption = #913':'
    end
    object Label6: TLabel
      Left = 10
      Top = 45
      Width = 9
      Height = 13
      Caption = #914':'
    end
    object Label7: TLabel
      Left = 10
      Top = 70
      Width = 9
      Height = 13
      Caption = #915':'
    end
    object Label8: TLabel
      Left = 10
      Top = 95
      Width = 10
      Height = 13
      Caption = #916':'
    end
    object Label9: TLabel
      Left = 10
      Top = 120
      Width = 9
      Height = 13
      Caption = #917':'
    end
    object Label10: TLabel
      Left = 10
      Top = 145
      Width = 9
      Height = 13
      Caption = #918':'
    end
    object Label11: TLabel
      Left = 55
      Top = 20
      Width = 10
      Height = 13
      Caption = #919':'
    end
    object Label12: TLabel
      Left = 55
      Top = 45
      Width = 10
      Height = 13
      Caption = #920':'
    end
    object Label13: TLabel
      Left = 55
      Top = 70
      Width = 5
      Height = 13
      Caption = #921':'
    end
    object Label14: TLabel
      Left = 55
      Top = 95
      Width = 9
      Height = 13
      Caption = #922':'
    end
    object Label15: TLabel
      Left = 55
      Top = 120
      Width = 10
      Height = 13
      Caption = #923':'
    end
    object Label16: TLabel
      Left = 55
      Top = 145
      Width = 11
      Height = 13
      Caption = #924':'
    end
    object Label17: TLabel
      Left = 100
      Top = 20
      Width = 10
      Height = 13
      Caption = #925':'
    end
    object Label18: TLabel
      Left = 100
      Top = 45
      Width = 10
      Height = 13
      Caption = #926':'
    end
    object Label19: TLabel
      Left = 100
      Top = 70
      Width = 10
      Height = 13
      Caption = #927':'
    end
    object Label20: TLabel
      Left = 100
      Top = 95
      Width = 10
      Height = 13
      Caption = #928':'
    end
    object Label21: TLabel
      Left = 100
      Top = 120
      Width = 10
      Height = 13
      Caption = #929':'
    end
    object Label22: TLabel
      Left = 100
      Top = 145
      Width = 10
      Height = 13
      Caption = #931':'
    end
    object Label23: TLabel
      Left = 145
      Top = 20
      Width = 9
      Height = 13
      Caption = #932':'
    end
    object Label24: TLabel
      Left = 145
      Top = 45
      Width = 11
      Height = 13
      Caption = #933':'
    end
    object Label25: TLabel
      Left = 145
      Top = 70
      Width = 13
      Height = 13
      Caption = #934':'
    end
    object Label26: TLabel
      Left = 145
      Top = 95
      Width = 10
      Height = 13
      Caption = #935':'
    end
    object Label27: TLabel
      Left = 145
      Top = 120
      Width = 11
      Height = 13
      Caption = #936':'
    end
    object Label28: TLabel
      Left = 145
      Top = 145
      Width = 12
      Height = 13
      Caption = #937':'
    end
    object Edit5: TEdit
      Left = 25
      Top = 15
      Width = 21
      Height = 21
      TabOrder = 0
      Text = 'A'
    end
    object Edit6: TEdit
      Left = 25
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 1
      Text = 'B'
    end
    object Edit7: TEdit
      Left = 25
      Top = 65
      Width = 21
      Height = 21
      TabOrder = 2
      Text = 'G'
    end
    object Edit8: TEdit
      Left = 25
      Top = 90
      Width = 21
      Height = 21
      TabOrder = 3
      Text = 'D'
    end
    object Edit9: TEdit
      Left = 25
      Top = 115
      Width = 21
      Height = 21
      TabOrder = 4
      Text = 'E'
    end
    object Edit10: TEdit
      Left = 25
      Top = 140
      Width = 21
      Height = 21
      TabOrder = 5
      Text = 'Z'
    end
    object Edit11: TEdit
      Left = 70
      Top = 15
      Width = 21
      Height = 21
      TabOrder = 6
      Text = 'H'
    end
    object Edit12: TEdit
      Left = 70
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 7
      Text = 'Th'
    end
    object Edit13: TEdit
      Left = 70
      Top = 65
      Width = 21
      Height = 21
      TabOrder = 8
      Text = 'I'
    end
    object Edit14: TEdit
      Left = 70
      Top = 90
      Width = 21
      Height = 21
      TabOrder = 9
      Text = 'K'
    end
    object Edit15: TEdit
      Left = 70
      Top = 115
      Width = 21
      Height = 21
      TabOrder = 10
      Text = 'L'
    end
    object Edit16: TEdit
      Left = 70
      Top = 140
      Width = 21
      Height = 21
      TabOrder = 11
      Text = 'M'
    end
    object Edit17: TEdit
      Left = 115
      Top = 15
      Width = 21
      Height = 21
      TabOrder = 12
      Text = 'N'
    end
    object Edit18: TEdit
      Left = 115
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 13
      Text = 'Ks'
    end
    object Edit19: TEdit
      Left = 115
      Top = 65
      Width = 21
      Height = 21
      TabOrder = 14
      Text = 'O'
    end
    object Edit20: TEdit
      Left = 115
      Top = 90
      Width = 21
      Height = 21
      TabOrder = 15
      Text = 'P'
    end
    object Edit21: TEdit
      Left = 115
      Top = 115
      Width = 21
      Height = 21
      TabOrder = 16
      Text = 'R'
    end
    object Edit22: TEdit
      Left = 115
      Top = 140
      Width = 21
      Height = 21
      TabOrder = 17
      Text = 'S'
    end
    object Edit23: TEdit
      Left = 160
      Top = 15
      Width = 21
      Height = 21
      TabOrder = 18
      Text = 'T'
    end
    object Edit24: TEdit
      Left = 160
      Top = 40
      Width = 21
      Height = 21
      TabOrder = 19
      Text = 'Y'
    end
    object Edit25: TEdit
      Left = 160
      Top = 65
      Width = 21
      Height = 21
      TabOrder = 20
      Text = 'F'
    end
    object Edit26: TEdit
      Left = 160
      Top = 90
      Width = 21
      Height = 21
      TabOrder = 21
      Text = 'X'
    end
    object Edit27: TEdit
      Left = 160
      Top = 115
      Width = 21
      Height = 21
      TabOrder = 22
      Text = 'Ps'
    end
    object Edit28: TEdit
      Left = 160
      Top = 140
      Width = 21
      Height = 21
      TabOrder = 23
      Text = 'W'
    end
  end
  object CheckBox1: TCheckBox
    Left = 7
    Top = 326
    Width = 186
    Height = 17
    Caption = 'Replace empty space with:'
    TabOrder = 9
  end
  object Edit29: TEdit
    Left = 157
    Top = 323
    Width = 32
    Height = 21
    TabOrder = 10
    Text = '_'
  end
  object CheckBox2: TCheckBox
    Left = 8
    Top = 349
    Width = 97
    Height = 17
    Caption = 'CAPS Lock'
    TabOrder = 11
  end
  object ShellTreeView2: TShellTreeView
    Left = 402
    Top = 292
    Width = 197
    Height = 103
    ObjectTypes = [otFolders]
    Root = 'rfDesktop'
    UseShellImages = True
    AutoRefresh = False
    Indent = 19
    ParentColor = False
    RightClickSelect = True
    ShowRoot = False
    TabOrder = 12
    OnChange = ShellTreeView1Change
  end
end
