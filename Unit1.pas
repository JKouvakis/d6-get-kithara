unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Strutils;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    OpenDialog1: TOpenDialog;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Label2: TLabel;
    ListBox2: TListBox;
    Button3: TButton;
    ListBox3: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
var

  F: TextFile;
  S,L: string;
begin
ListBox2.Clear;
  if OpenDialog1.Execute then            { Display Open dialog box }
  begin
    AssignFile(F, OpenDialog1.FileName); { File selected in dialog }
    Reset(F);
    While not EOF(F) do
     begin
      Readln(F, S);
      L:=midstr(S,33,12);                        { Read first line of file }
      ListBox2.AddItem(L,ListBox2);
     end;
    CloseFile(F);
  end;
  Label2.Caption := 'Items := ' + inttostr(Listbox2.count);
  ListBox2.Sorted:= true;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 i: integer;
begin
  For i:=0 to Listbox2.Count -1 do
    begin
      if (Listbox1.Items.IndexOf(Listbox2.Items.Strings[i]) = -1) then
        Listbox3.AddItem(Listbox2.Items.Strings[i],Listbox3)
    end;
end;

end.
