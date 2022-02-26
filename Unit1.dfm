object Form1: TForm1
  Left = 202
  Top = 117
  Width = 770
  Height = 585
  Caption = 'Project1'
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
    Left = 224
    Top = 8
    Width = 36
    Height = 13
    Caption = 'Cookie:'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 25
    Height = 13
    Caption = 'URL:'
  end
  object Edit1: TEdit
    Left = 48
    Top = 32
    Width = 425
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 209
    Height = 17
    Caption = 'Get Page'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 264
    Top = 8
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 532
    Width = 762
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object Memo2: TMemo
    Left = 480
    Top = 120
    Width = 273
    Height = 153
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object Memo1: TRichEdit
    Left = 8
    Top = 56
    Width = 225
    Height = 217
    ScrollBars = ssBoth
    TabOrder = 5
    WordWrap = False
  end
  object Button2: TButton
    Left = 248
    Top = 280
    Width = 225
    Height = 17
    Caption = 'Get Links From Page'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 480
    Top = 280
    Width = 273
    Height = 17
    Caption = 'Save Links'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Edit3: TEdit
    Left = 440
    Top = 8
    Width = 33
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object Button4: TButton
    Left = 8
    Top = 512
    Width = 361
    Height = 17
    Caption = 'Clear All'
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 392
    Top = 512
    Width = 361
    Height = 17
    Caption = 'Select Folder to save . . .'
    TabOrder = 10
  end
  object Button6: TButton
    Left = 8
    Top = 280
    Width = 225
    Height = 17
    Caption = 'Get Links From Page'
    TabOrder = 11
    OnClick = Button6Click
  end
  object Memo4: TMemo
    Left = 248
    Top = 56
    Width = 225
    Height = 217
    ScrollBars = ssBoth
    TabOrder = 12
    WordWrap = False
  end
  object Memo5: TRichEdit
    Left = 480
    Top = 8
    Width = 273
    Height = 105
    ScrollBars = ssBoth
    TabOrder = 13
    WordWrap = False
  end
  object Memo3: TRichEdit
    Left = 8
    Top = 304
    Width = 745
    Height = 201
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 14
    WordWrap = False
  end
  object NMHTTP1: TNMHTTP
    Port = 0
    ReportLevel = 0
    OnDisconnect = NMHTTP1Disconnect
    OnConnect = NMHTTP1Connect
    OnInvalidHost = NMHTTP1InvalidHost
    OnHostResolved = NMHTTP1HostResolved
    OnStatus = NMHTTP1Status
    OnConnectionFailed = NMHTTP1ConnectionFailed
    OnPacketRecvd = NMHTTP1PacketRecvd
    OnPacketSent = NMHTTP1PacketSent
    Body = 'Default.htm'
    Header = 'Head.txt'
    InputFileMode = False
    OutputFileMode = False
    OnSuccess = NMHTTP1Success
    OnFailure = NMHTTP1Failure
    ProxyPort = 0
    Left = 12
    Top = 296
  end
  object Timer1: TTimer
    Interval = 3000
    Left = 48
    Top = 296
  end
end
