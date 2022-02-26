object Form1: TForm1
  Left = 310
  Top = 214
  Width = 123
  Height = 74
  Caption = 'CDB'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 20
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Correct it !!!'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ABSTable2: TABSTable
    CurrentVersion = '4.75 '
    DatabaseName = 'sdd'
    InMemory = False
    ReadOnly = False
    Active = True
    StoreDefs = True
    IndexDefs = <
      item
        Name = 'IndexName'
        Fields = 'Id'
        Options = [ixUnique]
      end>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Artist'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Music'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Poem'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Song'
        DataType = ftMemo
      end
      item
        Name = 'Contain'
        DataType = ftString
        Size = 20
      end>
    TableName = 'songs'
    Exclusive = False
    Left = 52
    Top = 84
    object ABSTable2Id: TStringField
      FieldName = 'Id'
    end
    object ABSTable2Title: TStringField
      FieldName = 'Title'
      Size = 50
    end
    object ABSTable2Artist: TStringField
      FieldName = 'Artist'
      Size = 40
    end
    object ABSTable2Music: TStringField
      FieldName = 'Music'
      Size = 40
    end
    object ABSTable2Poem: TStringField
      FieldName = 'Poem'
      Size = 40
    end
    object ABSTable2Song: TMemoField
      FieldName = 'Song'
      BlobType = ftMemo
    end
    object ABSTable2Contain: TStringField
      FieldName = 'Contain'
    end
  end
  object ABSTable1: TABSTable
    CurrentVersion = '4.75 '
    DatabaseName = 'asd'
    InMemory = False
    ReadOnly = False
    Active = True
    StoreDefs = True
    IndexDefs = <
      item
        Name = 'IndexName'
        Fields = 'Id'
        Options = [ixUnique]
      end>
    FieldDefs = <
      item
        Name = 'Id'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Letter'
        Attributes = [faRequired]
        DataType = ftFixedChar
        Size = 1
      end
      item
        Name = 'Title'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Artist'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Music'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Poem'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Status'
        Attributes = [faRequired]
        DataType = ftBoolean
      end>
    TableName = 'list'
    Exclusive = False
    Left = 52
    Top = 84
    object ABSTable1Id: TStringField
      DisplayWidth = 19
      FieldName = 'Id'
      KeyFields = 'Id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ABSTable1Letter: TStringField
      DisplayWidth = 2
      FieldName = 'Letter'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ABSTable1Title: TStringField
      DisplayWidth = 24
      FieldName = 'Title'
      Size = 50
    end
    object ABSTable1Artist: TStringField
      DisplayWidth = 24
      FieldName = 'Artist'
      Size = 40
    end
    object ABSTable1Music: TStringField
      DisplayWidth = 24
      FieldName = 'Music'
      Size = 40
    end
    object ABSTable1Poem: TStringField
      DisplayWidth = 21
      FieldName = 'Poem'
      Size = 40
    end
    object ABSTable1Status: TBooleanField
      DisplayWidth = 8
      FieldName = 'Status'
      Required = True
    end
  end
  object ABSDatabase2: TABSDatabase
    Connected = True
    CurrentVersion = '4.75 '
    DatabaseFileName = '.\data\songs.ABS'
    DatabaseName = 'sdd'
    Exclusive = False
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 52
    Top = 84
  end
  object ABSDatabase1: TABSDatabase
    Connected = True
    CurrentVersion = '4.75 '
    DatabaseFileName = '.\data\SongList.ABS'
    DatabaseName = 'asd'
    Exclusive = False
    MaxConnections = 500
    MultiUser = False
    SessionName = 'Default'
    Left = 52
    Top = 84
  end
end
