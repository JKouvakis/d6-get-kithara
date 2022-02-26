unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ComCtrls,strutils;

type
  TForm3 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    Panel1: TPanel;
    Song: TRichEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    MainMenu: TMainMenu;
    FileMenu: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    RTF1: TMenuItem;
    N1: TMenuItem;
    Exit: TMenuItem;
    Options: TMenuItem;
    Settings: TMenuItem;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RichEdit1: TRichEdit;
    SaveDialog1: TSaveDialog;
    SongLines: TRichEdit;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure RTF1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    procedure WMGetMinMaxInfo(var Msg:TMessage); message WM_GETMINMAXINFO;
  end;

var
  Form3: TForm3;
  chordor,chordmod : array[1..12] of string;
  chords : array of string;
  positions, postxt : array of integer;
  txtneed : boolean;

implementation

uses Unit2, convert;

{$R *.dfm}

procedure TForm3.WMGetMinMaxInfo(var Msg:TMessage);
{Windows sends this message in order to get the min/max sizes}
var infoptr:^TMINMAXINFO;
{You'll need this structure to read/set the values}
begin
  infoptr:=Pointer(Msg.lParam); {Get structure}
  infoptr^.ptMaxSize.x:=708;  {Width of form when maximized}
  infoptr^.ptMaxSize.y:=Screen.Height-30;  {Height of form when maximized}
  infoptr^.ptMaxPosition.x:=Form3.Left;  {Form.Left when maximized}
  infoptr^.ptMaxPosition.y:=1;  {Form.Top when maximized}
  infoptr^.ptMinTrackSize.x:=708; {min width you can achieve with mouse}
  infoptr^.ptMinTrackSize.y:=486; {min height you can achieve with mouse}
  infoptr^.ptMaxTrackSize.x:=708; {max width you can achieve with mouse}
  infoptr^.ptMaxTrackSize.y:=Screen.Height-30; {max height you can achieve with mouse}
end;

procedure showinfo(Sender: TObject);
var
  cleared: string;
begin
  Form3.Song.Clear;
  cleared := Form2.ABSTable1.FieldByName('title').AsString;
  Form3.Caption := 'Kithara Database - ' + cleared;
  Form3.Label5.Caption:=cleared;
  cleared := Form2.ABSTable1.FieldByName('artist').AsString;
  Form3.Label6.Caption:=cleared;
  cleared := Form2.ABSTable1.FieldByName('music').AsString;
  cleared := cleared + '/' + Form2.ABSTable1.FieldByName('poem').AsString;
  Form3.Label7.Caption:=cleared;
end;

procedure showsong(Sender: TObject);
var
  i: integer;
  s,d: string;
  song_modi : tstrings;
  si: TScrollInfo;
begin
  i:=0;
  Form3.Song.Clear;

  If Form3.ComboBox1.ItemIndex <> 5 then
    song_modi := convert_song(Form3.RichEdit1.Lines,strtoint(Form3.Combobox1.Text))
  else
    song_modi := Form3.RichEdit1.Lines;

  while i<song_modi.Count do
    begin
      s:=song_modi[i];
      If ((pos('class="ch"',s)<>0) or (pos('class=ch',s)<>0)) then
        begin
          Form3.Song.SelAttributes.Color := clRed;
          Form3.Song.SelAttributes.Size := 10;
          Form3.Song.SelAttributes.Style := [fsbold];
        end;
      If ((pos('class="te"',s)<>0) or (pos('class=te',s)<>0)) then
        begin
          Form3.Song.SelAttributes.Color := clBlack;
          Form3.Song.SelAttributes.Size := 10;
          Form3.Song.SelAttributes.Style := [fsbold];
        end;
      If ((pos('class="no"',s)<>0) or (pos('class=no',s)<>0)) then
        begin
          Form3.Song.SelAttributes.Color := clBlack;
          Form3.Song.SelAttributes.Size := 8;
          Form3.Song.SelAttributes.Style := [fsItalic];
        end;
      s:=cleartags(s);
      Form3.Song.Lines.Add(s);
      i:=i+1;
    end;

//    Form3.Song.Perform( em_linescroll, 0, 0 );
//    Form3.Song.Perform( EM_GETFIRSTVISIBLELINE, 0, 0 );

  Form3.Song.SelStart:=0;
  Form3.SOng.SetFocus;
  GetScrollInfo(Form3.Song.Handle, SB_VERT, si );
  si.nPos := 0;
  SetScrollInfo(Form3.Song.Handle, SB_VERT, si, TRUE);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  chordor[1]:='C';
  chordor[2]:='C#';
  chordor[3]:='D';
  chordor[4]:='D#';
  chordor[5]:='E';
  chordor[6]:='F';
  chordor[7]:='F#';
  chordor[8]:='G';
  chordor[9]:='G#';
  chordor[10]:='A';
  chordor[11]:='A#';
  chordor[12]:='B';

  Combobox1.ItemIndex := Form2.Combobox1.ItemIndex;

  RichEdit1.Lines.Text := Form2.ABSTable1.FieldValues['song'];
  showinfo(Form3);
  ComboBOx1Change(Form3);
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
var
  i: integer;
  crdtemp: string;
begin
  for i:=1 to 12 do
    begin
      if (i+strtoint(Combobox1.Text)>12) then
        chordmod[i]:=chordor[strtoint(Combobox1.Text)+i-12]
      else if (i+strtoint(Combobox1.Text)<1) then
        chordmod[i]:=chordor[strtoint(Combobox1.Text)+i+12]
      else
        chordmod[i]:=chordor[strtoint(Combobox1.Text)+i]
    end;
  showsong(Form3);
end;

procedure TForm3.FormResize(Sender: TObject);
begin
  GroupBox4.Height := Form3.Height - 130;
  Panel1.Height := GroupBox4.Height - 20;
  Song.Height := Panel1.Height - 6;
end;

procedure TForm3.RTF1Click(Sender: TObject);
var
  ToF: file;
  mem : TMemoryStream;
begin

    mem := tmemorystream.create;
    try
      Song.Lines.savetostream  ( mem );
      mem.seek ( 0, soFromBeginning ); // set position = 0
      SongLines.Lines.loadfromstream ( mem );
    finally
      mem.free;
    end;

    SongLines.Paragraph.Alignment := tacenter;
    SongLines.SelAttributes.Color := clRed;
    SongLines.SelAttributes.Size := 13;
    SongLines.SelAttributes.Style := [fsbold];
    SongLines.Lines.Insert(0,Form3.Label5.Caption);
    SongLines.SelAttributes.Color := clBlack;
    SongLines.SelAttributes.Size := 10;
    SongLines.SelAttributes.Style := [fsbold,fsitalic];
    SongLines.Lines.Insert(1,Form3.Label6.Caption);
    SongLines.SelAttributes.Color := clBlack;
    SongLines.SelAttributes.Size := 10;
    SongLines.SelAttributes.Style := [fsbold,fsitalic];
    SongLines.Lines.Insert(2,Form3.Label7.Caption);
    SongLines.Lines.Insert(3,' ');

  SaveDialog1.FileName := Label6.Caption + '-' + Label5.Caption + '.rtf';
  if SaveDialog1.Execute then      { Display Save dialog box}
    begin
      SongLines.Lines.SaveToFile(SaveDialog1.FileName);
    end;
end;

end.
