object Form1: TForm1
  Left = 247
  Top = 196
  Width = 616
  Height = 410
  Caption = 'Project1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 16
    Height = 13
    Caption = 'Url:'
  end
  object Edit1: TEdit
    Left = 37
    Top = 3
    Width = 314
    Height = 21
    TabOrder = 0
    Text = 'http://'
  end
  object Memo1: TMemo
    Left = 10
    Top = 30
    Width = 341
    Height = 221
    OEMConvert = True
    ReadOnly = True
    TabOrder = 1
    WantReturns = False
  end
  object Button1: TButton
    Left = 355
    Top = 30
    Width = 75
    Height = 21
    Caption = 'Get Page'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 365
    Top = 5
    Width = 236
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 320
  end
end
