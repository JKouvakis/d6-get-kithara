unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ShellCtrls, FileCtrl, StrUtils;

type
  TForm1 = class(TForm)
    Text1: TRichEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    List1: TFileListBox;
    ShellTreeView1: TShellTreeView;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    CheckBox1: TCheckBox;
    Edit29: TEdit;
    CheckBox2: TCheckBox;
    ShellTreeView2: TShellTreeView;
    procedure Button1Click(Sender: TObject);
    procedure ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function changechar(var s:string):string; forward;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,j,m,n,k:integer;
F,F2:TextFile;
S:string;
before, after, char, char2:string;
begin
  For i:=0 to List1.Items.Count -1 do
    begin
    S:= List1.Items.Strings[i];
    AssignFile(F, List1.Items.Strings[i]); { File selected in dialog }
    Reset(F);
    Text1.Text:='';
    Edit1.Text:='';
    Edit2.Text:='';
    m:=0;
    While not EOF(F) do
      begin
       Readln(F, S);
       Text1.Lines.Add(S);
       If m=23 then
        begin
         S:=leftstr(S,pos('/',S)-2);
         S:=rightstr(S,length(S)-3);
         Edit3.Text:=S;
         before:=S;
         after := '';
         char:='';
         char2:='';
         For n:=1 to Length(before) do
          begin
           char:=Midstr(before,n,1);
           char2:=changechar(char);
           after:=after + char2;
          end;
         Edit1.Text:=after;
        end;
       If m=30 then
        begin
         Edit4.Text:=S;
         before:=S;
         after := '';
         char:='';
         char2:='';
         For n:=1 to Length(before) do
          begin
           char:=Midstr(before,n,1);
           char2:=changechar(char);
           after:=after + char2;
          end;
         Edit2.Text:=after;
        end;
       m:=m+1;
      end;
    CloseFile(F);
    AssignFile(F2, ShellTreeView2.Path + '\' + Edit2.Text + '_-_' + Edit1.Text + '.html');
    Rewrite(F2);
    For j:=0 to Text1.Lines.Count do
      begin
        WriteLn(F2,Text1.Lines.Strings[j]);
      end;
    CloseFile(F2);
    end;
end;

procedure TForm1.ShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  List1.Directory := ShellTreeView1.Path + '\';
end;

function changechar(var s:string):string;
begin
 If (s='Á') or (s='¢') then
   Result:=Form1.Edit5.Text
 else if s='Â' then
   Result:=Form1.Edit6.Text
 else if s='Ã' then
   Result:=Form1.Edit7.Text
 else if s='Ä' then
   Result:=Form1.Edit8.Text
 else if (s='Å') or (s='¸') then
   Result:=Form1.Edit9.Text
 else if s='Æ' then
   Result:=Form1.Edit10.Text
 else if (s='Ç') or (s='¹') then
   Result:=Form1.Edit11.Text
 else if s='È' then
   Result:=Form1.Edit12.Text
 else if (s='É') or (s='º') or (s='Ú') then
   Result:=Form1.Edit13.Text
 else if s='Ê' then
   Result:=Form1.Edit14.Text
 else if s='Ë' then
   Result:=Form1.Edit15.Text
 else if s='Ì' then
   Result:=Form1.Edit16.Text
 else if s='Í' then
   Result:=Form1.Edit17.Text
 else if s='Î' then
   Result:=Form1.Edit18.Text
 else if (s='Ï') or (s='¼') then
   Result:=Form1.Edit19.Text
 else if s='Ð' then
   Result:=Form1.Edit20.Text
 else if s='Ñ' then
   Result:=Form1.Edit21.Text
 else if s='Ó' then
   Result:=Form1.Edit22.Text
 else if s='Ô' then
   Result:=Form1.Edit23.Text
 else if (s='Õ') or (s='¾') or (s='Û') then
   Result:=Form1.Edit24.Text
 else if s='Ö' then
   Result:=Form1.Edit25.Text
 else if s='×' then
   Result:=Form1.Edit26.Text
 else if s='Ø' then
   Result:=Form1.Edit27.Text
 else if (s='Ù') or (s='¿') then
   Result:=Form1.Edit28.Text
 else If (s='á') or (s='Ü') then
   Result:=lowercase(Form1.Edit5.Text)
 else if s='â' then
   Result:=lowercase(Form1.Edit6.Text)
 else if s='ã' then
   Result:=lowercase(Form1.Edit7.Text)
 else if s='ä' then
   Result:=lowercase(Form1.Edit8.Text)
 else if (s='å') or (s='Ý') then
   Result:=lowercase(Form1.Edit9.Text)
 else if s='æ' then
   Result:=lowercase(Form1.Edit10.Text)
 else if (s='ç') or (s='Þ') then
   Result:=lowercase(Form1.Edit11.Text)
 else if s='è' then
   Result:=lowercase(Form1.Edit12.Text)
 else if (s='é') or (s='ß') or (s='ú') or (s='À') then
   Result:=lowercase(Form1.Edit13.Text)
 else if s='ê' then
   Result:=lowercase(Form1.Edit14.Text)
 else if s='ë' then
   Result:=lowercase(Form1.Edit15.Text)
 else if s='ì' then
   Result:=lowercase(Form1.Edit16.Text)
 else if s='í' then
   Result:=lowercase(Form1.Edit17.Text)
 else if s='î' then
   Result:=lowercase(Form1.Edit18.Text)
 else if (s='ï') or (s='ü') then
   Result:=lowercase(Form1.Edit19.Text)
 else if s='ð' then
   Result:=lowercase(Form1.Edit20.Text)
 else if s='ñ' then
   Result:=lowercase(Form1.Edit21.Text)
 else if (s='ó') or (s='ò') then
   Result:=lowercase(Form1.Edit22.Text)
 else if s='ô' then
   Result:=lowercase(Form1.Edit23.Text)
 else if (s='õ') or (s='ý') or (s='û') or (s='à') then
   Result:=lowercase(Form1.Edit24.Text)
 else if s='ö' then
   Result:=lowercase(Form1.Edit25.Text)
 else if s='÷' then
   Result:=lowercase(Form1.Edit26.Text)
 else if s='ø' then
   Result:=lowercase(Form1.Edit27.Text)
 else if (s='ù') or (s='þ') then
   Result:=lowercase(Form1.Edit28.Text)
 else if (s=' ') and (Form1.CheckBox1.Checked=True) then
   Result:=Form1.Edit29.Text
// else
//   Result:=s;
end;

end.
