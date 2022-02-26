object Form3: TForm3
  Left = 217
  Top = 156
  Width = 709
  Height = 486
  Caption = 'Form3'
  Color = clBtnFace
  Constraints.MinHeight = 432
  Constraints.MinWidth = 701
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 0
    Width = 515
    Height = 75
    Caption = #928#955#951#961#959#966#959#961#943#949#962' :'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 41
      Height = 13
      Caption = #932#943#964#955#959#962' : '
    end
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 69
      Height = 13
      Caption = #917#961#956#951#957#949#965#964#942#962' : '
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 86
      Height = 13
      Caption = #924#959#965#963#953#954#942'/'#931#964#943#967#959#953' : '
    end
    object Label5: TLabel
      Left = 116
      Top = 16
      Width = 11
      Height = 20
      Caption = 'a'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 116
      Top = 40
      Width = 14
      Height = 13
      Caption = 'b'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 116
      Top = 56
      Width = 14
      Height = 13
      Caption = 'c'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object RichEdit1: TRichEdit
      Left = 176
      Top = 12
      Width = 229
      Height = 89
      ScrollBars = ssBoth
      TabOrder = 0
      Visible = False
      WordWrap = False
    end
  end
  object GroupBox4: TGroupBox
    Left = 2
    Top = 74
    Width = 696
    Height = 357
    Caption = 'Song :'
    TabOrder = 1
    object Panel1: TPanel
      Left = 4
      Top = 16
      Width = 688
      Height = 337
      BorderStyle = bsSingle
      Caption = 'Panel1'
      TabOrder = 0
      object Song: TRichEdit
        Left = 1
        Top = 1
        Width = 682
        Height = 331
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 518
    Top = 0
    Width = 181
    Height = 75
    Caption = #932#972#957#959#962' :'
    TabOrder = 2
    object Label1: TLabel
      Left = 28
      Top = 36
      Width = 64
      Height = 13
      Caption = #913#955#955#945#947#942'  '#963#949'  :'
    end
    object ComboBox1: TComboBox
      Left = 104
      Top = 32
      Width = 45
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        '-5'
        '-4'
        '-3'
        '-2'
        '-1'
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6')
    end
  end
  object SongLines: TRichEdit
    Left = 212
    Top = 164
    Width = 293
    Height = 121
    Align = alCustom
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
    Visible = False
  end
  object MainMenu: TMainMenu
    BiDiMode = bdLeftToRight
    OwnerDraw = True
    ParentBiDiMode = False
    Left = 160
    Top = 320
    object FileMenu: TMenuItem
      Caption = 'File'
      object FileSaveItem: TMenuItem
        Caption = 'Save'
        ImageIndex = 2
        ShortCut = 16467
      end
      object FileSaveAsItem: TMenuItem
        Caption = 'Export'
        object RTF1: TMenuItem
          Caption = 'RTF'
          OnClick = RTF1Click
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Exit: TMenuItem
        Caption = 'Exit'
        ShortCut = 32856
      end
    end
    object Options: TMenuItem
      Caption = 'Options'
      object Settings: TMenuItem
        Caption = 'Settings'
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Rich Edit Format|.rtf'
    Left = 86
    Top = 65528
  end
end
