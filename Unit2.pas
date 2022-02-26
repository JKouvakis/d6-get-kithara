unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Strutils, ComCtrls,  FileCtrl;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    ListBox2: TListBox;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    ListBox3: TMemo;
    Button2: TButton;
    Memo3: TRichEdit;
    Label3: TLabel;
    FileListBox1: TFileListBox;
    Button4: TButton;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;
const
  SELDIRHELP = 1000;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
var
  i:integer;
  S,L: string;
begin
// http://www.kithara.vu/ss.php?id=MTM0Mjg3NTI2&PHPSESSID=9b99a70f3b22dda2b612e8fe42f2a945&prnt=1&transp=0&hideTabl=0&hideChrd=0
// http://www.kithara.vu/ss.php?id=MTM0Mjg3NTI2&prnt=1&transp=0&hideTabl=0&hideChrd=0
// L:=midstr(S,33,12);
  ListBox2.Clear;
  Label3.Caption := 'Dir';
  for i:=0 to Form1.Memo2.Lines.Count -1 do
    begin
      S:=Form1.Memo2.Lines.Strings[i];
      L:=midstr(S,33,12);
      ListBox2.AddItem(L,ListBox2);
    end;
  Label2.Caption := 'Items := ' + inttostr(Listbox2.count);
  Label1.Caption := 'Items := ' + inttostr(Listbox1.count);
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  F: TextFile;
  S,L: string;
begin
ListBox1.Clear;
  if OpenDialog1.Execute then            { Display Open dialog box }
  begin
    AssignFile(F, OpenDialog1.FileName); { File selected in dialog }
    Reset(F);
    While not EOF(F) do
     begin
      Readln(F, S);
      L:=midstr(S,33,12);                        { Read first line of file }
      ListBox1.AddItem(L,ListBox1);
     end;
    CloseFile(F);
  end;
  Label1.Caption := 'Items := ' + inttostr(Listbox1.count);
  ListBox1.Sorted:= true;
end;

procedure TForm2.Button3Click(Sender: TObject);
var
 i: integer;
 S: string;
begin
  ListBox3.Clear;
  For i:=0 to Listbox2.Count -1 do
    begin
      if (Listbox1.Items.IndexOf(Listbox2.Items.Strings[i]) = -1) then
        begin
        S:='';
        S:='http://www.kithara.vu/ss.php?id=';
        S:=S + Listbox2.Items.Strings[i];
        S:=S + '&' + Form1.Edit4.Text;
        S:=S + '&prnt=1&transp=0&hideTabl=0&hideChrd=0';
        Listbox3.Lines.Add(S);
        end;
    end;
  Label4.Caption := 'Items := ' + inttostr(Listbox3.Lines.Count);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  i,j: integer;
  sec: integer;
  H, M, S: string;
  ZH, ZM, ZS: Integer;
  F: TextFile;
  filename: string;
  hour:string;
  Dir: string;
begin
  Button4Click(Form2);
  j :=  FileListBox1.Items.Count;
  For i:=0 to ListBox3.Lines.Count-1 do
    begin
      Form1.NMHTTP1.HeaderInfo.Cookie:=Form1.Edit2.Text;
      Form1.NMHTTP1.Get(ListBox3.Lines.Strings[i]);
      filename :=  Label3.Caption + inttostr(j+i) + '.html';
      AssignFile(F, filename);
      Rewrite(F);
      Memo3.Text:=Form1.NMHTTP1.Body;
      Writeln(F,Memo3.Text);
      CloseFile(F);
      sleep(6000);

      sec:=(ListBox3.Lines.Count-i)*7;
      ZH := Sec div 3600;
      ZM := Sec div 60 - ZH * 60;
      ZS := Sec - (ZH * 3600 + ZM * 60);
      H := IntToStr(ZH);
      M := IntToStr(ZM);
      S := IntToStr(ZS);
      hour := ' ' + H + ' hours ' + M + ' mins ' + S + ' secs';

//      Form1.Caption:='Processing . . . ' + inttostr(i+1) + ' of ' + inttostr(Memo2.Lines.Count);
      Form2.Caption:='Project1 - Processing . . . ' + inttostr(i+1) + ' of ' +
        inttostr(ListBox3.Lines.Count) + ' in about ' + hour;
    end;
    Form1.StatusBar1.SimpleText := 'Finished';
end;

procedure TForm2.Button4Click(Sender: TObject);
var dir:string;
begin
  Dir := 'C:\temp';
  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    Label3.Caption := Dir + '\';
  FileListBox1.Directory:=Label3.Caption;
end;

end.
